# kustomize changes tracked by commits 
### This file generated at Tue May 30 00:04:40 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 4 commits


<div>
<h3>1: Staging changes from 78314a7e to ea72cee1 on Mon May 29 19:08:05 2023 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index 7e89db23..1a845e40 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=07815f9c9d562d3325f60a6f0aa2964f4685c721
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+    newTag: 07815f9c9d562d3325f60a6f0aa2964f4685c721
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 1b9e99fd..d0789932 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=07815f9c9d562d3325f60a6f0aa2964f4685c721
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+    newTag: 07815f9c9d562d3325f60a6f0aa2964f4685c721 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-78314a7e/staging/components/quality-dashboard/staging/kustomize.out.yaml
160c160
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:07815f9c9d562d3325f60a6f0aa2964f4685c721
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
244c244
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:07815f9c9d562d3325f60a6f0aa2964f4685c721
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:ec3370b0e30af3ffc4d150c1b31bda7e9d96180b 
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

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 78314a7e to ea72cee1 on Mon May 29 19:08:05 2023 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index 7e89db23..1a845e40 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=07815f9c9d562d3325f60a6f0aa2964f4685c721
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+    newTag: 07815f9c9d562d3325f60a6f0aa2964f4685c721
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 1b9e99fd..d0789932 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=07815f9c9d562d3325f60a6f0aa2964f4685c721
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
+    newTag: 07815f9c9d562d3325f60a6f0aa2964f4685c721 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-78314a7e/development/components/quality-dashboard/development/kustomize.out.yaml
121c121
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:07815f9c9d562d3325f60a6f0aa2964f4685c721
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:ec3370b0e30af3ffc4d150c1b31bda7e9d96180b
205c205
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:07815f9c9d562d3325f60a6f0aa2964f4685c721
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:ec3370b0e30af3ffc4d150c1b31bda7e9d96180b 
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

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-ea72cee1/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-ea72cee1/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-ea72cee1/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-ea72cee1/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 9f9200ac to 78314a7e on Mon May 29 19:05:29 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release/kustomization.yaml b/components/monitoring/grafana/base/release/kustomization.yaml
index dd8016b5..e7775bea 100644
--- a/components/monitoring/grafana/base/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=34d39adf5da1104b10be11aec99f90e9956dfba8
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=f870adcd34610c6b39a8ae88535f2c0abff5ea0b
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index ae327c57..ff2a2c36 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=672d819a55adc8e4cfa1b1ad692d89341604472b
+- https://github.com/redhat-appstudio/release-service/config/default?ref=f870adcd34610c6b39a8ae88535f2c0abff5ea0b
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 672d819a55adc8e4cfa1b1ad692d89341604472b
+  newTag: f870adcd34610c6b39a8ae88535f2c0abff5ea0b
 
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

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 9f9200ac to 78314a7e on Mon May 29 19:05:29 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release/kustomization.yaml b/components/monitoring/grafana/base/release/kustomization.yaml
index dd8016b5..e7775bea 100644
--- a/components/monitoring/grafana/base/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=34d39adf5da1104b10be11aec99f90e9956dfba8
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=f870adcd34610c6b39a8ae88535f2c0abff5ea0b
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index ae327c57..ff2a2c36 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=672d819a55adc8e4cfa1b1ad692d89341604472b
+- https://github.com/redhat-appstudio/release-service/config/default?ref=f870adcd34610c6b39a8ae88535f2c0abff5ea0b
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 672d819a55adc8e4cfa1b1ad692d89341604472b
+  newTag: f870adcd34610c6b39a8ae88535f2c0abff5ea0b
 
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

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-78314a7e/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-78314a7e/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-78314a7e/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-78314a7e/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 97c6d108 to 9f9200ac on Mon May 29 12:38:48 2023 </h3>  
 
