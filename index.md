# kustomize changes tracked by commits 
### This file generated at Sun Apr  2 04:01:28 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 4 commits


<div>
<h3>1: Staging changes from 7c98fbe to aed0855 on Fri Mar 31 15:58:24 2023 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 12bf05d..ed79164 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -9,8 +9,8 @@ spec:
     Use the policy rules from the "minimal" collection. This and other collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections The minimal collection is a small set of policy rules that should be easy to pass for brand new Stonesoup users. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules
 
   configuration:
-    collections:
-      - minimal
+    include:
+      - "@minimal"
     exclude:
       # This can be removed once https://issues.redhat.com/browse/OCPBUGS-8428 is addressed
       - step_image_registries 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-7c98fbe/staging/components/enterprise-contract/kustomize.out.yaml
272a273,274
>     collections:
>     - minimal
275,276d276
<     include:
<     - '@minimal' 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 7c98fbe to aed0855 on Fri Mar 31 15:58:24 2023 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 12bf05d..ed79164 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -9,8 +9,8 @@ spec:
     Use the policy rules from the "minimal" collection. This and other collections are defined in https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/release_policy.html#_available_rule_collections The minimal collection is a small set of policy rules that should be easy to pass for brand new Stonesoup users. If a different policy configuration is desired, this resource can serve as a starting point. See the docs on how to include and exclude rules https://redhat-appstudio.github.io/docs.stonesoup.io/ec-policies/policy_configuration.html#_including_and_excluding_rules
 
   configuration:
-    collections:
-      - minimal
+    include:
+      - "@minimal"
     exclude:
       # This can be removed once https://issues.redhat.com/browse/OCPBUGS-8428 is addressed
       - step_image_registries 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-7c98fbe/development/components/enterprise-contract/kustomize.out.yaml
272a273,274
>     collections:
>     - minimal
275,276d276
<     include:
<     - '@minimal' 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-aed0855/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-aed0855/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-aed0855/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6545bd3 to 7c98fbe on Fri Mar 31 12:39:36 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 46c5df1..c5b7616 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6a8cc5c7674487219706782cb30f0916e5bb3ef1
+- https://github.com/redhat-appstudio/build-service/config/default?ref=9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6a8cc5c7674487219706782cb30f0916e5bb3ef1
+  newTag: 9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index b131f52..dcc2afd 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6a8cc5c7674487219706782cb30f0916e5bb3ef1
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-6545bd3/staging/components/build-service/staging/kustomize.out.yaml
585c585
<         image: quay.io/redhat-appstudio/build-service:9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf
---
>         image: quay.io/redhat-appstudio/build-service:6a8cc5c7674487219706782cb30f0916e5bb3ef1 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 6545bd3 to 7c98fbe on Fri Mar 31 12:39:36 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 46c5df1..c5b7616 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6a8cc5c7674487219706782cb30f0916e5bb3ef1
+- https://github.com/redhat-appstudio/build-service/config/default?ref=9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6a8cc5c7674487219706782cb30f0916e5bb3ef1
+  newTag: 9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index b131f52..dcc2afd 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=6a8cc5c7674487219706782cb30f0916e5bb3ef1
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-6545bd3/development/components/build-service/development/kustomize.out.yaml
585c585
<         image: quay.io/redhat-appstudio/build-service:9787c15291e5d0c4f984c8a0cbd55c616e4d8ddf
---
>         image: quay.io/redhat-appstudio/build-service:6a8cc5c7674487219706782cb30f0916e5bb3ef1 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-7c98fbe/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-7c98fbe/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-7c98fbe/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ae49bf3 to 6545bd3 on Thu Mar 30 20:04:49 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/authentication/base/sandbox-sre-admins.yaml b/components/authentication/base/sandbox-sre-admins.yaml
index febbfa0..6a43056 100644
--- a/components/authentication/base/sandbox-sre-admins.yaml
+++ b/components/authentication/base/sandbox-sre-admins.yaml
@@ -11,6 +11,20 @@ rules:
   - "users"
   verbs:
   - "impersonate"
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests/finalizers"
+  verbs:
+  - "update"
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests/status"
+  verbs:
+  - "get"
+  - "patch"
+  - "update"
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-ae49bf3/staging/components/authentication/staging/kustomize.out.yaml
191,204d190
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests/finalizers
<   verbs:
<   - update
< - apiGroups:
<   - toolchain.dev.openshift.com
<   resources:
<   - spacerequests/status
<   verbs:
<   - get
<   - patch
<   - update 
```
 
</details>  

<details> 
<summary>Lint</summary>  

``` 
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from ae49bf3 to 6545bd3 on Thu Mar 30 20:04:49 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/authentication/base/sandbox-sre-admins.yaml b/components/authentication/base/sandbox-sre-admins.yaml
index febbfa0..6a43056 100644
--- a/components/authentication/base/sandbox-sre-admins.yaml
+++ b/components/authentication/base/sandbox-sre-admins.yaml
@@ -11,6 +11,20 @@ rules:
   - "users"
   verbs:
   - "impersonate"
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests/finalizers"
+  verbs:
+  - "update"
+- apiGroups:
+  - "toolchain.dev.openshift.com"
+  resources:
+  - "spacerequests/status"
+  verbs:
+  - "get"
+  - "patch"
+  - "update"
 ---
 kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1 
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

./commit-6545bd3/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-6545bd3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-6545bd3/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-6545bd3/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ab0a2ad to ae49bf3 on Thu Mar 30 13:07:02 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/docs/development/spi.md b/docs/development/spi.md
index d634837..0598fa3 100644
--- a/docs/development/spi.md
+++ b/docs/development/spi.md
@@ -2,12 +2,13 @@
 title: Service Provider Integration Deployment
 ---
 
-## Post-bootstrap Service Provider Integration(SPI) Configuration
+## SPI Deployment environment promotion
+
+SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/redhat-appstudio/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
 
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation.
+## Post-bootstrap Service Provider Integration(SPI) Configuration
 
-> Authorization URL of staging server: `https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com`  
-Callback URL of staging server: `https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com/oauth/callback`
+SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
 
 > **NOTE:**  Following process is automated in `preview` mode
 
@@ -37,4 +38,22 @@ git clone https://github.com/redhat-appstudio/service-provider-integration-opera
 
 ```bash
 `./hack/vault-init.sh`
-```
\ No newline at end of file
+```
+
+### OAuth URLs for known environments
+
+#### stg-rh01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth/callback`
+
+#### stg-m01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com/oauth/callback`
+
+#### prd-rh01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com/oauth/callback`
+
+#### prd-m01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com/oauth/callback` 
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

./commit-ae49bf3/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "init-container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from ab0a2ad to ae49bf3 on Thu Mar 30 13:07:02 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/docs/development/spi.md b/docs/development/spi.md
index d634837..0598fa3 100644
--- a/docs/development/spi.md
+++ b/docs/development/spi.md
@@ -2,12 +2,13 @@
 title: Service Provider Integration Deployment
 ---
 
-## Post-bootstrap Service Provider Integration(SPI) Configuration
+## SPI Deployment environment promotion
+
+SPI has 3 deployment [overlays](https://github.com/redhat-appstudio/infra-deployments/tree/main/components/spi/overlays) - `development`, `staging` and `production`. `development` and `staging` are updated together by automatically created PR after each commit into `main` branch of [SPI Operator repository](https://github.com/redhat-appstudio/service-provider-integration-operator). To promote `staging` into `production`, manually create the PR. Typically, update commit and image hashes of base `production` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/production/base/kustomization.yaml) to match the `staging` [kustomization.yaml](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/spi/overlays/staging/base/kustomization.yaml).
 
-SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation.
+## Post-bootstrap Service Provider Integration(SPI) Configuration
 
-> Authorization URL of staging server: `https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com`  
-Callback URL of staging server: `https://spi-oauth-spi-system.apps.appstudio-stage.x99m.p1.openshiftapps.com/oauth/callback`
+SPI requires Service Provider to have configured OAuth application so it can process the OAuth flow. Follow [Configuring Service Providers](https://github.com/redhat-appstudio/service-provider-integration-operator/blob/main/docs/ADMIN.md#configuring-service-providers) in SPI admin documentation. [See URLs for known environments below](#oauth-urls-for-known-environments-known-oauth-urls).
 
 > **NOTE:**  Following process is automated in `preview` mode
 
@@ -37,4 +38,22 @@ git clone https://github.com/redhat-appstudio/service-provider-integration-opera
 
 ```bash
 `./hack/vault-init.sh`
-```
\ No newline at end of file
+```
+
+### OAuth URLs for known environments
+
+#### stg-rh01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com/oauth/callback`
+
+#### stg-m01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-stg-m01.7ayg.p1.openshiftapps.com/oauth/callback`
+
+#### prd-rh01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-rh01.pg1f.p1.openshiftapps.com/oauth/callback`
+
+#### prd-m01
+> Authorization URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com`  
+Callback URL: `https://spi-oauth-spi-system.apps.stone-prd-m01.84db.p1.openshiftapps.com/oauth/callback` 
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

./commit-ae49bf3/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-database apps/v1, Kind=StatefulSet) container "postgres" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "pact-broker" is using an invalid container image, "pactfoundation/pact-broker:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "pact-broker" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has DROP capabilities: [], but does not drop capability "NET_RAW" which is required (check: drop-net-raw-capability, remediation: NET_RAW makes it so that an application within the container is able to craft raw packets, use raw sockets, and bind to any address. Remove this capability in the containers under containers security contexts.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) The container "postgresql" is using an invalid container image, "". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ae49bf3/development/components/hac-pact-broker/kustomize.out.yaml: (object: <no namespace>/postgresql-pact-broker apps.openshift.io/v1, Kind=DeploymentConfig) container "postgresql" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ae49bf3/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ae49bf3/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.) 
```
 
</details> 
<br> 


</div>