<details> 
<summary>Git Diff (3924 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index b796efe3..91e49de4 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - migration/
 - o11y/
 - release/
+- performance/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/performance/dashboard.yaml b/components/monitoring/grafana/base/performance/dashboard.yaml
new file mode 100644
index 00000000..209afcdb
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/dashboard.yaml
@@ -0,0 +1,21 @@
+apiVersion: integreatly.org/v1alpha1
+kind: GrafanaDashboard
+metadata:
+  name: performance-team-dashboard-cluster-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  configMapRef:
+    name: performance-team-dashboard-cluster-monitoring
+    key: kubernetes-cluster-monitoring.json
+---
+apiVersion: integreatly.org/v1alpha1
+kind: GrafanaDashboard
+metadata:
+  name: kubernetes-persistent-volumes
+  labels: 
+    app: appstudio-grafana
+spec:
+  configMapRef:
+    name: kubernetes-persistent-volumes
+    key: kubernetes-persistent-volumes.json
diff --git a/components/monitoring/grafana/base/performance/dashboards/kubernetes-cluster-monitoring.json b/components/monitoring/grafana/base/performance/dashboards/kubernetes-cluster-monitoring.json
new file mode 100644
index 00000000..3f767419
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/dashboards/kubernetes-cluster-monitoring.json
@@ -0,0 +1,2403 @@
+{
+  "annotations": {
+    "list": [
+      {
+        "builtIn": 1,
+        "enable": true,
+        "hide": true,
+        "iconColor": "rgba(0, 211, 255, 1)",
+        "name": "Annotations & Alerts",
+        "type": "dashboard"
+      }
+    ]
+  },
+  "description": "Monitors Kubernetes cluster using Prometheus. Shows overall cluster CPU / Memory / Filesystem usage as well as individual pod, containers, systemd services statistics. Uses cAdvisor metrics only.",
+  "editable": true,
+  "gnetId": 315,
+  "graphTooltip": 0,
+  "id": 21,
+  "iteration": 1685348647186,
+  "links": [],
+  "panels": [
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 0
+      },
+      "id": 33,
+      "panels": [],
+      "title": "Network I/O pressure",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 1,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 6,
+        "w": 24,
+        "x": 0,
+        "y": 1
+      },
+      "height": "200px",
+      "hiddenSeries": false,
+      "id": 32,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": false,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": false,
+        "show": false,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": false,
+      "targets": [
+        {
+          "expr": "sum (rate (container_network_receive_bytes_total{kubernetes_io_hostname=~\"^$Node$\"}[1m]))",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "Received",
+          "metric": "network",
+          "refId": "A",
+          "step": 10
+        },
+        {
+          "expr": "- sum (rate (container_network_transmit_bytes_total{kubernetes_io_hostname=~\"^$Node$\"}[1m]))",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "Sent",
+          "metric": "network",
+          "refId": "B",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Network I/O pressure",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 0,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "Bps",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "Bps",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 7
+      },
+      "id": 34,
+      "panels": [],
+      "title": "Total usage",
+      "type": "row"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": true,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "percent",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": true,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 8,
+        "x": 0,
+        "y": 8
+      },
+      "height": "180px",
+      "id": 4,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) / sum (machine_memory_bytes{kubernetes_io_hostname=~\"^$Node$\"}) * 100",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "65, 90",
+      "title": "Cluster memory usage",
+      "type": "singlestat",
+      "valueFontSize": "80%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": true,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "percent",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": true,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 8,
+        "x": 8,
+        "y": 8
+      },
+      "height": "180px",
+      "id": 6,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (rate (container_cpu_usage_seconds_total{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) / sum (machine_cpu_cores{kubernetes_io_hostname=~\"^$Node$\"}) * 100",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "65, 90",
+      "title": "Cluster CPU usage (1m avg)",
+      "type": "singlestat",
+      "valueFontSize": "80%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": true,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "percent",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": true,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 8,
+        "x": 16,
+        "y": 8
+      },
+      "height": "180px",
+      "id": 7,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_fs_usage_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) / sum (container_fs_limit_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) * 100",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "",
+          "metric": "",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "65, 90",
+      "title": "Cluster filesystem usage",
+      "type": "singlestat",
+      "valueFontSize": "80%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 0,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 9,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "20%",
+      "prefix": "",
+      "prefixFontSize": "20%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Used",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 4,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 10,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (machine_memory_bytes{kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Total",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "none",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 8,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 11,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": " cores",
+      "postfixFontSize": "30%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (rate (container_cpu_usage_seconds_total{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m]))",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Used",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "none",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 12,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 12,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": " cores",
+      "postfixFontSize": "30%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (machine_cpu_cores{kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Total",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 16,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 13,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_fs_usage_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Used",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 20,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 14,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_fs_limit_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Total",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 16
+      },
+      "id": 35,
+      "panels": [],
+      "title": "Pods CPU usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 3,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 17
+      },
+      "height": "",
+      "hiddenSeries": false,
+      "id": 17,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (rate (container_cpu_usage_seconds_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ pod_name }}",
+          "metric": "container_cpu",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Pods CPU usage (1m avg)",
+      "tooltip": {
+        "msResolution": true,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "none",
+          "label": "cores",
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 24
+      },
+      "id": 36,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 3,
+          "editable": true,
+          "error": false,
+          "fill": 0,
+          "grid": {},
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 24
+          },
+          "height": "",
+          "id": 23,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": true,
+          "targets": [
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{systemd_service_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (systemd_service_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "{{ systemd_service_name }}",
+              "metric": "container_cpu",
+              "refId": "A",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "System services CPU usage (1m avg)",
+          "tooltip": {
+            "msResolution": true,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "none",
+              "label": "cores",
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "System services CPU usage",
+      "type": "row"
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 25
+      },
+      "id": 37,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 3,
+          "editable": true,
+          "error": false,
+          "fill": 0,
+          "grid": {},
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 25
+          },
+          "height": "",
+          "id": 24,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "hideEmpty": false,
+            "hideZero": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "sideWidth": null,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": true,
+          "targets": [
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{image!=\"\",name=~\"^k8s_.*\",container_name!=\"POD\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (container_name, pod_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "pod: {{ pod_name }} | {{ container_name }}",
+              "metric": "container_cpu",
+              "refId": "A",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, name, image)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+              "metric": "container_cpu",
+              "refId": "B",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, rkt_container_name)",
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+              "metric": "container_cpu",
+              "refId": "C",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "Containers CPU usage (1m avg)",
+          "tooltip": {
+            "msResolution": true,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "none",
+              "label": "cores",
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "Containers CPU usage",
+      "type": "row"
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 26
+      },
+      "id": 38,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 3,
+          "editable": true,
+          "error": false,
+          "fill": 0,
+          "grid": {},
+          "gridPos": {
+            "h": 14,
+            "w": 24,
+            "x": 0,
+            "y": 26
+          },
+          "id": 20,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": false,
+            "show": true,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": true,
+          "targets": [
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (id)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "{{ id }}",
+              "metric": "container_cpu",
+              "refId": "A",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "All processes CPU usage (1m avg)",
+          "tooltip": {
+            "msResolution": true,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "none",
+              "label": "cores",
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "repeat": null,
+      "title": "All processes CPU usage",
+      "type": "row"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 27
+      },
+      "id": 39,
+      "panels": [],
+      "title": "Pods memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 28
+      },
+      "hiddenSeries": false,
+      "id": 25,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ pod_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Pods memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 35
+      },
+      "id": 40,
+      "panels": [],
+      "title": "System services memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 36
+      },
+      "hiddenSeries": false,
+      "id": 26,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{systemd_service_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}) by (systemd_service_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ systemd_service_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "System services memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 43
+      },
+      "id": 41,
+      "panels": [],
+      "title": "Containers memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 44
+      },
+      "hiddenSeries": false,
+      "id": 27,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{image!=\"\",name=~\"^k8s_.*\",container_name!=\"POD\",kubernetes_io_hostname=~\"^$Node$\"}) by (container_name, pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "pod: {{ pod_name }} | {{ container_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        },
+        {
+          "expr": "sum (container_memory_working_set_bytes{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}) by (kubernetes_io_hostname, name, image)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "B",
+          "step": 10
+        },
+        {
+          "expr": "sum (container_memory_working_set_bytes{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}) by (kubernetes_io_hostname, rkt_container_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "C",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Containers memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 51
+      },
+      "id": 42,
+      "panels": [],
+      "title": "All processes memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 14,
+        "w": 24,
+        "x": 0,
+        "y": 52
+      },
+      "hiddenSeries": false,
+      "id": 28,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": false,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) by (id)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ id }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "All processes memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 66
+      },
+      "id": 43,
+      "panels": [],
+      "title": "Pods network I/O",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 1,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 67
+      },
+      "hiddenSeries": false,
+      "id": 16,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": false,
+      "targets": [
+        {
+          "expr": "sum (rate (container_network_receive_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "-> {{ pod_name }}",
+          "metric": "network",
+          "refId": "A",
+          "step": 10
+        },
+        {
+          "expr": "- sum (rate (container_network_transmit_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "<- {{ pod_name }}",
+          "metric": "network",
+          "refId": "B",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Pods network I/O (1m avg)",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "Bps",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 74
+      },
+      "id": 44,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 2,
+          "editable": true,
+          "error": false,
+          "fill": 1,
+          "grid": {},
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 46
+          },
+          "id": 30,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "sideWidth": 200,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "sum (rate (container_network_receive_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (container_name, pod_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> pod: {{ pod_name }} | {{ container_name }}",
+              "metric": "network",
+              "refId": "B",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (container_name, pod_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- pod: {{ pod_name }} | {{ container_name }}",
+              "metric": "network",
+              "refId": "D",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_network_receive_bytes_total{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, name, image)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+              "metric": "network",
+              "refId": "A",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, name, image)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+              "metric": "network",
+              "refId": "C",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_network_transmit_bytes_total{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, rkt_container_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+              "metric": "network",
+              "refId": "E",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, rkt_container_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+              "metric": "network",
+              "refId": "F",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "Containers network I/O (1m avg)",
+          "tooltip": {
+            "msResolution": false,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "Bps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "Containers network I/O",
+      "type": "row"
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 75
+      },
+      "id": 45,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 2,
+          "editable": true,
+          "error": false,
+          "fill": 1,
+          "grid": {},
+          "gridPos": {
+            "h": 14,
+            "w": 24,
+            "x": 0,
+            "y": 47
+          },
+          "id": 29,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": false,
+            "show": true,
+            "sideWidth": 200,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "sum (rate (container_network_receive_bytes_total{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (id)",
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> {{ id }}",
+              "metric": "network",
+              "refId": "A",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (id)",
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- {{ id }}",
+              "metric": "network",
+              "refId": "B",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "All processes network I/O (1m avg)",
+          "tooltip": {
+            "msResolution": false,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "Bps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "All processes network I/O",
+      "type": "row"
+    }
+  ],
+  "refresh": "10s",
+  "schemaVersion": 27,
+  "style": "dark",
+  "tags": [
+    "kubernetes"
+  ],
+  "templating": {
+    "list": [
+      {
+        "allValue": ".*",
+        "current": {
+          "selected": false,
+          "text": "All",
+          "value": "$__all"
+        },
+        "datasource": null,
+        "definition": "",
+        "description": null,
+        "error": null,
+        "hide": 0,
+        "includeAll": true,
+        "label": null,
+        "multi": false,
+        "name": "Node",
+        "options": [],
+        "query": {
+          "query": "label_values(kubernetes_io_hostname)",
+          "refId": "Prometheus-Node-Variable-Query"
+        },
+        "refresh": 1,
+        "regex": "",
+        "skipUrlSync": false,
+        "sort": 0,
+        "tagValuesQuery": "",
+        "tags": [],
+        "tagsQuery": "",
+        "type": "query",
+        "useTags": false
+      }
+    ]
+  },
+  "time": {
+    "from": "now-5m",
+    "to": "now"
+  },
+  "timepicker": {
+    "refresh_intervals": [
+      "5s",
+      "10s",
+      "30s",
+      "1m",
+      "5m",
+      "15m",
+      "30m",
+      "1h",
+      "2h",
+      "1d"
+    ],
+    "time_options": [
+      "5m",
+      "15m",
+      "1h",
+      "6h",
+      "12h",
+      "24h",
+      "2d",
+      "7d",
+      "30d"
+    ]
+  },
+  "timezone": "browser",
+  "title": "Kubernetes cluster monitoring (via Prometheus)",
+  "uid": "cBNPLvw4z",
+  "version": 1
+}
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/performance/dashboards/kubernetes-persistent-volumes.json b/components/monitoring/grafana/base/performance/dashboards/kubernetes-persistent-volumes.json
new file mode 100644
index 00000000..16895a47
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/dashboards/kubernetes-persistent-volumes.json
@@ -0,0 +1,1451 @@
+{
+  "annotations": {
+    "list": [
+      {
+        "builtIn": 1,
+        "enable": true,
+        "hide": true,
+        "iconColor": "rgba(0, 211, 255, 1)",
+        "limit": 100,
+        "name": "Annotations & Alerts",
+        "showIn": 0,
+        "type": "dashboard"
+      }
+    ]
+  },
+  "description": "Monitors all persistent volumes that exists within a Kubernetes cluster. Prometheus is used as datasource. ",
+  "editable": true,
+  "gnetId": 13646,
+  "graphTooltip": 0,
+  "id": 22,
+  "iteration": 1685359000435,
+  "links": [],
+  "panels": [
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 0
+      },
+      "id": 26,
+      "panels": [],
+      "title": "Alerts",
+      "type": "row"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-orange",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 0,
+        "y": 1
+      },
+      "id": 22,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "(\n  count (\n    (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"})\n    and\n    (predict_linear(kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}[1d], 2 * 24 * 60 * 60) < 0)\n  )\n)\nor\nvector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Full in 2 days - Based on Daily Usage",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-orange",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 8,
+        "y": 1
+      },
+      "id": 28,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "(\n  count (\n    (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"})\n    and\n    (predict_linear(kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}[1d], 5 * 24 * 60 * 60) < 0)\n  )\n)\nor\nvector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Full in 5 days - Based on Daily Usage",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-orange",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 16,
+        "y": 1
+      },
+      "id": 27,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "(\n  count (\n    (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"})\n    and\n    (predict_linear(kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}[1d], 7 * 24 * 60 * 60) < 0)\n  )\n)\nor\nvector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Full in 1 Week - Based on Daily Usage",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "semi-dark-red",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-red",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 0,
+        "y": 5
+      },
+      "id": 21,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "count (max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"} ) and (max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"} )) / (max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_capacity_bytes{namespace=~\"${k8s_namespace}\"} )) >= (${warning_threshold} / 100)) or vector (0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Above Warning Threshold",
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "semi-dark-red",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-red",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 8,
+        "y": 5
+      },
+      "id": 24,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "count((kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=\"Pending\"}==1)) or vector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs in Pending State",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "semi-dark-red",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-red",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 16,
+        "y": 5
+      },
+      "id": 23,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "count((kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=\"Lost\"}==1)) or vector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs in Lost State",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 9
+      },
+      "id": 17,
+      "panels": [],
+      "title": "Usage statistics",
+      "type": "row"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "custom": {
+            "align": null,
+            "displayMode": "auto",
+            "filterable": false
+          },
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": [
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Used (%)"
+            },
+            "properties": [
+              {
+                "id": "custom.displayMode",
+                "value": "gradient-gauge"
+              },
+              {
+                "id": "thresholds",
+                "value": {
+                  "mode": "absolute",
+                  "steps": [
+                    {
+                      "color": "light-green",
+                      "value": null
+                    },
+                    {
+                      "color": "semi-dark-yellow",
+                      "value": 70
+                    },
+                    {
+                      "color": "dark-red",
+                      "value": 80
+                    }
+                  ]
+                }
+              },
+              {
+                "id": "decimals",
+                "value": 1
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Status"
+            },
+            "properties": [
+              {
+                "id": "custom.displayMode",
+                "value": "color-background"
+              },
+              {
+                "id": "mappings",
+                "value": [
+                  {
+                    "from": "",
+                    "id": 1,
+                    "text": "Bound",
+                    "to": "",
+                    "type": 1,
+                    "value": "0"
+                  },
+                  {
+                    "from": "",
+                    "id": 2,
+                    "text": "Pending",
+                    "to": "",
+                    "type": 1,
+                    "value": "1"
+                  },
+                  {
+                    "from": "",
+                    "id": 3,
+                    "text": "Lost",
+                    "to": "",
+                    "type": 1,
+                    "value": "2"
+                  }
+                ]
+              },
+              {
+                "id": "thresholds",
+                "value": {
+                  "mode": "absolute",
+                  "steps": [
+                    {
+                      "color": "light-green",
+                      "value": null
+                    },
+                    {
+                      "color": "light-green",
+                      "value": 0
+                    },
+                    {
+                      "color": "semi-dark-orange",
+                      "value": 1
+                    },
+                    {
+                      "color": "semi-dark-red",
+                      "value": 2
+                    }
+                  ]
+                }
+              },
+              {
+                "id": "noValue",
+                "value": "--"
+              },
+              {
+                "id": "custom.align",
+                "value": "center"
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Namespace"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Status"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 80
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Capacity (GiB)"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Used (GiB)"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Available (GiB)"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "StorageClass"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 150
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "PersistentVolumeClaim"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 370
+              }
+            ]
+          }
+        ]
+      },
+      "gridPos": {
+        "h": 12,
+        "w": 24,
+        "x": 0,
+        "y": 10
+      },
+      "id": 29,
+      "interval": "",
+      "options": {
+        "frameIndex": 2,
+        "showHeader": true,
+        "sortBy": [
+          {
+            "desc": false,
+            "displayName": "PersistentVolumeClaim"
+          }
+        ]
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": " sum by (persistentvolumeclaim,namespace,storageclass,volumename) (kube_persistentvolumeclaim_info{namespace=~\"${k8s_namespace}\"})",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_capacity_bytes{namespace=~\"${k8s_namespace}\"}/1024/1024/1024)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "B"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}/1024/1024/1024)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "C"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}/1024/1024/1024)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "D"
+        },
+        {
+          "expr": "sum(kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=~\"(Pending|Lost)\"}) by (persistentvolumeclaim) + sum(kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=~\"(Lost)\"}) by (persistentvolumeclaim)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "E"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}/kubelet_volume_stats_capacity_bytes{namespace=~\"${k8s_namespace}\"} * 100)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "F"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "Persistent Volume Claim",
+      "transformations": [
+        {
+          "id": "seriesToColumns",
+          "options": {
+            "byField": "persistentvolumeclaim"
+          }
+        },
+        {
+          "id": "organize",
+          "options": {
+            "excludeByName": {
+              "Time": true,
+              "Time 1": true,
+              "Time 2": true,
+              "Time 3": true,
+              "Time 4": true,
+              "Time 5": true,
+              "Time 6": true,
+              "Value #A": true
+            },
+            "indexByName": {},
+            "renameByName": {
+              "Time 1": "",
+              "Time 2": "",
+              "Time 3": "",
+              "Time 4": "",
+              "Time 5": "",
+              "Time 6": "",
+              "Value #A": "",
+              "Value #B": "Capacity (GiB)",
+              "Value #C": "Used (GiB)",
+              "Value #D": "Available (GiB)",
+              "Value #E": "Status",
+              "Value #F": "Used (%)",
+              "namespace": "Namespace",
+              "persistentvolumeclaim": "PersistentVolumeClaim",
+              "storageclass": "StorageClass",
+              "volumename": "PhysicalVolume"
+            }
+          }
+        }
+      ],
+      "type": "table"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "custom": {
+            "align": null,
+            "filterable": false
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 24,
+        "x": 0,
+        "y": 22
+      },
+      "id": 7,
+      "options": {
+        "showHeader": true,
+        "sortBy": [
+          {
+            "desc": true,
+            "displayName": "Status"
+          }
+        ]
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "kube_storageclass_info",
+          "format": "table",
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "Storage Class",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {
+            "excludeByName": {
+              "Time": true,
+              "Value": true,
+              "__name__": true,
+              "app_kubernetes_io_instance": true,
+              "app_kubernetes_io_name": true,
+              "instance": true,
+              "job": true,
+              "kubernetes_namespace": true,
+              "kubernetes_pod_name": true,
+              "pod_template_hash": true
+            },
+            "indexByName": {
+              "Time": 1,
+              "Value": 13,
+              "__name__": 2,
+              "app_kubernetes_io_instance": 3,
+              "app_kubernetes_io_name": 4,
+              "instance": 5,
+              "job": 6,
+              "kubernetes_namespace": 7,
+              "kubernetes_pod_name": 8,
+              "pod_template_hash": 9,
+              "provisioner": 10,
+              "reclaimPolicy": 11,
+              "storageclass": 0,
+              "volumeBindingMode": 12
+            },
+            "renameByName": {
+              "provisioner": "Provisioner",
+              "reclaimPolicy": "ReclaimPolicy",
+              "storageclass": "StorageClass",
+              "volumeBindingMode": "VolumeBindingMode"
+            }
+          }
+        },
+        {
+          "id": "groupBy",
+          "options": {
+            "fields": {
+              "Provisioner": {
+                "aggregations": [],
+                "operation": "groupby"
+              },
+              "ReclaimPolicy": {
+                "aggregations": [],
+                "operation": "groupby"
+              },
+              "StorageClass": {
+                "aggregations": [],
+                "operation": "groupby"
+              },
+              "VolumeBindingMode": {
+                "aggregations": [],
+                "operation": "groupby"
+              }
+            }
+          }
+        }
+      ],
+      "type": "table"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 27
+      },
+      "id": 15,
+      "panels": [],
+      "title": "Graphical usage data ",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "gridPos": {
+        "h": 12,
+        "w": 24,
+        "x": 0,
+        "y": 28
+      },
+      "hiddenSeries": false,
+      "id": 9,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": true,
+        "min": true,
+        "rightSide": true,
+        "show": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 1,
+      "nullPointMode": "null",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 2,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": false,
+      "targets": [
+        {
+          "expr": "(max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}))",
+          "interval": "",
+          "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+          "refId": "A"
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "All Running PVCs Used Bytes",
+      "tooltip": {
+        "shared": true,
+        "sort": 2,
+        "value_type": "individual"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "Date & time",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 40
+      },
+      "id": 19,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "dashLength": 10,
+          "dashes": false,
+          "datasource": null,
+          "fieldConfig": {
+            "defaults": {
+              "custom": {}
+            },
+            "overrides": []
+          },
+          "fill": 0,
+          "fillGradient": 0,
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 41
+          },
+          "hiddenSeries": false,
+          "id": 11,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 1,
+          "nullPointMode": "null",
+          "options": {
+            "alertThreshold": true
+          },
+          "percentage": false,
+          "pluginVersion": "7.2.1",
+          "pointradius": 2,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "spaceLength": 10,
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "rate(kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}[1h])",
+              "instant": false,
+              "interval": "",
+              "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+              "refId": "A"
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeRegions": [],
+          "timeShift": null,
+          "title": "Hourly Volume Usage Rate",
+          "tooltip": {
+            "shared": true,
+            "sort": 2,
+            "value_type": "individual"
+          },
+          "type": "graph",
+          "xaxis": {
+            "buckets": null,
+            "mode": "time",
+            "name": null,
+            "show": true,
+            "values": []
+          },
+          "yaxes": [
+            {
+              "format": "binBps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "Date & time",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            }
+          ],
+          "yaxis": {
+            "align": false,
+            "alignLevel": null
+          }
+        },
+        {
+          "aliasColors": {},
+          "bars": false,
+          "dashLength": 10,
+          "dashes": false,
+          "datasource": null,
+          "fieldConfig": {
+            "defaults": {
+              "custom": {}
+            },
+            "overrides": []
+          },
+          "fill": 0,
+          "fillGradient": 0,
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 48
+          },
+          "hiddenSeries": false,
+          "id": 12,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 1,
+          "nullPointMode": "null",
+          "options": {
+            "alertThreshold": true
+          },
+          "percentage": false,
+          "pluginVersion": "7.2.1",
+          "pointradius": 2,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "spaceLength": 10,
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "rate(kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}[1d])",
+              "interval": "",
+              "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+              "refId": "A"
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeRegions": [],
+          "timeShift": null,
+          "title": "Daily Volume Usage Rate",
+          "tooltip": {
+            "shared": true,
+            "sort": 2,
+            "value_type": "individual"
+          },
+          "type": "graph",
+          "xaxis": {
+            "buckets": null,
+            "mode": "time",
+            "name": null,
+            "show": true,
+            "values": []
+          },
+          "yaxes": [
+            {
+              "format": "binBps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "Date & time",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            }
+          ],
+          "yaxis": {
+            "align": false,
+            "alignLevel": null
+          }
+        },
+        {
+          "aliasColors": {},
+          "bars": false,
+          "dashLength": 10,
+          "dashes": false,
+          "datasource": null,
+          "fieldConfig": {
+            "defaults": {
+              "custom": {}
+            },
+            "overrides": []
+          },
+          "fill": 0,
+          "fillGradient": 0,
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 55
+          },
+          "hiddenSeries": false,
+          "id": 13,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 1,
+          "nullPointMode": "null",
+          "options": {
+            "alertThreshold": true
+          },
+          "percentage": false,
+          "pluginVersion": "7.2.1",
+          "pointradius": 2,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "spaceLength": 10,
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "rate(kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}[1w])",
+              "instant": false,
+              "interval": "",
+              "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+              "refId": "A"
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeRegions": [],
+          "timeShift": null,
+          "title": "Weekly Volume Usage Rate",
+          "tooltip": {
+            "shared": true,
+            "sort": 2,
+            "value_type": "individual"
+          },
+          "type": "graph",
+          "xaxis": {
+            "buckets": null,
+            "mode": "time",
+            "name": null,
+            "show": true,
+            "values": []
+          },
+          "yaxes": [
+            {
+              "format": "binBps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "Date & time",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            }
+          ],
+          "yaxis": {
+            "align": false,
+            "alignLevel": null
+          }
+        }
+      ],
+      "title": "Usage Rate",
+      "type": "row"
+    }
+  ],
+  "refresh": "1m",
+  "schemaVersion": 27,
+  "style": "dark",
+  "tags": [],
+  "templating": {
+    "list": [
+      {
+        "current": {
+          "selected": false,
+          "text": "Prometheus",
+          "value": "Prometheus"
+        },
+        "description": null,
+        "error": null,
+        "hide": 0,
+        "includeAll": false,
+        "label": "Datasource",
+        "multi": false,
+        "name": "datasource",
+        "options": [],
+        "query": "prometheus",
+        "queryValue": "",
+        "refresh": 1,
+        "regex": "",
+        "skipUrlSync": false,
+        "type": "datasource"
+      },
+      {
+        "allValue": ".*",
+        "current": {
+          "selected": false,
+          "text": "All",
+          "value": "$__all"
+        },
+        "datasource": null,
+        "definition": "label_values(namespace)",
+        "description": null,
+        "error": null,
+        "hide": 0,
+        "includeAll": true,
+        "label": "Namespace",
+        "multi": true,
+        "name": "k8s_namespace",
+        "options": [],
+        "query": {
+          "query": "label_values(namespace)",
+          "refId": "Prometheus-k8s_namespace-Variable-Query"
+        },
+        "refresh": 2,
+        "regex": "",
+        "skipUrlSync": false,
+        "sort": 1,
+        "tagValuesQuery": "",
+        "tags": [],
+        "tagsQuery": "",
+        "type": "query",
+        "useTags": false
+      },
+      {
+        "current": {
+          "selected": false,
+          "text": "80",
+          "value": "80"
+        },
+        "description": null,
+        "error": null,
+        "hide": 2,
+        "label": "PVC % Used Warning Threshold",
+        "name": "warning_threshold",
+        "options": [
+          {
+            "selected": true,
+            "text": "80",
+            "value": "80"
+          }
+        ],
+        "query": "80",
+        "skipUrlSync": false,
+        "type": "textbox"
+      }
+    ]
+  },
+  "time": {
+    "from": "now-24h",
+    "to": "now"
+  },
+  "timepicker": {},
+  "timezone": "",
+  "title": "kubernetes-persistent-volumes-enhanced",
+  "uid": "peR80gTGk",
+  "version": 3
+}
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/performance/kustomization.yaml b/components/monitoring/grafana/base/performance/kustomization.yaml
new file mode 100644
index 00000000..6b99c60c
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dashboard.yaml
+configMapGenerator:
+  - name: performance-team-cluster-monitoring
+    files:
+      - dashboards/kubernetes-cluster-monitoring.json
+  - name: kubernetes-persistent-volumes
+    files:
+      - dashboards/kubernetes-persistent-volumes.json 
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

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 97c6d108 to 9f9200ac on Mon May 29 12:38:48 2023 </h3>  
 
<details> 
<summary>Git Diff (3924 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index b796efe3..91e49de4 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -12,6 +12,7 @@ resources:
 - migration/
 - o11y/
 - release/
+- performance/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/performance/dashboard.yaml b/components/monitoring/grafana/base/performance/dashboard.yaml
new file mode 100644
index 00000000..209afcdb
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/dashboard.yaml
@@ -0,0 +1,21 @@
+apiVersion: integreatly.org/v1alpha1
+kind: GrafanaDashboard
+metadata:
+  name: performance-team-dashboard-cluster-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  configMapRef:
+    name: performance-team-dashboard-cluster-monitoring
+    key: kubernetes-cluster-monitoring.json
+---
+apiVersion: integreatly.org/v1alpha1
+kind: GrafanaDashboard
+metadata:
+  name: kubernetes-persistent-volumes
+  labels: 
+    app: appstudio-grafana
+spec:
+  configMapRef:
+    name: kubernetes-persistent-volumes
+    key: kubernetes-persistent-volumes.json
diff --git a/components/monitoring/grafana/base/performance/dashboards/kubernetes-cluster-monitoring.json b/components/monitoring/grafana/base/performance/dashboards/kubernetes-cluster-monitoring.json
new file mode 100644
index 00000000..3f767419
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/dashboards/kubernetes-cluster-monitoring.json
@@ -0,0 +1,2403 @@
+{
+  "annotations": {
+    "list": [
+      {
+        "builtIn": 1,
+        "enable": true,
+        "hide": true,
+        "iconColor": "rgba(0, 211, 255, 1)",
+        "name": "Annotations & Alerts",
+        "type": "dashboard"
+      }
+    ]
+  },
+  "description": "Monitors Kubernetes cluster using Prometheus. Shows overall cluster CPU / Memory / Filesystem usage as well as individual pod, containers, systemd services statistics. Uses cAdvisor metrics only.",
+  "editable": true,
+  "gnetId": 315,
+  "graphTooltip": 0,
+  "id": 21,
+  "iteration": 1685348647186,
+  "links": [],
+  "panels": [
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 0
+      },
+      "id": 33,
+      "panels": [],
+      "title": "Network I/O pressure",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 1,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 6,
+        "w": 24,
+        "x": 0,
+        "y": 1
+      },
+      "height": "200px",
+      "hiddenSeries": false,
+      "id": 32,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": false,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": false,
+        "show": false,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": false,
+      "targets": [
+        {
+          "expr": "sum (rate (container_network_receive_bytes_total{kubernetes_io_hostname=~\"^$Node$\"}[1m]))",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "Received",
+          "metric": "network",
+          "refId": "A",
+          "step": 10
+        },
+        {
+          "expr": "- sum (rate (container_network_transmit_bytes_total{kubernetes_io_hostname=~\"^$Node$\"}[1m]))",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "Sent",
+          "metric": "network",
+          "refId": "B",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Network I/O pressure",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 0,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "Bps",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "Bps",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 7
+      },
+      "id": 34,
+      "panels": [],
+      "title": "Total usage",
+      "type": "row"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": true,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "percent",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": true,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 8,
+        "x": 0,
+        "y": 8
+      },
+      "height": "180px",
+      "id": 4,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) / sum (machine_memory_bytes{kubernetes_io_hostname=~\"^$Node$\"}) * 100",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "65, 90",
+      "title": "Cluster memory usage",
+      "type": "singlestat",
+      "valueFontSize": "80%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": true,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "percent",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": true,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 8,
+        "x": 8,
+        "y": 8
+      },
+      "height": "180px",
+      "id": 6,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (rate (container_cpu_usage_seconds_total{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) / sum (machine_cpu_cores{kubernetes_io_hostname=~\"^$Node$\"}) * 100",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "65, 90",
+      "title": "Cluster CPU usage (1m avg)",
+      "type": "singlestat",
+      "valueFontSize": "80%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": true,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "percent",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": true,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 8,
+        "x": 16,
+        "y": 8
+      },
+      "height": "180px",
+      "id": 7,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_fs_usage_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) / sum (container_fs_limit_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) * 100",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "",
+          "metric": "",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "65, 90",
+      "title": "Cluster filesystem usage",
+      "type": "singlestat",
+      "valueFontSize": "80%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 0,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 9,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "20%",
+      "prefix": "",
+      "prefixFontSize": "20%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Used",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 4,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 10,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (machine_memory_bytes{kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Total",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "none",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 8,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 11,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": " cores",
+      "postfixFontSize": "30%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (rate (container_cpu_usage_seconds_total{id=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m]))",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Used",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "none",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 12,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 12,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": " cores",
+      "postfixFontSize": "30%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (machine_cpu_cores{kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Total",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 16,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 13,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_fs_usage_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Used",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "cacheTimeout": null,
+      "colorBackground": false,
+      "colorValue": false,
+      "colors": [
+        "rgba(50, 172, 45, 0.97)",
+        "rgba(237, 129, 40, 0.89)",
+        "rgba(245, 54, 54, 0.9)"
+      ],
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "format": "bytes",
+      "gauge": {
+        "maxValue": 100,
+        "minValue": 0,
+        "show": false,
+        "thresholdLabels": false,
+        "thresholdMarkers": true
+      },
+      "gridPos": {
+        "h": 3,
+        "w": 4,
+        "x": 20,
+        "y": 13
+      },
+      "height": "1px",
+      "id": 14,
+      "interval": null,
+      "isNew": true,
+      "links": [],
+      "mappingType": 1,
+      "mappingTypes": [
+        {
+          "name": "value to text",
+          "value": 1
+        },
+        {
+          "name": "range to text",
+          "value": 2
+        }
+      ],
+      "maxDataPoints": 100,
+      "nullPointMode": "connected",
+      "nullText": null,
+      "postfix": "",
+      "postfixFontSize": "50%",
+      "prefix": "",
+      "prefixFontSize": "50%",
+      "rangeMaps": [
+        {
+          "from": "null",
+          "text": "N/A",
+          "to": "null"
+        }
+      ],
+      "sparkline": {
+        "fillColor": "rgba(31, 118, 189, 0.18)",
+        "full": false,
+        "lineColor": "rgb(31, 120, 193)",
+        "show": false
+      },
+      "tableColumn": "",
+      "targets": [
+        {
+          "expr": "sum (container_fs_limit_bytes{device=~\"^/dev/[sv]d[a-z][1-9]$\",id=\"/\",kubernetes_io_hostname=~\"^$Node$\"})",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": "",
+      "title": "Total",
+      "type": "singlestat",
+      "valueFontSize": "50%",
+      "valueMaps": [
+        {
+          "op": "=",
+          "text": "N/A",
+          "value": "null"
+        }
+      ],
+      "valueName": "current"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 16
+      },
+      "id": 35,
+      "panels": [],
+      "title": "Pods CPU usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 3,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 17
+      },
+      "height": "",
+      "hiddenSeries": false,
+      "id": 17,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (rate (container_cpu_usage_seconds_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ pod_name }}",
+          "metric": "container_cpu",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Pods CPU usage (1m avg)",
+      "tooltip": {
+        "msResolution": true,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "none",
+          "label": "cores",
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 24
+      },
+      "id": 36,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 3,
+          "editable": true,
+          "error": false,
+          "fill": 0,
+          "grid": {},
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 24
+          },
+          "height": "",
+          "id": 23,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": true,
+          "targets": [
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{systemd_service_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (systemd_service_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "{{ systemd_service_name }}",
+              "metric": "container_cpu",
+              "refId": "A",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "System services CPU usage (1m avg)",
+          "tooltip": {
+            "msResolution": true,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "none",
+              "label": "cores",
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "System services CPU usage",
+      "type": "row"
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 25
+      },
+      "id": 37,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 3,
+          "editable": true,
+          "error": false,
+          "fill": 0,
+          "grid": {},
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 25
+          },
+          "height": "",
+          "id": 24,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "hideEmpty": false,
+            "hideZero": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "sideWidth": null,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": true,
+          "targets": [
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{image!=\"\",name=~\"^k8s_.*\",container_name!=\"POD\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (container_name, pod_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "pod: {{ pod_name }} | {{ container_name }}",
+              "metric": "container_cpu",
+              "refId": "A",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, name, image)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+              "metric": "container_cpu",
+              "refId": "B",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, rkt_container_name)",
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+              "metric": "container_cpu",
+              "refId": "C",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "Containers CPU usage (1m avg)",
+          "tooltip": {
+            "msResolution": true,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "none",
+              "label": "cores",
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "Containers CPU usage",
+      "type": "row"
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 26
+      },
+      "id": 38,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 3,
+          "editable": true,
+          "error": false,
+          "fill": 0,
+          "grid": {},
+          "gridPos": {
+            "h": 14,
+            "w": 24,
+            "x": 0,
+            "y": 26
+          },
+          "id": 20,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": false,
+            "show": true,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": true,
+          "targets": [
+            {
+              "expr": "sum (rate (container_cpu_usage_seconds_total{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (id)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "{{ id }}",
+              "metric": "container_cpu",
+              "refId": "A",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "All processes CPU usage (1m avg)",
+          "tooltip": {
+            "msResolution": true,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "none",
+              "label": "cores",
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "repeat": null,
+      "title": "All processes CPU usage",
+      "type": "row"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 27
+      },
+      "id": 39,
+      "panels": [],
+      "title": "Pods memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 28
+      },
+      "hiddenSeries": false,
+      "id": 25,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ pod_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Pods memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 35
+      },
+      "id": 40,
+      "panels": [],
+      "title": "System services memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 36
+      },
+      "hiddenSeries": false,
+      "id": 26,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{systemd_service_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}) by (systemd_service_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ systemd_service_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "System services memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 43
+      },
+      "id": 41,
+      "panels": [],
+      "title": "Containers memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 44
+      },
+      "hiddenSeries": false,
+      "id": 27,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{image!=\"\",name=~\"^k8s_.*\",container_name!=\"POD\",kubernetes_io_hostname=~\"^$Node$\"}) by (container_name, pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "pod: {{ pod_name }} | {{ container_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        },
+        {
+          "expr": "sum (container_memory_working_set_bytes{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}) by (kubernetes_io_hostname, name, image)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "B",
+          "step": 10
+        },
+        {
+          "expr": "sum (container_memory_working_set_bytes{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}) by (kubernetes_io_hostname, rkt_container_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "C",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Containers memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 51
+      },
+      "id": 42,
+      "panels": [],
+      "title": "All processes memory usage",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 14,
+        "w": 24,
+        "x": 0,
+        "y": 52
+      },
+      "hiddenSeries": false,
+      "id": 28,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": false,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": true,
+      "targets": [
+        {
+          "expr": "sum (container_memory_working_set_bytes{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}) by (id)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "{{ id }}",
+          "metric": "container_memory_usage:sort_desc",
+          "refId": "A",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "All processes memory usage",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 66
+      },
+      "id": 43,
+      "panels": [],
+      "title": "Pods network I/O",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "decimals": 2,
+      "editable": true,
+      "error": false,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 1,
+      "fillGradient": 0,
+      "grid": {},
+      "gridPos": {
+        "h": 7,
+        "w": 24,
+        "x": 0,
+        "y": 67
+      },
+      "hiddenSeries": false,
+      "id": 16,
+      "isNew": true,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": false,
+        "min": false,
+        "rightSide": true,
+        "show": true,
+        "sideWidth": 200,
+        "sort": "current",
+        "sortDesc": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 2,
+      "links": [],
+      "nullPointMode": "connected",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 5,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": false,
+      "targets": [
+        {
+          "expr": "sum (rate (container_network_receive_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "-> {{ pod_name }}",
+          "metric": "network",
+          "refId": "A",
+          "step": 10
+        },
+        {
+          "expr": "- sum (rate (container_network_transmit_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (pod_name)",
+          "interval": "10s",
+          "intervalFactor": 1,
+          "legendFormat": "<- {{ pod_name }}",
+          "metric": "network",
+          "refId": "B",
+          "step": 10
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "Pods network I/O (1m avg)",
+      "tooltip": {
+        "msResolution": false,
+        "shared": true,
+        "sort": 2,
+        "value_type": "cumulative"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "Bps",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "short",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": false
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 74
+      },
+      "id": 44,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 2,
+          "editable": true,
+          "error": false,
+          "fill": 1,
+          "grid": {},
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 46
+          },
+          "id": 30,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "sideWidth": 200,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "sum (rate (container_network_receive_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (container_name, pod_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> pod: {{ pod_name }} | {{ container_name }}",
+              "metric": "network",
+              "refId": "B",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{image!=\"\",name=~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (container_name, pod_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- pod: {{ pod_name }} | {{ container_name }}",
+              "metric": "network",
+              "refId": "D",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_network_receive_bytes_total{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, name, image)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+              "metric": "network",
+              "refId": "A",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{image!=\"\",name!~\"^k8s_.*\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, name, image)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- docker: {{ kubernetes_io_hostname }} | {{ image }} ({{ name }})",
+              "metric": "network",
+              "refId": "C",
+              "step": 10
+            },
+            {
+              "expr": "sum (rate (container_network_transmit_bytes_total{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, rkt_container_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+              "metric": "network",
+              "refId": "E",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{rkt_container_name!=\"\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (kubernetes_io_hostname, rkt_container_name)",
+              "hide": false,
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- rkt: {{ kubernetes_io_hostname }} | {{ rkt_container_name }}",
+              "metric": "network",
+              "refId": "F",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "Containers network I/O (1m avg)",
+          "tooltip": {
+            "msResolution": false,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "Bps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "Containers network I/O",
+      "type": "row"
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 75
+      },
+      "id": 45,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "datasource": null,
+          "decimals": 2,
+          "editable": true,
+          "error": false,
+          "fill": 1,
+          "grid": {},
+          "gridPos": {
+            "h": 14,
+            "w": 24,
+            "x": 0,
+            "y": 47
+          },
+          "id": 29,
+          "isNew": true,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": true,
+            "max": false,
+            "min": false,
+            "rightSide": false,
+            "show": true,
+            "sideWidth": 200,
+            "sort": "current",
+            "sortDesc": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 2,
+          "links": [],
+          "nullPointMode": "connected",
+          "percentage": false,
+          "pointradius": 5,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "sum (rate (container_network_receive_bytes_total{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (id)",
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "-> {{ id }}",
+              "metric": "network",
+              "refId": "A",
+              "step": 10
+            },
+            {
+              "expr": "- sum (rate (container_network_transmit_bytes_total{id!=\"/\",kubernetes_io_hostname=~\"^$Node$\"}[1m])) by (id)",
+              "interval": "10s",
+              "intervalFactor": 1,
+              "legendFormat": "<- {{ id }}",
+              "metric": "network",
+              "refId": "B",
+              "step": 10
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeShift": null,
+          "title": "All processes network I/O (1m avg)",
+          "tooltip": {
+            "msResolution": false,
+            "shared": true,
+            "sort": 2,
+            "value_type": "cumulative"
+          },
+          "type": "graph",
+          "xaxis": {
+            "show": true
+          },
+          "yaxes": [
+            {
+              "format": "Bps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "short",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": false
+            }
+          ]
+        }
+      ],
+      "title": "All processes network I/O",
+      "type": "row"
+    }
+  ],
+  "refresh": "10s",
+  "schemaVersion": 27,
+  "style": "dark",
+  "tags": [
+    "kubernetes"
+  ],
+  "templating": {
+    "list": [
+      {
+        "allValue": ".*",
+        "current": {
+          "selected": false,
+          "text": "All",
+          "value": "$__all"
+        },
+        "datasource": null,
+        "definition": "",
+        "description": null,
+        "error": null,
+        "hide": 0,
+        "includeAll": true,
+        "label": null,
+        "multi": false,
+        "name": "Node",
+        "options": [],
+        "query": {
+          "query": "label_values(kubernetes_io_hostname)",
+          "refId": "Prometheus-Node-Variable-Query"
+        },
+        "refresh": 1,
+        "regex": "",
+        "skipUrlSync": false,
+        "sort": 0,
+        "tagValuesQuery": "",
+        "tags": [],
+        "tagsQuery": "",
+        "type": "query",
+        "useTags": false
+      }
+    ]
+  },
+  "time": {
+    "from": "now-5m",
+    "to": "now"
+  },
+  "timepicker": {
+    "refresh_intervals": [
+      "5s",
+      "10s",
+      "30s",
+      "1m",
+      "5m",
+      "15m",
+      "30m",
+      "1h",
+      "2h",
+      "1d"
+    ],
+    "time_options": [
+      "5m",
+      "15m",
+      "1h",
+      "6h",
+      "12h",
+      "24h",
+      "2d",
+      "7d",
+      "30d"
+    ]
+  },
+  "timezone": "browser",
+  "title": "Kubernetes cluster monitoring (via Prometheus)",
+  "uid": "cBNPLvw4z",
+  "version": 1
+}
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/performance/dashboards/kubernetes-persistent-volumes.json b/components/monitoring/grafana/base/performance/dashboards/kubernetes-persistent-volumes.json
new file mode 100644
index 00000000..16895a47
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/dashboards/kubernetes-persistent-volumes.json
@@ -0,0 +1,1451 @@
+{
+  "annotations": {
+    "list": [
+      {
+        "builtIn": 1,
+        "enable": true,
+        "hide": true,
+        "iconColor": "rgba(0, 211, 255, 1)",
+        "limit": 100,
+        "name": "Annotations & Alerts",
+        "showIn": 0,
+        "type": "dashboard"
+      }
+    ]
+  },
+  "description": "Monitors all persistent volumes that exists within a Kubernetes cluster. Prometheus is used as datasource. ",
+  "editable": true,
+  "gnetId": 13646,
+  "graphTooltip": 0,
+  "id": 22,
+  "iteration": 1685359000435,
+  "links": [],
+  "panels": [
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 0
+      },
+      "id": 26,
+      "panels": [],
+      "title": "Alerts",
+      "type": "row"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-orange",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 0,
+        "y": 1
+      },
+      "id": 22,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "(\n  count (\n    (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"})\n    and\n    (predict_linear(kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}[1d], 2 * 24 * 60 * 60) < 0)\n  )\n)\nor\nvector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Full in 2 days - Based on Daily Usage",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-orange",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 8,
+        "y": 1
+      },
+      "id": 28,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "(\n  count (\n    (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"})\n    and\n    (predict_linear(kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}[1d], 5 * 24 * 60 * 60) < 0)\n  )\n)\nor\nvector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Full in 5 days - Based on Daily Usage",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-orange",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 16,
+        "y": 1
+      },
+      "id": 27,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "(\n  count (\n    (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"})\n    and\n    (predict_linear(kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}[1d], 7 * 24 * 60 * 60) < 0)\n  )\n)\nor\nvector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Full in 1 Week - Based on Daily Usage",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "semi-dark-red",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-red",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 0,
+        "y": 5
+      },
+      "id": 21,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "count (max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"} ) and (max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"} )) / (max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_capacity_bytes{namespace=~\"${k8s_namespace}\"} )) >= (${warning_threshold} / 100)) or vector (0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs Above Warning Threshold",
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "semi-dark-red",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-red",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 8,
+        "y": 5
+      },
+      "id": 24,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "count((kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=\"Pending\"}==1)) or vector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs in Pending State",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "decimals": 0,
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "semi-dark-red",
+                "value": null
+              },
+              {
+                "color": "light-green",
+                "value": -0.0001
+              },
+              {
+                "color": "semi-dark-red",
+                "value": 0.0001
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 4,
+        "w": 8,
+        "x": 16,
+        "y": 5
+      },
+      "id": 23,
+      "options": {
+        "colorMode": "background",
+        "graphMode": "area",
+        "justifyMode": "auto",
+        "orientation": "auto",
+        "reduceOptions": {
+          "calcs": [
+            "mean"
+          ],
+          "fields": "",
+          "values": false
+        },
+        "text": {},
+        "textMode": "auto"
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "count((kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=\"Lost\"}==1)) or vector(0)",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "PVCs in Lost State",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {}
+        }
+      ],
+      "type": "stat"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 9
+      },
+      "id": 17,
+      "panels": [],
+      "title": "Usage statistics",
+      "type": "row"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "thresholds"
+          },
+          "custom": {
+            "align": null,
+            "displayMode": "auto",
+            "filterable": false
+          },
+          "mappings": [],
+          "noValue": "--",
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "light-green",
+                "value": null
+              }
+            ]
+          },
+          "unit": "none"
+        },
+        "overrides": [
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Used (%)"
+            },
+            "properties": [
+              {
+                "id": "custom.displayMode",
+                "value": "gradient-gauge"
+              },
+              {
+                "id": "thresholds",
+                "value": {
+                  "mode": "absolute",
+                  "steps": [
+                    {
+                      "color": "light-green",
+                      "value": null
+                    },
+                    {
+                      "color": "semi-dark-yellow",
+                      "value": 70
+                    },
+                    {
+                      "color": "dark-red",
+                      "value": 80
+                    }
+                  ]
+                }
+              },
+              {
+                "id": "decimals",
+                "value": 1
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Status"
+            },
+            "properties": [
+              {
+                "id": "custom.displayMode",
+                "value": "color-background"
+              },
+              {
+                "id": "mappings",
+                "value": [
+                  {
+                    "from": "",
+                    "id": 1,
+                    "text": "Bound",
+                    "to": "",
+                    "type": 1,
+                    "value": "0"
+                  },
+                  {
+                    "from": "",
+                    "id": 2,
+                    "text": "Pending",
+                    "to": "",
+                    "type": 1,
+                    "value": "1"
+                  },
+                  {
+                    "from": "",
+                    "id": 3,
+                    "text": "Lost",
+                    "to": "",
+                    "type": 1,
+                    "value": "2"
+                  }
+                ]
+              },
+              {
+                "id": "thresholds",
+                "value": {
+                  "mode": "absolute",
+                  "steps": [
+                    {
+                      "color": "light-green",
+                      "value": null
+                    },
+                    {
+                      "color": "light-green",
+                      "value": 0
+                    },
+                    {
+                      "color": "semi-dark-orange",
+                      "value": 1
+                    },
+                    {
+                      "color": "semi-dark-red",
+                      "value": 2
+                    }
+                  ]
+                }
+              },
+              {
+                "id": "noValue",
+                "value": "--"
+              },
+              {
+                "id": "custom.align",
+                "value": "center"
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Namespace"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Status"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 80
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Capacity (GiB)"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Used (GiB)"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "Available (GiB)"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 120
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "StorageClass"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 150
+              }
+            ]
+          },
+          {
+            "matcher": {
+              "id": "byName",
+              "options": "PersistentVolumeClaim"
+            },
+            "properties": [
+              {
+                "id": "custom.width",
+                "value": 370
+              }
+            ]
+          }
+        ]
+      },
+      "gridPos": {
+        "h": 12,
+        "w": 24,
+        "x": 0,
+        "y": 10
+      },
+      "id": 29,
+      "interval": "",
+      "options": {
+        "frameIndex": 2,
+        "showHeader": true,
+        "sortBy": [
+          {
+            "desc": false,
+            "displayName": "PersistentVolumeClaim"
+          }
+        ]
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": " sum by (persistentvolumeclaim,namespace,storageclass,volumename) (kube_persistentvolumeclaim_info{namespace=~\"${k8s_namespace}\"})",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_capacity_bytes{namespace=~\"${k8s_namespace}\"}/1024/1024/1024)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "B"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}/1024/1024/1024)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "C"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_available_bytes{namespace=~\"${k8s_namespace}\"}/1024/1024/1024)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "D"
+        },
+        {
+          "expr": "sum(kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=~\"(Pending|Lost)\"}) by (persistentvolumeclaim) + sum(kube_persistentvolumeclaim_status_phase{namespace=~\"${k8s_namespace}\",phase=~\"(Lost)\"}) by (persistentvolumeclaim)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "E"
+        },
+        {
+          "expr": "sum by (persistentvolumeclaim) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}/kubelet_volume_stats_capacity_bytes{namespace=~\"${k8s_namespace}\"} * 100)",
+          "format": "table",
+          "instant": true,
+          "interval": "",
+          "legendFormat": "",
+          "refId": "F"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "Persistent Volume Claim",
+      "transformations": [
+        {
+          "id": "seriesToColumns",
+          "options": {
+            "byField": "persistentvolumeclaim"
+          }
+        },
+        {
+          "id": "organize",
+          "options": {
+            "excludeByName": {
+              "Time": true,
+              "Time 1": true,
+              "Time 2": true,
+              "Time 3": true,
+              "Time 4": true,
+              "Time 5": true,
+              "Time 6": true,
+              "Value #A": true
+            },
+            "indexByName": {},
+            "renameByName": {
+              "Time 1": "",
+              "Time 2": "",
+              "Time 3": "",
+              "Time 4": "",
+              "Time 5": "",
+              "Time 6": "",
+              "Value #A": "",
+              "Value #B": "Capacity (GiB)",
+              "Value #C": "Used (GiB)",
+              "Value #D": "Available (GiB)",
+              "Value #E": "Status",
+              "Value #F": "Used (%)",
+              "namespace": "Namespace",
+              "persistentvolumeclaim": "PersistentVolumeClaim",
+              "storageclass": "StorageClass",
+              "volumename": "PhysicalVolume"
+            }
+          }
+        }
+      ],
+      "type": "table"
+    },
+    {
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {
+          "custom": {
+            "align": null,
+            "filterable": false
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 5,
+        "w": 24,
+        "x": 0,
+        "y": 22
+      },
+      "id": 7,
+      "options": {
+        "showHeader": true,
+        "sortBy": [
+          {
+            "desc": true,
+            "displayName": "Status"
+          }
+        ]
+      },
+      "pluginVersion": "7.5.17",
+      "targets": [
+        {
+          "expr": "kube_storageclass_info",
+          "format": "table",
+          "interval": "",
+          "legendFormat": "",
+          "refId": "A"
+        }
+      ],
+      "timeFrom": null,
+      "timeShift": null,
+      "title": "Storage Class",
+      "transformations": [
+        {
+          "id": "organize",
+          "options": {
+            "excludeByName": {
+              "Time": true,
+              "Value": true,
+              "__name__": true,
+              "app_kubernetes_io_instance": true,
+              "app_kubernetes_io_name": true,
+              "instance": true,
+              "job": true,
+              "kubernetes_namespace": true,
+              "kubernetes_pod_name": true,
+              "pod_template_hash": true
+            },
+            "indexByName": {
+              "Time": 1,
+              "Value": 13,
+              "__name__": 2,
+              "app_kubernetes_io_instance": 3,
+              "app_kubernetes_io_name": 4,
+              "instance": 5,
+              "job": 6,
+              "kubernetes_namespace": 7,
+              "kubernetes_pod_name": 8,
+              "pod_template_hash": 9,
+              "provisioner": 10,
+              "reclaimPolicy": 11,
+              "storageclass": 0,
+              "volumeBindingMode": 12
+            },
+            "renameByName": {
+              "provisioner": "Provisioner",
+              "reclaimPolicy": "ReclaimPolicy",
+              "storageclass": "StorageClass",
+              "volumeBindingMode": "VolumeBindingMode"
+            }
+          }
+        },
+        {
+          "id": "groupBy",
+          "options": {
+            "fields": {
+              "Provisioner": {
+                "aggregations": [],
+                "operation": "groupby"
+              },
+              "ReclaimPolicy": {
+                "aggregations": [],
+                "operation": "groupby"
+              },
+              "StorageClass": {
+                "aggregations": [],
+                "operation": "groupby"
+              },
+              "VolumeBindingMode": {
+                "aggregations": [],
+                "operation": "groupby"
+              }
+            }
+          }
+        }
+      ],
+      "type": "table"
+    },
+    {
+      "collapsed": false,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 27
+      },
+      "id": 15,
+      "panels": [],
+      "title": "Graphical usage data ",
+      "type": "row"
+    },
+    {
+      "aliasColors": {},
+      "bars": false,
+      "dashLength": 10,
+      "dashes": false,
+      "datasource": null,
+      "fieldConfig": {
+        "defaults": {},
+        "overrides": []
+      },
+      "fill": 0,
+      "fillGradient": 0,
+      "gridPos": {
+        "h": 12,
+        "w": 24,
+        "x": 0,
+        "y": 28
+      },
+      "hiddenSeries": false,
+      "id": 9,
+      "legend": {
+        "alignAsTable": true,
+        "avg": true,
+        "current": true,
+        "max": true,
+        "min": true,
+        "rightSide": true,
+        "show": true,
+        "total": false,
+        "values": true
+      },
+      "lines": true,
+      "linewidth": 1,
+      "nullPointMode": "null",
+      "options": {
+        "alertThreshold": true
+      },
+      "percentage": false,
+      "pluginVersion": "7.5.17",
+      "pointradius": 2,
+      "points": false,
+      "renderer": "flot",
+      "seriesOverrides": [],
+      "spaceLength": 10,
+      "stack": false,
+      "steppedLine": false,
+      "targets": [
+        {
+          "expr": "(max by (persistentvolumeclaim,namespace) (kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}))",
+          "interval": "",
+          "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+          "refId": "A"
+        }
+      ],
+      "thresholds": [],
+      "timeFrom": null,
+      "timeRegions": [],
+      "timeShift": null,
+      "title": "All Running PVCs Used Bytes",
+      "tooltip": {
+        "shared": true,
+        "sort": 2,
+        "value_type": "individual"
+      },
+      "type": "graph",
+      "xaxis": {
+        "buckets": null,
+        "mode": "time",
+        "name": null,
+        "show": true,
+        "values": []
+      },
+      "yaxes": [
+        {
+          "format": "bytes",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        },
+        {
+          "format": "Date & time",
+          "label": null,
+          "logBase": 1,
+          "max": null,
+          "min": null,
+          "show": true
+        }
+      ],
+      "yaxis": {
+        "align": false,
+        "alignLevel": null
+      }
+    },
+    {
+      "collapsed": true,
+      "datasource": null,
+      "gridPos": {
+        "h": 1,
+        "w": 24,
+        "x": 0,
+        "y": 40
+      },
+      "id": 19,
+      "panels": [
+        {
+          "aliasColors": {},
+          "bars": false,
+          "dashLength": 10,
+          "dashes": false,
+          "datasource": null,
+          "fieldConfig": {
+            "defaults": {
+              "custom": {}
+            },
+            "overrides": []
+          },
+          "fill": 0,
+          "fillGradient": 0,
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 41
+          },
+          "hiddenSeries": false,
+          "id": 11,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 1,
+          "nullPointMode": "null",
+          "options": {
+            "alertThreshold": true
+          },
+          "percentage": false,
+          "pluginVersion": "7.2.1",
+          "pointradius": 2,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "spaceLength": 10,
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "rate(kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}[1h])",
+              "instant": false,
+              "interval": "",
+              "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+              "refId": "A"
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeRegions": [],
+          "timeShift": null,
+          "title": "Hourly Volume Usage Rate",
+          "tooltip": {
+            "shared": true,
+            "sort": 2,
+            "value_type": "individual"
+          },
+          "type": "graph",
+          "xaxis": {
+            "buckets": null,
+            "mode": "time",
+            "name": null,
+            "show": true,
+            "values": []
+          },
+          "yaxes": [
+            {
+              "format": "binBps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "Date & time",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            }
+          ],
+          "yaxis": {
+            "align": false,
+            "alignLevel": null
+          }
+        },
+        {
+          "aliasColors": {},
+          "bars": false,
+          "dashLength": 10,
+          "dashes": false,
+          "datasource": null,
+          "fieldConfig": {
+            "defaults": {
+              "custom": {}
+            },
+            "overrides": []
+          },
+          "fill": 0,
+          "fillGradient": 0,
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 48
+          },
+          "hiddenSeries": false,
+          "id": 12,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 1,
+          "nullPointMode": "null",
+          "options": {
+            "alertThreshold": true
+          },
+          "percentage": false,
+          "pluginVersion": "7.2.1",
+          "pointradius": 2,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "spaceLength": 10,
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "rate(kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}[1d])",
+              "interval": "",
+              "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+              "refId": "A"
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeRegions": [],
+          "timeShift": null,
+          "title": "Daily Volume Usage Rate",
+          "tooltip": {
+            "shared": true,
+            "sort": 2,
+            "value_type": "individual"
+          },
+          "type": "graph",
+          "xaxis": {
+            "buckets": null,
+            "mode": "time",
+            "name": null,
+            "show": true,
+            "values": []
+          },
+          "yaxes": [
+            {
+              "format": "binBps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "Date & time",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            }
+          ],
+          "yaxis": {
+            "align": false,
+            "alignLevel": null
+          }
+        },
+        {
+          "aliasColors": {},
+          "bars": false,
+          "dashLength": 10,
+          "dashes": false,
+          "datasource": null,
+          "fieldConfig": {
+            "defaults": {
+              "custom": {}
+            },
+            "overrides": []
+          },
+          "fill": 0,
+          "fillGradient": 0,
+          "gridPos": {
+            "h": 7,
+            "w": 24,
+            "x": 0,
+            "y": 55
+          },
+          "hiddenSeries": false,
+          "id": 13,
+          "legend": {
+            "alignAsTable": true,
+            "avg": true,
+            "current": false,
+            "max": false,
+            "min": false,
+            "rightSide": true,
+            "show": true,
+            "total": false,
+            "values": true
+          },
+          "lines": true,
+          "linewidth": 1,
+          "nullPointMode": "null",
+          "options": {
+            "alertThreshold": true
+          },
+          "percentage": false,
+          "pluginVersion": "7.2.1",
+          "pointradius": 2,
+          "points": false,
+          "renderer": "flot",
+          "seriesOverrides": [],
+          "spaceLength": 10,
+          "stack": false,
+          "steppedLine": false,
+          "targets": [
+            {
+              "expr": "rate(kubelet_volume_stats_used_bytes{namespace=~\"${k8s_namespace}\"}[1w])",
+              "instant": false,
+              "interval": "",
+              "legendFormat": "{{namespace}} ({{persistentvolumeclaim}})",
+              "refId": "A"
+            }
+          ],
+          "thresholds": [],
+          "timeFrom": null,
+          "timeRegions": [],
+          "timeShift": null,
+          "title": "Weekly Volume Usage Rate",
+          "tooltip": {
+            "shared": true,
+            "sort": 2,
+            "value_type": "individual"
+          },
+          "type": "graph",
+          "xaxis": {
+            "buckets": null,
+            "mode": "time",
+            "name": null,
+            "show": true,
+            "values": []
+          },
+          "yaxes": [
+            {
+              "format": "binBps",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            },
+            {
+              "format": "Date & time",
+              "label": null,
+              "logBase": 1,
+              "max": null,
+              "min": null,
+              "show": true
+            }
+          ],
+          "yaxis": {
+            "align": false,
+            "alignLevel": null
+          }
+        }
+      ],
+      "title": "Usage Rate",
+      "type": "row"
+    }
+  ],
+  "refresh": "1m",
+  "schemaVersion": 27,
+  "style": "dark",
+  "tags": [],
+  "templating": {
+    "list": [
+      {
+        "current": {
+          "selected": false,
+          "text": "Prometheus",
+          "value": "Prometheus"
+        },
+        "description": null,
+        "error": null,
+        "hide": 0,
+        "includeAll": false,
+        "label": "Datasource",
+        "multi": false,
+        "name": "datasource",
+        "options": [],
+        "query": "prometheus",
+        "queryValue": "",
+        "refresh": 1,
+        "regex": "",
+        "skipUrlSync": false,
+        "type": "datasource"
+      },
+      {
+        "allValue": ".*",
+        "current": {
+          "selected": false,
+          "text": "All",
+          "value": "$__all"
+        },
+        "datasource": null,
+        "definition": "label_values(namespace)",
+        "description": null,
+        "error": null,
+        "hide": 0,
+        "includeAll": true,
+        "label": "Namespace",
+        "multi": true,
+        "name": "k8s_namespace",
+        "options": [],
+        "query": {
+          "query": "label_values(namespace)",
+          "refId": "Prometheus-k8s_namespace-Variable-Query"
+        },
+        "refresh": 2,
+        "regex": "",
+        "skipUrlSync": false,
+        "sort": 1,
+        "tagValuesQuery": "",
+        "tags": [],
+        "tagsQuery": "",
+        "type": "query",
+        "useTags": false
+      },
+      {
+        "current": {
+          "selected": false,
+          "text": "80",
+          "value": "80"
+        },
+        "description": null,
+        "error": null,
+        "hide": 2,
+        "label": "PVC % Used Warning Threshold",
+        "name": "warning_threshold",
+        "options": [
+          {
+            "selected": true,
+            "text": "80",
+            "value": "80"
+          }
+        ],
+        "query": "80",
+        "skipUrlSync": false,
+        "type": "textbox"
+      }
+    ]
+  },
+  "time": {
+    "from": "now-24h",
+    "to": "now"
+  },
+  "timepicker": {},
+  "timezone": "",
+  "title": "kubernetes-persistent-volumes-enhanced",
+  "uid": "peR80gTGk",
+  "version": 3
+}
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/performance/kustomization.yaml b/components/monitoring/grafana/base/performance/kustomization.yaml
new file mode 100644
index 00000000..6b99c60c
--- /dev/null
+++ b/components/monitoring/grafana/base/performance/kustomization.yaml
@@ -0,0 +1,11 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - dashboard.yaml
+configMapGenerator:
+  - name: performance-team-cluster-monitoring
+    files:
+      - dashboards/kubernetes-cluster-monitoring.json
+  - name: kubernetes-persistent-volumes
+    files:
+      - dashboards/kubernetes-persistent-volumes.json 
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

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-9f9200ac/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-9f9200ac/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-9f9200ac/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-9f9200ac/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from e640d6e1 to 97c6d108 on Mon May 29 07:56:19 2023 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index d8857467..b3446a4d 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,11 +1,11 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e2e987ef8f06fd48141055f2ed8ce0b93c5dbb16
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=a41e43e69bd85dfb881fc0b5d34a76462de2d29d
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e2e987ef8f06fd48141055f2ed8ce0b93c5dbb16
+  newTag: a41e43e69bd85dfb881fc0b5d34a76462de2d29d
 
 namespace: image-controller
  
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

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/build-service/staging/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/dora-metrics/staging/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/quality-dashboard/staging/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "kube-rbac-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/staging/components/sprayproxy/staging/kustomize.out.yaml: (object: sprayproxy/sprayproxy apps/v1, Kind=Deployment) container "sprayproxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from e640d6e1 to 97c6d108 on Mon May 29 07:56:19 2023 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index d8857467..b3446a4d 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,11 +1,11 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e2e987ef8f06fd48141055f2ed8ce0b93c5dbb16
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=a41e43e69bd85dfb881fc0b5d34a76462de2d29d
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e2e987ef8f06fd48141055f2ed8ce0b93c5dbb16
+  newTag: a41e43e69bd85dfb881fc0b5d34a76462de2d29d
 
 namespace: image-controller
  
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

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-appstudio-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-core-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-service-agent-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) The container "gitops-postgresql-staging" is using an invalid container image, "registry.redhat.io/rhel8/postgresql-13". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/gitops/development/kustomize.out.yaml: (object: gitops/gitops-postgresql-staging-postgresql apps/v1, Kind=StatefulSet) container "gitops-postgresql-staging" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is Privileged and allows privilege escalation. (check: privilege-escalation-container, remediation: Ensure containers do not allow privilege escalation by setting allowPrivilegeEscalation=false." See https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for more details.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is privileged (check: privileged-container, remediation: Do not run your container as privileged unless it is required.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) host system directory "/dev" is mounted on container "hostpath" (check: sensitive-host-mounts, remediation: Ensure sensitive host system directories are not mounted in containers by removing those Volumes and VolumeMounts.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "node-driver-registrar" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/shared-resources/kustomize.out.yaml: (object: openshift-cluster-csi-drivers/shared-resource-csi-driver-node apps/v1, Kind=DaemonSet) container "hostpath" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/development/components/build-service/development/kustomize.out.yaml: (object: build-service/build-service-controller-manager apps/v1, Kind=Deployment) container "kube-rbac-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/jvm-build-service/kustomize.out.yaml: (object: jvm-build-service/hacbs-jvm-operator apps/v1, Kind=Deployment) container "hacbs-jvm-operator" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/pipeline-metrics-exporter apps/v1, Kind=Deployment) container "pipeline-metrics-exporter" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) environment variable TLS_SECRET_NAME in container "pac-controller" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-controller apps/v1, Kind=Deployment) container "pac-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-watcher apps/v1, Kind=Deployment) container "pac-watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) environment variable WEBHOOK_SECRET_NAME in container "pac-webhook" found (check: env-var-secret, remediation: Do not use raw secrets in environment variables. Instead, either mount the secret as a file or use a secretKeyRef. Refer to https://kubernetes.io/docs/concepts/configuration/secret/#using-secrets for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: pipelines-as-code/pipelines-as-code-webhook apps/v1, Kind=Deployment) container "pac-webhook" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) The container "link-shared-secret" is using an invalid container image, "registry.redhat.io/ubi8:latest". Please use images that are not blocked by the `BlockList` criteria : [".*:(latest)$" "^[^:]*$" "(.*/[^:]+)$"] (check: latest-tag, remediation: Use a container image with a specific tag other than latest.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "link-shared-secret" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-controller apps/v1, Kind=Deployment) container "tekton-chains-controller" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "mc" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "migrator" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-api apps/v1, Kind=Deployment) container "api" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/chains-certs-configuration batch/v1, Kind=Job) container "patch-chains-certs" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-signing-secret batch/v1, Kind=Job) container "chains-secret-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/pipeline-service/development/kustomize.out.yaml: (object: tekton-chains/tekton-chains-trusted-cabundle batch/v1, Kind=Job) container "config-trusted-cabundle-generation" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-97c6d108/development/components/dora-metrics/development/kustomize.out.yaml: (object: dora-metrics/exporter apps/v1, Kind=Deployment) container "container" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/cluster-registration/kustomize.out.yaml: (object: cluster-reg-config/cluster-registration-installer-controller-manager apps/v1, Kind=Deployment) container "installer" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-97c6d108/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-backend-dashboard apps/v1, Kind=Deployment) container "quality-backend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-97c6d108/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "dashboard-proxy" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

./commit-97c6d108/development/components/quality-dashboard/development/kustomize.out.yaml: (object: <no namespace>/quality-frontend-dashboard apps/v1, Kind=Deployment) container "quality-frontend-dashboard" is not set to runAsNonRoot (check: run-as-non-root, remediation: Set runAsUser to a non-zero number and runAsNonRoot to true in your pod or container securityContext. Refer to https://kubernetes.io/docs/tasks/configure-pod-container/security-context/ for details.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>
