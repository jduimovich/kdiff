# kustomize changes tracked by commits 
### This file generated at Mon Jan 29 08:03:12 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b6dee9bd to 8acd3d07 on Mon Jan 29 05:32:11 2024 </h3>  
 
<details> 
<summary>Git Diff (2863 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml
new file mode 100644
index 00000000..582ad282
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/production-downstream
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml
new file mode 100644
index 00000000..3a6a7a60
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: argocd
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..739eef22
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: argocd
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 8d5eae62..46d6bfa2 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -29,6 +29,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stg-p01
                   values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index 158a8fce..c5941de9 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index fb610eb6..b0c47116 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index b4cf2244..9f8ede76 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index f14d9107..b0ec9c7b 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 191ec15e..f84230ea 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
new file mode 100644
index 00000000..09828f01
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -0,0 +1,32 @@
+---
+# Github authentication/authorization isn't used downstream
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: authentication
+$patch: delete
+---
+# Downstream deployment has the host and member operators deployed on the same cluster
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: sprayproxy
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: backup
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ingresscontroller
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..d2f2a0f9
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -0,0 +1,145 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../staging
+  - ../../base/smee-client
+  - ../../base/ui
+patchesStrategicMerge:
+  - delete-applications.yaml
+namespace: argocd
+patches:
+  - path: production-downstream-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: gitops
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: pipeline-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-templates
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: has
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spi
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: remote-secret-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: dora-metrics
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: authentication
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: image-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-prometheus
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: external-secrets-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-grafana
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-host
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-member
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-host-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-member-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store-rh
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: backup
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: integration
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: smee
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
diff --git a/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml b/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml
new file mode 100644
index 00000000..eaca1157
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production-downstream
diff --git a/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml b/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml
new file mode 100644
index 00000000..15963445
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production
diff --git a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
new file mode 100644
index 00000000..4d64d807
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
@@ -0,0 +1,14 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        env:
+          - name: PAC_WEBHOOK_URL
+            value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
+
diff --git a/components/build-service/production/stone-prod-p01/kustomization.yaml b/components/build-service/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..b7362bc8
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: add-webhook-target-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+components:
+  - ../../components/rh-certs
+
diff --git a/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..2d3e5d7f
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p01/github-app
diff --git a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..9734976b
--- /dev/null
+++ b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p01/kustomization.yaml b/components/gitops/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml b/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..48ab78ef
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-prod-p01
diff --git a/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml b/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
new file mode 100644
index 00000000..1d5d5421
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -0,0 +1,22 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-arch-controller-ssh-key-internal
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
new file mode 100644
index 00000000..5b4263be
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data: {}
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..edfa9ff5
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- host-config.yaml
+- external-secrets.yaml
+
+namespace: multi-platform-controller
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
new file mode 100644
index 00000000..0136d41d
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -0,0 +1,1974 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  - resolution.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.webhook: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "sampling": {
+        "initial": 100,
+        "thereafter": 100
+      },
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/component: resolvers
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-pipelines
+    operator.tekton.dev/operand-name: tektoncd-pipelines
+  name: config-logging
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=disable
+    DB_SSLROOTCERT=
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args: []
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 250m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 100m
+            memory: 512Mi
+          requests:
+            cpu: 5m
+            memory: 128Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -check_owner=false
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 3Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p01/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: beta
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    performance:
+      buckets: 4
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 2
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        settings:
+          application-name: Konflux Production Internal
+          custom-console-name: Konflux Production Internal
+          custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+  profile: all
+  pruner:
+    disabled: true
+  targetNamespace: openshift-pipelines
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: pipelines-1.13
+  name: openshift-pipelines-operator-rh
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/production/stone-prod-p01/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..005a25ee
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6bf18923
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/github-app
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..48666d02
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..985667a2
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..81ba87d5
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Production Internal
+    custom-console-name: Konflux Production Internal
+    custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..ff32be77
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
new file mode 100644
index 00000000..b21ad970
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/rs-p01"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/smee-client/deployment.yaml b/components/smee-client/base/deployment.yaml
similarity index 88%
rename from components/smee-client/deployment.yaml
rename to components/smee-client/base/deployment.yaml
index 95cc81b3..a41a4444 100644
--- a/components/smee-client/deployment.yaml
+++ b/components/smee-client/base/deployment.yaml
@@ -19,7 +19,7 @@ spec:
           name: gosmee
           args:
             - "client"
-            - "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+            - TBA
             - "http://pipelines-as-code-controller.openshift-pipelines:8080"
           securityContext:
             readOnlyRootFilesystem: true
diff --git a/components/smee-client/kustomization.yaml b/components/smee-client/base/kustomization.yaml
similarity index 100%
rename from components/smee-client/kustomization.yaml
rename to components/smee-client/base/kustomization.yaml
diff --git a/components/smee-client/production/kustomization.yaml b/components/smee-client/production/kustomization.yaml
new file mode 100644
index 00000000..3512dbba
--- /dev/null
+++ b/components/smee-client/production/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/sever-url-patch.yaml b/components/smee-client/production/sever-url-patch.yaml
new file mode 100644
index 00000000..8ea9a9e8
--- /dev/null
+++ b/components/smee-client/production/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
diff --git a/components/smee-client/staging/kustomization.yaml b/components/smee-client/staging/kustomization.yaml
new file mode 100644
index 00000000..3512dbba
--- /dev/null
+++ b/components/smee-client/staging/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/staging/sever-url-patch.yaml b/components/smee-client/staging/sever-url-patch.yaml
new file mode 100644
index 00000000..a454bcfe
--- /dev/null
+++ b/components/smee-client/staging/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12
diff --git a/components/spi/overlays/production/stone-prod-p01/config-patch.json b/components/spi/overlays/production/stone-prod-p01/config-patch.json
new file mode 100644
index 00000000..0d3de7c9
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/spi-p01"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..57e2e586
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
new file mode 100644
index 00000000..e0595592
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..ff32be77
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..3490a5ea
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/spi/p01/shared-configuration-file
diff --git a/components/ui/README.md b/components/ui/README.md
index 6697cecf..b670607b 100644
--- a/components/ui/README.md
+++ b/components/ui/README.md
@@ -30,3 +30,9 @@ It's required to customize the manifests before deploying them. Two customizatio
 1. Updating the hostname that will be used for the routes.
 
 2. Creating a `fed-modules.json` file that configures the frontend. **Important**: this file contains the `Keycloak` endpoint that will be used for authentication.
+
+**Note**: To display the default ingress domain run:
+
+```bash
+oc get ingresses.config/cluster -o jsonpath={.spec.domain}
+```
diff --git a/components/ui/production/fed-modules.json b/components/ui/production/fed-modules.json
new file mode 100644
index 00000000..663d2d90
--- /dev/null
+++ b/components/ui/production/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
new file mode 100644
index 00000000..70a1e86e
--- /dev/null
+++ b/components/ui/production/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: 9ddfec6
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 457001e
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: 7932b2a   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/production/set-hostname.yaml b/components/ui/production/set-hostname.yaml
new file mode 100644
index 00000000..9abdcd98
--- /dev/null
+++ b/components/ui/production/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-b6dee9bd/production/app-of-apps-production.yaml
155,156d154
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
589,590d586
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1017,1018d1012
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1165,1166d1158
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1267,1268d1258
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1510,1511d1499
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
./commit-8acd3d07/production/components: build-service
./commit-8acd3d07/production/components/gitops/production: stone-prod-p01
./commit-8acd3d07/production/components/pipeline-service/production: stone-prod-p01
./commit-b6dee9bd/production/components/smee-client: kustomize.out.yaml
./commit-8acd3d07/production/components/smee-client: production
./commit-8acd3d07/production/components: ui 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from b6dee9bd to 8acd3d07 on Mon Jan 29 05:32:11 2024 </h3>  
 
<details> 
<summary>Git Diff (2863 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml
new file mode 100644
index 00000000..582ad282
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/production-downstream
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml
new file mode 100644
index 00000000..3a6a7a60
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: argocd
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..739eef22
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: argocd
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 8d5eae62..46d6bfa2 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -29,6 +29,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stg-p01
                   values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index 158a8fce..c5941de9 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index fb610eb6..b0c47116 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index b4cf2244..9f8ede76 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index f14d9107..b0ec9c7b 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 191ec15e..f84230ea 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
new file mode 100644
index 00000000..09828f01
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -0,0 +1,32 @@
+---
+# Github authentication/authorization isn't used downstream
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: authentication
+$patch: delete
+---
+# Downstream deployment has the host and member operators deployed on the same cluster
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: sprayproxy
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: backup
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ingresscontroller
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..d2f2a0f9
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -0,0 +1,145 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../staging
+  - ../../base/smee-client
+  - ../../base/ui
+patchesStrategicMerge:
+  - delete-applications.yaml
+namespace: argocd
+patches:
+  - path: production-downstream-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: gitops
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: pipeline-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-templates
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: has
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spi
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: remote-secret-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: dora-metrics
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: authentication
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: image-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-prometheus
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: external-secrets-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-grafana
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-host
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-member
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-host-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-member-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store-rh
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: backup
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: integration
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: smee
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
diff --git a/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml b/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml
new file mode 100644
index 00000000..eaca1157
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production-downstream
diff --git a/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml b/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml
new file mode 100644
index 00000000..15963445
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production
diff --git a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
new file mode 100644
index 00000000..4d64d807
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
@@ -0,0 +1,14 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        env:
+          - name: PAC_WEBHOOK_URL
+            value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
+
diff --git a/components/build-service/production/stone-prod-p01/kustomization.yaml b/components/build-service/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..b7362bc8
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: add-webhook-target-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+components:
+  - ../../components/rh-certs
+
diff --git a/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..2d3e5d7f
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p01/github-app
diff --git a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..9734976b
--- /dev/null
+++ b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p01/kustomization.yaml b/components/gitops/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml b/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..48ab78ef
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-prod-p01
diff --git a/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml b/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
new file mode 100644
index 00000000..1d5d5421
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -0,0 +1,22 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-arch-controller-ssh-key-internal
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
new file mode 100644
index 00000000..5b4263be
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data: {}
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..edfa9ff5
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- host-config.yaml
+- external-secrets.yaml
+
+namespace: multi-platform-controller
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
new file mode 100644
index 00000000..0136d41d
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -0,0 +1,1974 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  - resolution.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.webhook: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "sampling": {
+        "initial": 100,
+        "thereafter": 100
+      },
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/component: resolvers
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-pipelines
+    operator.tekton.dev/operand-name: tektoncd-pipelines
+  name: config-logging
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=disable
+    DB_SSLROOTCERT=
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args: []
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 250m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 100m
+            memory: 512Mi
+          requests:
+            cpu: 5m
+            memory: 128Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -check_owner=false
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 3Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p01/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: beta
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    performance:
+      buckets: 4
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 2
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        settings:
+          application-name: Konflux Production Internal
+          custom-console-name: Konflux Production Internal
+          custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+  profile: all
+  pruner:
+    disabled: true
+  targetNamespace: openshift-pipelines
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: pipelines-1.13
+  name: openshift-pipelines-operator-rh
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/production/stone-prod-p01/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..005a25ee
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6bf18923
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/github-app
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..48666d02
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..985667a2
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..81ba87d5
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Production Internal
+    custom-console-name: Konflux Production Internal
+    custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..ff32be77
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
new file mode 100644
index 00000000..b21ad970
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/rs-p01"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/smee-client/deployment.yaml b/components/smee-client/base/deployment.yaml
similarity index 88%
rename from components/smee-client/deployment.yaml
rename to components/smee-client/base/deployment.yaml
index 95cc81b3..a41a4444 100644
--- a/components/smee-client/deployment.yaml
+++ b/components/smee-client/base/deployment.yaml
@@ -19,7 +19,7 @@ spec:
           name: gosmee
           args:
             - "client"
-            - "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+            - TBA
             - "http://pipelines-as-code-controller.openshift-pipelines:8080"
           securityContext:
             readOnlyRootFilesystem: true
diff --git a/components/smee-client/kustomization.yaml b/components/smee-client/base/kustomization.yaml
similarity index 100%
rename from components/smee-client/kustomization.yaml
rename to components/smee-client/base/kustomization.yaml
diff --git a/components/smee-client/production/kustomization.yaml b/components/smee-client/production/kustomization.yaml
new file mode 100644
index 00000000..3512dbba
--- /dev/null
+++ b/components/smee-client/production/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/sever-url-patch.yaml b/components/smee-client/production/sever-url-patch.yaml
new file mode 100644
index 00000000..8ea9a9e8
--- /dev/null
+++ b/components/smee-client/production/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
diff --git a/components/smee-client/staging/kustomization.yaml b/components/smee-client/staging/kustomization.yaml
new file mode 100644
index 00000000..3512dbba
--- /dev/null
+++ b/components/smee-client/staging/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/staging/sever-url-patch.yaml b/components/smee-client/staging/sever-url-patch.yaml
new file mode 100644
index 00000000..a454bcfe
--- /dev/null
+++ b/components/smee-client/staging/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12
diff --git a/components/spi/overlays/production/stone-prod-p01/config-patch.json b/components/spi/overlays/production/stone-prod-p01/config-patch.json
new file mode 100644
index 00000000..0d3de7c9
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/spi-p01"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..57e2e586
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
new file mode 100644
index 00000000..e0595592
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..ff32be77
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..3490a5ea
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/spi/p01/shared-configuration-file
diff --git a/components/ui/README.md b/components/ui/README.md
index 6697cecf..b670607b 100644
--- a/components/ui/README.md
+++ b/components/ui/README.md
@@ -30,3 +30,9 @@ It's required to customize the manifests before deploying them. Two customizatio
 1. Updating the hostname that will be used for the routes.
 
 2. Creating a `fed-modules.json` file that configures the frontend. **Important**: this file contains the `Keycloak` endpoint that will be used for authentication.
+
+**Note**: To display the default ingress domain run:
+
+```bash
+oc get ingresses.config/cluster -o jsonpath={.spec.domain}
+```
diff --git a/components/ui/production/fed-modules.json b/components/ui/production/fed-modules.json
new file mode 100644
index 00000000..663d2d90
--- /dev/null
+++ b/components/ui/production/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
new file mode 100644
index 00000000..70a1e86e
--- /dev/null
+++ b/components/ui/production/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: 9ddfec6
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 457001e
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: 7932b2a   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/production/set-hostname.yaml b/components/ui/production/set-hostname.yaml
new file mode 100644
index 00000000..9abdcd98
--- /dev/null
+++ b/components/ui/production/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-b6dee9bd/staging/app-of-apps-staging.yaml
155,156d154
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
543,544d540
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
971,972d966
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1119,1120d1112
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1221,1222d1212
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1427,1428d1416
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
./commit-b6dee9bd/staging/components/smee-client: kustomize.out.yaml
./commit-8acd3d07/staging/components/smee-client: staging 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from b6dee9bd to 8acd3d07 on Mon Jan 29 05:32:11 2024 </h3>  
 
<details> 
<summary>Git Diff (2863 lines)</summary>  

``` 
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml
new file mode 100644
index 00000000..582ad282
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/change-source-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/source/path
+  value: argo-cd-apps/overlays/production-downstream
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml
new file mode 100644
index 00000000..3a6a7a60
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/change-target-namespace.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/destination/namespace
+  value: argocd
diff --git a/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml b/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..739eef22
--- /dev/null
+++ b/argo-cd-apps/app-of-app-sets/production-downstream/kustomization.yaml
@@ -0,0 +1,16 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: change-source-path.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+  - path: change-target-namespace.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: Application
+namespace: argocd
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index 8d5eae62..46d6bfa2 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -29,6 +29,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stg-p01
                   values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: monitoring-workload-prometheus-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index 158a8fce..c5941de9 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: build-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index fb610eb6..b0c47116 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: gitops-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index b4cf2244..9f8ede76 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: pipeline-service-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index f14d9107..b0ec9c7b 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 191ec15e..f84230ea 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -25,6 +25,8 @@ spec:
                   values.clusterDir: stone-prd-rh01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: spi-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
new file mode 100644
index 00000000..09828f01
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -0,0 +1,32 @@
+---
+# Github authentication/authorization isn't used downstream
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: authentication
+$patch: delete
+---
+# Downstream deployment has the host and member operators deployed on the same cluster
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: sprayproxy
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: smee
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: backup
+$patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ingresscontroller
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..d2f2a0f9
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -0,0 +1,145 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../staging
+  - ../../base/smee-client
+  - ../../base/ui
+patchesStrategicMerge:
+  - delete-applications.yaml
+namespace: argocd
+patches:
+  - path: production-downstream-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: gitops
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: pipeline-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-service
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: build-templates
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: has
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: spi
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: remote-secret-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: dora-metrics
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: authentication
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tekton-ci
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: image-controller
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-logging
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-prometheus
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: external-secrets-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: monitoring-workload-grafana
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-host
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: segment-bridge-member
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-host-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: toolchain-member-operator
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: cluster-secret-store-rh
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: release
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: backup
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: integration
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: smee
+  - path: production-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ui
diff --git a/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml b/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml
new file mode 100644
index 00000000..eaca1157
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/production-downstream-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production-downstream
diff --git a/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml b/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml
new file mode 100644
index 00000000..15963445
--- /dev/null
+++ b/argo-cd-apps/overlays/production-downstream/production-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: production
diff --git a/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
new file mode 100644
index 00000000..4d64d807
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/add-webhook-target-patch.yaml
@@ -0,0 +1,14 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        env:
+          - name: PAC_WEBHOOK_URL
+            value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
+
diff --git a/components/build-service/production/stone-prod-p01/kustomization.yaml b/components/build-service/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..b7362bc8
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,18 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: add-webhook-target-patch.yaml
+    target:
+      name: build-service-controller-manager
+      kind: Deployment
+components:
+  - ../../components/rh-certs
+
diff --git a/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..2d3e5d7f
--- /dev/null
+++ b/components/build-service/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p01/github-app
diff --git a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
new file mode 100644
index 00000000..9734976b
--- /dev/null
+++ b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p01/kustomization.yaml b/components/gitops/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..92c671c3
--- /dev/null
+++ b/components/gitops/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,13 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- ../base
+
+patches:
+  - path: gitops-service-postgres-rds-config-path.yaml
+    target:
+      name: gitops-service-postgres-rds-config
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml b/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..48ab78ef
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: stone-prod-p01
diff --git a/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml b/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,12 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+
+patches:
+  - path: cluster-id-label.yaml
+    target:
+      name: appstudio-federate-ms
+      kind: MonitoringStack
+      group: monitoring.rhobs
+      version: v1alpha1
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
new file mode 100644
index 00000000..1d5d5421
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -0,0 +1,22 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-arch-controller-ssh-key-internal
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
new file mode 100644
index 00000000..5b4263be
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -0,0 +1,8 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data: {}
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
new file mode 100644
index 00000000..edfa9ff5
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- host-config.yaml
+- external-secrets.yaml
+
+namespace: multi-platform-controller
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
new file mode 100644
index 00000000..0136d41d
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -0,0 +1,1974 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: plnsvc-tests
+---
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - create
+  - get
+  - update
+  - patch
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: Role
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - tekton-results-info
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - describe
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+rules:
+- apiGroups:
+  - monitoring.coreos.com
+  resources:
+  - servicemonitors
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - operator.tekton.dev
+  resources:
+  - tektonconfigs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - security.openshift.io
+  resources:
+  - securitycontextconstraints
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - pac-secret-manager
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+- apiGroups:
+  - batch
+  resources:
+  - cronjobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+rules:
+- apiGroups:
+  - batch
+  resources:
+  - jobs
+  verbs:
+  - get
+  - list
+  - patch
+  - create
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  verbs:
+  - list
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  - services
+  - namespaces
+  - endpoints
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - apiextensions.k8s.io
+  resources:
+  - customresourcedefinitions
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - watch
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - list
+  - delete
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - clusterresourcequotas
+  verbs:
+  - list
+  - get
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resourceNames:
+  - appstudio-pipeline
+  resources:
+  - serviceaccounts
+  verbs:
+  - get
+  - list
+- apiGroups:
+  - pipelinesascode.tekton.dev
+  - results.tekton.dev
+  - tekton.dev
+  - triggers.tekton.dev
+  - resolution.tekton.dev
+  resources:
+  - '*'
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - patch
+  - update
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - metrics.k8s.io
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - public-key
+  resources:
+  - secrets
+  verbs:
+  - get
+  - list
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-admin: "true"
+  name: tekton-results-admin
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+  - delete
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+    rbac.authorization.k8s.io/aggregate-to-edit: "true"
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: tekton-results-readonly
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-readwrite
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - results
+  - records
+  - logs
+  verbs:
+  - create
+  - update
+  - get
+  - list
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+rules:
+- apiGroups:
+  - results.tekton.dev
+  resources:
+  - logs
+  - results
+  - records
+  verbs:
+  - create
+  - get
+  - update
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  - taskruns
+  verbs:
+  - get
+  - list
+  - patch
+  - update
+  - watch
+  - delete
+- apiGroups:
+  - ""
+  resources:
+  - configmaps
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - ""
+  resources:
+  - pods/log
+  verbs:
+  - get
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelines
+  verbs:
+  - get
+- apiGroups:
+  - coordination.k8s.io
+  resources:
+  - leases
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+rules:
+- apiGroups:
+  - authentication.k8s.io
+  resources:
+  - tokenreviews
+  verbs:
+  - create
+- apiGroups:
+  - authorization.k8s.io
+  resources:
+  - subjectaccessreviews
+  verbs:
+  - create
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: chains-secret-admin
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: chains-secret-admin
+subjects:
+- kind: ServiceAccount
+  name: chains-secrets-admin
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-chains-public-key-viewer
+  namespace: openshift-pipelines
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-chains-public-key-viewer
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-admin
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre-ns-edit
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: edit
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: tekton-results-info
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-readonly
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-tests
+  namespace: plnsvc-tests
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-apply-tekton-config-parameters
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-apply-tekton-config-parameters
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-cronjobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-cronjobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-gitops-jobs-admin
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: openshift-gitops-jobs-admin
+subjects:
+- kind: ServiceAccount
+  name: openshift-gitops-argocd-application-controller
+  namespace: openshift-gitops
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-manager
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pac-secret-manager
+subjects:
+- kind: ServiceAccount
+  name: pac-secret-manager
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-reader-binding
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-reader
+subjects:
+- kind: ServiceAccount
+  name: pipeline-service-exporter
+  namespace: openshift-pipelines
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pipeline-service-sre
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-sre
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: prometheus-tekton-results-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-api
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-api
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-logs
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-admin
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher-rbac
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: tekton-results-watcher-rbac
+subjects:
+- kind: ServiceAccount
+  name: tekton-results-watcher
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.webhook: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "sampling": {
+        "initial": 100,
+        "thereafter": 100
+      },
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/component: resolvers
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-pipelines
+    operator.tekton.dev/operand-name: tektoncd-pipelines
+  name: config-logging
+  namespace: openshift-pipelines
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=disable
+    DB_SSLROOTCERT=
+    DB_ENABLE_AUTO_MIGRATION=true
+    SERVER_PORT=8080
+    PROMETHEUS_PORT=9090
+    PROMETHEUS_HISTOGRAM=true
+    TLS_PATH=/etc/tls
+    AUTH_DISABLE=false
+    AUTH_IMPERSONATE=true
+    LOG_LEVEL=info
+    LOGS_API=false
+    LOGS_TYPE=File
+    LOGS_BUFFER_SIZE=5242880
+    LOGS_PATH=/logs
+    S3_BUCKET_NAME=
+    S3_ENDPOINT=
+    S3_HOSTNAME_IMMUTABLE=false
+    S3_REGION=
+    S3_ACCESS_KEY_ID=
+    S3_SECRET_ACCESS_KEY=
+    S3_MULTI_PART_SIZE=5242880
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-config
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+    # lease-duration is how long non-leaders will wait to try to acquire the
+    # lock; 15 seconds is the value used by core kubernetes controllers.
+    lease-duration: "60s"
+    # renew-deadline is how long a leader will try to renew the lease before
+    # giving up; 10 seconds is the value used by core kubernetes controllers.
+    renew-deadline: "40s"
+    # retry-period is how long the leader election client waits between tries of
+    # actions; 2 seconds is the value used by core kubernetes controllers.
+    retry-period: "10s"
+    # buckets is the number of buckets used to partition key space of each
+    # Reconciler. If this number is M and the replica number of the controller
+    # is N, the N replicas will compete for the M buckets. The owner of a
+    # bucket will take care of the reconciling for the keys partitioned into
+    # that bucket.
+    buckets: "1"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-leader-election
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-leader-election
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  loglevel.controller: info
+  loglevel.watcher: info
+  zap-logger-config: |
+    {
+      "level": "info",
+      "development": false,
+      "outputPaths": ["stdout"],
+      "errorOutputPaths": ["stderr"],
+      "encoding": "json",
+      "encoderConfig": {
+        "timeKey": "ts",
+        "levelKey": "level",
+        "nameKey": "logger",
+        "callerKey": "caller",
+        "messageKey": "msg",
+        "stacktraceKey": "stacktrace",
+        "lineEnding": "",
+        "levelEncoder": "",
+        "timeEncoder": "iso8601",
+        "durationEncoder": "string",
+        "callerEncoder": ""
+      }
+    }
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app.kubernetes.io/name: tekton-results-logging
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-logging
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  _example: |
+    ################################
+    #                              #
+    #    EXAMPLE CONFIGURATION     #
+    #                              #
+    ################################
+
+    # This block is not actually functional configuration,
+    # but serves to illustrate the available configuration
+    # options and document them in a way that is accessible
+    # to users that `kubectl edit` this config map.
+    #
+    # These sample configuration options may be copied out of
+    # this example block and unindented to be in the data block
+    # to actually change the configuration.
+
+    # metrics.backend-destination field specifies the system metrics destination.
+    # It supports either prometheus (the default) or stackdriver.
+    # Note: Using Stackdriver will incur additional charges.
+    metrics.backend-destination: prometheus
+
+    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
+    # field is optional. When running on GCE, application default credentials will be
+    # used and metrics will be sent to the cluster's project if this field is
+    # not provided.
+    metrics.stackdriver-project-id: "<your stackdriver project id>"
+
+    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
+    # to send metrics to Stackdriver using "global" resource type and custom
+    # metric type. Setting this flag to "true" could cause extra Stackdriver
+    # charge.  If metrics.backend-destination is not Stackdriver, this is
+    # ignored.
+    metrics.allow-stackdriver-custom-metrics: "false"
+    metrics.taskrun.level: "task"
+    metrics.taskrun.duration-type: "histogram"
+    metrics.pipelinerun.level: "pipeline"
+    metrics.pipelinerun.duration-type: "histogram"
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-observability
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-observability
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  version: devel
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-info
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-info
+  namespace: tekton-results
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    kubernetes.io/service-account.name: metrics-reader
+  name: metrics-reader
+  namespace: tekton-results
+type: kubernetes.io/service-account-token
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  labels:
+    app: pipeline-metrics-exporter
+  name: pipeline-metrics-exporter-service
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9117
+    protocol: TCP
+    targetPort: 9117
+  selector:
+    app: pipeline-metrics-exporter
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
+  labels:
+    app: tekton-chains-controller
+    app.kubernetes.io/component: metrics
+    app.kubernetes.io/part-of: tekton-chains
+  name: tekton-chains
+  namespace: openshift-pipelines
+spec:
+  ports:
+  - name: metrics
+    port: 9090
+    protocol: TCP
+    targetPort: 9090
+  selector:
+    app.kubernetes.io/component: controller
+    app.kubernetes.io/instance: default
+    app.kubernetes.io/part-of: tekton-chains
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api-service
+  namespace: tekton-results
+spec:
+  ports:
+  - name: server
+    port: 8080
+    protocol: TCP
+    targetPort: 8080
+  - name: metrics
+    port: 9443
+    protocol: TCP
+    targetPort: metrics
+  selector:
+    app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: v1
+kind: Service
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  ports:
+  - name: watchermetrics
+    port: 8443
+    targetPort: watchermetrics
+  - name: profiling
+    port: 8008
+  selector:
+    app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-metrics-exporter
+  namespace: openshift-pipelines
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+      labels:
+        app: pipeline-metrics-exporter
+    spec:
+      containers:
+      - args: []
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 1Gi
+          requests:
+            cpu: 250m
+            memory: 128Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      restartPolicy: Always
+      serviceAccountName: pipeline-service-exporter
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  labels:
+    app.kubernetes.io/name: tekton-results-api
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-api
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:9443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 9443
+          name: metrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - env:
+        - name: LOGS_API
+          value: "true"
+        - name: LOGS_TYPE
+          value: S3
+        - name: S3_HOSTNAME_IMMUTABLE
+          value: "true"
+        - name: S3_ACCESS_KEY_ID
+          valueFrom:
+            secretKeyRef:
+              key: aws_access_key_id
+              name: tekton-results-s3
+        - name: S3_SECRET_ACCESS_KEY
+          valueFrom:
+            secretKeyRef:
+              key: aws_secret_access_key
+              name: tekton-results-s3
+        - name: S3_REGION
+          valueFrom:
+            secretKeyRef:
+              key: aws_region
+              name: tekton-results-s3
+        - name: S3_BUCKET_NAME
+          valueFrom:
+            secretKeyRef:
+              key: bucket
+              name: tekton-results-s3
+        - name: S3_ENDPOINT
+          valueFrom:
+            secretKeyRef:
+              key: endpoint
+              name: tekton-results-s3
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        livenessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        name: api
+        readinessProbe:
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        resources:
+          limits:
+            cpu: 100m
+            memory: 512Mi
+          requests:
+            cpu: 5m
+            memory: 128Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        startupProbe:
+          failureThreshold: 10
+          httpGet:
+            path: /healthz
+            port: 8080
+            scheme: HTTPS
+          initialDelaySeconds: 5
+          periodSeconds: 10
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      initContainers:
+      - env:
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: db.user
+              name: tekton-results-database
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: db.password
+              name: tekton-results-database
+        - name: DB_HOST
+          valueFrom:
+            secretKeyRef:
+              key: db.host
+              name: tekton-results-database
+        - name: DB_NAME
+          valueFrom:
+            secretKeyRef:
+              key: db.name
+              name: tekton-results-database
+        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        name: migrator
+        resources:
+          limits:
+            cpu: 100m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 32Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            add:
+            - NET_BIND_SERVICE
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "2"
+  labels:
+    app.kubernetes.io/name: tekton-results-watcher
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  replicas: 1
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-watcher
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - args:
+        - --secure-listen-address=0.0.0.0:8443
+        - --upstream=http://127.0.0.1:9090/
+        - --logtostderr=true
+        - --v=6
+        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
+        name: kube-rbac-proxy
+        ports:
+        - containerPort: 8443
+          name: watchermetrics
+          protocol: TCP
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+      - args:
+        - -api_addr
+        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
+        - -auth_mode
+        - token
+        - -check_owner=false
+        - -completed_run_grace_period
+        - 10m
+        env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: CONFIG_LEADERELECTION_NAME
+          value: tekton-results-config-leader-election
+        - name: CONFIG_OBSERVABILITY_NAME
+          value: tekton-results-config-observability
+        - name: METRICS_DOMAIN
+          value: tekton.dev/results
+        - name: TEKTON_RESULTS_API_SERVICE
+          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
+        - name: AUTH_MODE
+          value: token
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 3Gi
+          requests:
+            cpu: 100m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: batch/v1
+kind: CronJob
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: pac-secret-reaper
+  namespace: openshift-pipelines
+spec:
+  concurrencyPolicy: Forbid
+  jobTemplate:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      template:
+        metadata:
+          annotations:
+            argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        spec:
+          containers:
+          - command:
+            - /bin/bash
+            - -c
+            - |
+              # Delete "pac-gitauth-*" secrets older than a day
+              set -o errexit
+              set -o nounset
+              set -o pipefail
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$"); do
+                echo "$namespace: Cleaning pac-gitauth secrets"
+                kubectl get secrets --namespace $namespace -o json | \
+                  jq -r '.items[] |
+                    select(.metadata.name |
+                    startswith("pac-gitauth-")) |
+                    select(.metadata.creationTimestamp | fromdateiso8601 < (now - 86400)) |
+                    "secret/" + .metadata.name
+                  ' | \
+                  xargs --max-args 1 --no-run-if-empty kubectl delete -n $namespace
+              done
+              echo "Done"
+            image: registry.redhat.io/openshift4/ose-tools-rhel8@sha256:1054e906ee0183531b401d3c0b0d777cecb25ef95b1c9c48387c6cd7b0e57b9d
+            imagePullPolicy: Always
+            name: delete-pac-secrets
+            resources:
+              limits:
+                cpu: 200m
+                memory: 200Mi
+              requests:
+                cpu: 10m
+                memory: 10Mi
+            securityContext:
+              allowPrivilegeEscalation: false
+              capabilities:
+                drop:
+                - ALL
+              readOnlyRootFilesystem: true
+              runAsNonRoot: true
+              seccompProfile:
+                type: RuntimeDefault
+          restartPolicy: Never
+          serviceAccountName: pac-secret-manager
+  schedule: '*/10 * * * *'
+---
+apiVersion: batch/v1
+kind: Job
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    spec:
+      containers:
+      - command:
+        - /bin/bash
+        - -c
+        - |
+          set -o errexit
+          set -o nounset
+          set -o pipefail
+
+          namespace="openshift-pipelines"
+          secret="signing-secrets"
+
+          cd /tmp
+
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
+            echo "Signing secret exists and is non-empty."
+          else
+            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
+            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
+
+            # To make this run conveniently without user input let's create a random password
+            RANDOM_PASS=$( openssl rand -base64 30 )
+
+            # Generate the key pair secret directly in the cluster.
+            # The secret should be created as immutable.
+            echo "Generating k8s secret/$secret in $namespace with key-pair"
+            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
+          fi
+
+          # If the secret is not marked as immutable, make it so.
+          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.immutable}')" != "true" ]; then
+            echo "Making secret immutable"
+            kubectl patch secret "$secret" -n "$namespace" --dry-run=client -o yaml \
+              --patch='{"immutable": true}' \
+            | kubectl apply -f -
+          fi
+
+          echo "Generating/updating the secret with the public key"
+          kubectl create secret generic public-key \
+            --namespace "$namespace" \
+            --from-literal=cosign.pub="$(
+              cosign public-key --key "k8s://$namespace/$secret"
+            )" \
+            --dry-run=client \
+            -o yaml | kubectl apply -f -
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
+        imagePullPolicy: Always
+        name: chains-secret-generation
+        resources:
+          limits:
+            cpu: 100m
+            memory: 250Mi
+          requests:
+            cpu: 10m
+            memory: 10Mi
+        securityContext:
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+      dnsPolicy: ClusterFirst
+      restartPolicy: OnFailure
+      serviceAccount: chains-secrets-admin
+      serviceAccountName: chains-secrets-admin
+      terminationGracePeriodSeconds: 30
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: pipelines-as-code-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p01/github-app
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: pipelines-as-code-secret
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-database
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-rds
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-database
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-results-s3
+  namespace: tekton-results
+spec:
+  dataFrom:
+  - extract:
+      key: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-s3
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: tekton-results-s3
+    template:
+      data:
+        aws_access_key_id: '{{ .aws_access_key_id }}'
+        aws_region: '{{ .aws_region }}'
+        aws_secret_access_key: '{{ .aws_secret_access_key }}'
+        bucket: '{{ .bucket }}'
+        endpoint: https://{{ .endpoint }}
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: pipeline-metrics-exporter
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "1"
+  name: tekton-chains-controller
+  namespace: openshift-pipelines
+spec:
+  endpoints:
+  - honorLabels: true
+    interval: 15s
+    path: /metrics
+    port: metrics
+    scheme: http
+  jobLabel: app.kubernetes.io/name
+  namespaceSelector:
+    matchNames:
+    - openshift-pipelines
+  selector:
+    matchLabels:
+      app: tekton-chains-controller
+      app.kubernetes.io/component: metrics
+      app.kubernetes.io/part-of: tekton-chains
+  targetLabels:
+  - app
+  - app.kubernetes.io/component
+  - app.kubernetes.io/part-of
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-api
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: metrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  jobLabel: app.kubernetes.io/name
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-api
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: tekton-results-watcher
+  namespace: tekton-results
+spec:
+  endpoints:
+  - bearerTokenSecret:
+      key: token
+      name: metrics-reader
+    path: /metrics
+    port: watchermetrics
+    scheme: https
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-watcher
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: config
+spec:
+  chain:
+    artifacts.oci.storage: oci
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: beta
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-tekton-oci-bundles: true
+    performance:
+      buckets: 4
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 2
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        settings:
+          application-name: Konflux Production Internal
+          custom-console-name: Konflux Production Internal
+          custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+          custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+  profile: all
+  pruner:
+    disabled: true
+  targetNamespace: openshift-pipelines
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: openshift-pipelines-operator
+  namespace: openshift-operators
+spec:
+  channel: pipelines-1.13
+  name: openshift-pipelines-operator-rh
+  source: redhat-operators
+  sourceNamespace: openshift-marketplace
+---
+apiVersion: route.openshift.io/v1
+kind: Route
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+    haproxy.router.openshift.io/hsts_header: max-age=63072000
+    haproxy.router.openshift.io/timeout: 86410s
+    openshift.io/host.generated: "true"
+    router.openshift.io/haproxy.health.check.interval: 86400s
+  labels:
+    app.kubernetes.io/part-of: tekton-results
+  name: tekton-results
+  namespace: tekton-results
+spec:
+  port:
+    targetPort: server
+  tls:
+    insecureEdgeTerminationPolicy: Redirect
+    termination: reencrypt
+  to:
+    kind: Service
+    name: tekton-results-api-service
+    weight: 100
+  wildcardPolicy: None
+---
+allowHostDirVolumePlugin: false
+allowHostIPC: false
+allowHostNetwork: false
+allowHostPID: false
+allowHostPorts: false
+allowPrivilegeEscalation: false
+allowPrivilegedContainer: false
+allowedCapabilities:
+- SETFCAP
+apiVersion: security.openshift.io/v1
+defaultAddCapabilities: null
+fsGroup:
+  type: MustRunAs
+groups:
+- system:cluster-admins
+kind: SecurityContextConstraints
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: appstudio-pipelines-scc
+priority: 10
+readOnlyRootFilesystem: false
+requiredDropCapabilities:
+- MKNOD
+runAsUser:
+  type: RunAsAny
+seLinuxContext:
+  type: MustRunAs
+supplementalGroups:
+  type: RunAsAny
+users: []
+volumes:
+- configMap
+- downwardAPI
+- emptyDir
+- persistentVolumeClaim
+- projected
+- secret
diff --git a/components/pipeline-service/production/stone-prod-p01/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..005a25ee
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-results-database-secret-path.yaml
+    target:
+      name: tekton-results-database
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-results-s3-secret-path.yaml
+    target:
+      name: tekton-results-s3
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: update-tekton-config-pac.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6bf18923
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/github-app
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..48666d02
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..985667a2
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/stone-prod-p01-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..81ba87d5
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux Production Internal
+    custom-console-name: Konflux Production Internal
+    custom-console-url: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
+    custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..ff32be77
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
new file mode 100644
index 00000000..b21ad970
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/rs-p01"
+  }
+]
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..d4eb9f79
--- /dev/null
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,17 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: controller-manager-environment-config
+    path: config-patch.json
+  - path: aws-credentials-path-patch.yaml
+    target:
+      name: aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/smee-client/deployment.yaml b/components/smee-client/base/deployment.yaml
similarity index 88%
rename from components/smee-client/deployment.yaml
rename to components/smee-client/base/deployment.yaml
index 95cc81b3..a41a4444 100644
--- a/components/smee-client/deployment.yaml
+++ b/components/smee-client/base/deployment.yaml
@@ -19,7 +19,7 @@ spec:
           name: gosmee
           args:
             - "client"
-            - "https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12"
+            - TBA
             - "http://pipelines-as-code-controller.openshift-pipelines:8080"
           securityContext:
             readOnlyRootFilesystem: true
diff --git a/components/smee-client/kustomization.yaml b/components/smee-client/base/kustomization.yaml
similarity index 100%
rename from components/smee-client/kustomization.yaml
rename to components/smee-client/base/kustomization.yaml
diff --git a/components/smee-client/production/kustomization.yaml b/components/smee-client/production/kustomization.yaml
new file mode 100644
index 00000000..3512dbba
--- /dev/null
+++ b/components/smee-client/production/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/sever-url-patch.yaml b/components/smee-client/production/sever-url-patch.yaml
new file mode 100644
index 00000000..8ea9a9e8
--- /dev/null
+++ b/components/smee-client/production/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook12
diff --git a/components/smee-client/staging/kustomization.yaml b/components/smee-client/staging/kustomization.yaml
new file mode 100644
index 00000000..3512dbba
--- /dev/null
+++ b/components/smee-client/staging/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/staging/sever-url-patch.yaml b/components/smee-client/staging/sever-url-patch.yaml
new file mode 100644
index 00000000..a454bcfe
--- /dev/null
+++ b/components/smee-client/staging/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-stg-host.qc0p.p1.openshiftapps.com/redhathook12
diff --git a/components/spi/overlays/production/stone-prod-p01/config-patch.json b/components/spi/overlays/production/stone-prod-p01/config-patch.json
new file mode 100644
index 00000000..0d3de7c9
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/BASEURL",
+    "value": "https://spi-oauth-spi-system.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
+  },
+  {
+    "op": "add",
+    "path": "/data/INSTANCEID",
+    "value": "stone-prod/spi-p01"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..57e2e586
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,27 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - ../base
+
+patches:
+  - target:
+      kind: ConfigMap
+      name: oauth-service-environment-config
+    path: oauth-service-config-patch.json
+  - target:
+      kind: ConfigMap
+      name: shared-environment-config
+    path: config-patch.json
+  - path: spi-shared-configuration-file-config-path.yaml
+    target:
+      name: spi-shared-configuration-file
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: spi-aws-credentials-path-patch.yaml
+    target:
+      name: spi-aws-secretsmanager-credentials
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
new file mode 100644
index 00000000..e0595592
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
@@ -0,0 +1,7 @@
+[
+  {
+    "op": "add",
+    "path": "/data/API_SERVER",
+    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
+  }
+]
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
new file mode 100644
index 00000000..ff32be77
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/spi-aws-credentials-path-patch.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/data/0/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
+- op: replace
+  path: /spec/data/1/remoteRef/key
+  value: integrations-output/terraform-resources/appsrep05ue1/stone-prod-p01/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
new file mode 100644
index 00000000..3490a5ea
--- /dev/null
+++ b/components/spi/overlays/production/stone-prod-p01/spi-shared-configuration-file-config-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/spi/p01/shared-configuration-file
diff --git a/components/ui/README.md b/components/ui/README.md
index 6697cecf..b670607b 100644
--- a/components/ui/README.md
+++ b/components/ui/README.md
@@ -30,3 +30,9 @@ It's required to customize the manifests before deploying them. Two customizatio
 1. Updating the hostname that will be used for the routes.
 
 2. Creating a `fed-modules.json` file that configures the frontend. **Important**: this file contains the `Keycloak` endpoint that will be used for authentication.
+
+**Note**: To display the default ingress domain run:
+
+```bash
+oc get ingresses.config/cluster -o jsonpath={.spec.domain}
+```
diff --git a/components/ui/production/fed-modules.json b/components/ui/production/fed-modules.json
new file mode 100644
index 00000000..663d2d90
--- /dev/null
+++ b/components/ui/production/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/auth/"
+        },
+        "fullProfile": false
+    },
+    "hacCore": {
+        "manifestLocation": "/apps/hac-core/fed-mods.json",
+        "modules": [
+            {
+                "id": "hacCore",
+                "module": "./RootApp",
+                "routes": [
+                    {
+                        "pathname": "/hac"
+                    }
+                ]
+            }
+        ],
+        "moduleID": "hacCore",
+        "fullProfile": false
+    }
+}
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
new file mode 100644
index 00000000..70a1e86e
--- /dev/null
+++ b/components/ui/production/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: 9ddfec6
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 457001e
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: 7932b2a   
+
+configMapGenerator:
+  - name: fed-modules
+    files:
+      - fed-modules.json
+patches:
+  - path: set-hostname.yaml
+    target:
+      kind: Route
+      version: v1
diff --git a/components/ui/production/set-hostname.yaml b/components/ui/production/set-hostname.yaml
new file mode 100644
index 00000000..9abdcd98
--- /dev/null
+++ b/components/ui/production/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-b6dee9bd/development/app-of-apps-development.yaml
72,73d71
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
345,346d342
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
722,723d717
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
870,871d863
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
972,973d963
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
1028,1029d1017
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
./commit-b6dee9bd/development/components: smee-client 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 395c7bc7 to b6dee9bd on Sun Jan 28 06:20:26 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
index 7919da33..0573a354 100644
--- a/components/integration/base/delete-snapshots.yaml
+++ b/components/integration/base/delete-snapshots.yaml
@@ -18,7 +18,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Integration Team
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-395c7bc7/production/components/integration/production/kustomize.out.yaml
969c969
<   name: konflux-integration
---
>   name: Integration Team 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 395c7bc7 to b6dee9bd on Sun Jan 28 06:20:26 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
index 7919da33..0573a354 100644
--- a/components/integration/base/delete-snapshots.yaml
+++ b/components/integration/base/delete-snapshots.yaml
@@ -18,7 +18,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Integration Team
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-395c7bc7/staging/components/integration/staging/kustomize.out.yaml
969c969
<   name: konflux-integration
---
>   name: Integration Team 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 395c7bc7 to b6dee9bd on Sun Jan 28 06:20:26 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
index 7919da33..0573a354 100644
--- a/components/integration/base/delete-snapshots.yaml
+++ b/components/integration/base/delete-snapshots.yaml
@@ -18,7 +18,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Integration Team
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-395c7bc7/development/components/integration/development/kustomize.out.yaml
969c969
<   name: konflux-integration
---
>   name: Integration Team 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from ab742f54 to 395c7bc7 on Fri Jan 26 16:34:10 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/rbac/logging-admin.yaml b/components/monitoring/logging/base/rbac/logging-admin.yaml
index 91e699f0..bc3f8068 100644
--- a/components/monitoring/logging/base/rbac/logging-admin.yaml
+++ b/components/monitoring/logging/base/rbac/logging-admin.yaml
@@ -17,7 +17,7 @@ metadata:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Logging Admins
+  name: konflux-o11y-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/segment-bridge/rbac/segment-bridge.yaml b/components/segment-bridge/rbac/segment-bridge.yaml
index 7d697861..81bf5222 100644
--- a/components/segment-bridge/rbac/segment-bridge.yaml
+++ b/components/segment-bridge/rbac/segment-bridge.yaml
@@ -54,10 +54,9 @@ metadata:
   name: segment-bridge-read-host-sa-secret-binding
   namespace: toolchain-host-operator
 subjects:
-  - kind: User
-    name: Omeramsc
-  - kind: User
-    name: ifireball
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-o11y
 roleRef:
   kind: Role
   name: segment-bridge-read-host-sa-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ab742f54/production/components/segment-bridge/production/stone-prd-host1/kustomize.out.yaml
61,63c61,64
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-o11y
---
> - kind: User
>   name: Omeramsc
> - kind: User
>   name: ifireball 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from ab742f54 to 395c7bc7 on Fri Jan 26 16:34:10 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/rbac/logging-admin.yaml b/components/monitoring/logging/base/rbac/logging-admin.yaml
index 91e699f0..bc3f8068 100644
--- a/components/monitoring/logging/base/rbac/logging-admin.yaml
+++ b/components/monitoring/logging/base/rbac/logging-admin.yaml
@@ -17,7 +17,7 @@ metadata:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Logging Admins
+  name: konflux-o11y-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/segment-bridge/rbac/segment-bridge.yaml b/components/segment-bridge/rbac/segment-bridge.yaml
index 7d697861..81bf5222 100644
--- a/components/segment-bridge/rbac/segment-bridge.yaml
+++ b/components/segment-bridge/rbac/segment-bridge.yaml
@@ -54,10 +54,9 @@ metadata:
   name: segment-bridge-read-host-sa-secret-binding
   namespace: toolchain-host-operator
 subjects:
-  - kind: User
-    name: Omeramsc
-  - kind: User
-    name: ifireball
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-o11y
 roleRef:
   kind: Role
   name: segment-bridge-read-host-sa-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ab742f54/staging/components/segment-bridge/staging/stone-stg-host/kustomize.out.yaml
61,63c61,64
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-o11y
---
> - kind: User
>   name: Omeramsc
> - kind: User
>   name: ifireball 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from ab742f54 to 395c7bc7 on Fri Jan 26 16:34:10 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/rbac/logging-admin.yaml b/components/monitoring/logging/base/rbac/logging-admin.yaml
index 91e699f0..bc3f8068 100644
--- a/components/monitoring/logging/base/rbac/logging-admin.yaml
+++ b/components/monitoring/logging/base/rbac/logging-admin.yaml
@@ -17,7 +17,7 @@ metadata:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Logging Admins
+  name: konflux-o11y-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/segment-bridge/rbac/segment-bridge.yaml b/components/segment-bridge/rbac/segment-bridge.yaml
index 7d697861..81bf5222 100644
--- a/components/segment-bridge/rbac/segment-bridge.yaml
+++ b/components/segment-bridge/rbac/segment-bridge.yaml
@@ -54,10 +54,9 @@ metadata:
   name: segment-bridge-read-host-sa-secret-binding
   namespace: toolchain-host-operator
 subjects:
-  - kind: User
-    name: Omeramsc
-  - kind: User
-    name: ifireball
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-o11y
 roleRef:
   kind: Role
   name: segment-bridge-read-host-sa-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 5ce8bae5..1e7a9263 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -71,7 +71,7 @@ or imported from other projects.
   You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
 
       The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/example.json)
+      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
 
 
   2. Add tiles to the dashboard to track your initial set of service level indicators.  
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 569d73ec..23b3234c 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -3,10 +3,6 @@
     "list": [
       {
         "builtIn": 1,
-        "datasource": {
-          "type": "datasource",
-          "uid": "grafana"
-        },
         "enable": true,
         "hide": true,
         "iconColor": "rgba(0, 211, 255, 1)",
@@ -23,10 +19,6 @@
   "liveNow": false,
   "panels": [
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to list workspaces",
       "fieldConfig": {
         "defaults": {
@@ -102,10 +94,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
           "legendFormat": "__auto",
@@ -117,10 +105,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -194,10 +178,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -209,10 +189,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to get workspace",
       "fieldConfig": {
         "defaults": {
@@ -290,10 +266,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
           "legendFormat": "__auto",
@@ -305,10 +277,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -382,10 +350,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -397,10 +361,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
       "fieldConfig": {
         "defaults": {
@@ -484,10 +444,6 @@
       "pluginVersion": "9.5.1",
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
           "legendFormat": "__auto",
@@ -499,10 +455,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -576,10 +528,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -604,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Proxy Metrics",
+  "title": "Core - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": "" 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 5ce8bae5..1e7a9263 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -71,7 +71,7 @@ or imported from other projects.
   You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
 
       The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/example.json)
+      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
 
 
   2. Add tiles to the dashboard to track your initial set of service level indicators.  
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 569d73ec..23b3234c 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -3,10 +3,6 @@
     "list": [
       {
         "builtIn": 1,
-        "datasource": {
-          "type": "datasource",
-          "uid": "grafana"
-        },
         "enable": true,
         "hide": true,
         "iconColor": "rgba(0, 211, 255, 1)",
@@ -23,10 +19,6 @@
   "liveNow": false,
   "panels": [
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to list workspaces",
       "fieldConfig": {
         "defaults": {
@@ -102,10 +94,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
           "legendFormat": "__auto",
@@ -117,10 +105,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -194,10 +178,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -209,10 +189,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to get workspace",
       "fieldConfig": {
         "defaults": {
@@ -290,10 +266,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
           "legendFormat": "__auto",
@@ -305,10 +277,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -382,10 +350,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -397,10 +361,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
       "fieldConfig": {
         "defaults": {
@@ -484,10 +444,6 @@
       "pluginVersion": "9.5.1",
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
           "legendFormat": "__auto",
@@ -499,10 +455,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -576,10 +528,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -604,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Proxy Metrics",
+  "title": "Core - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": "" 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 5ce8bae5..1e7a9263 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -71,7 +71,7 @@ or imported from other projects.
   You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
 
       The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/example.json)
+      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
 
 
   2. Add tiles to the dashboard to track your initial set of service level indicators.  
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 569d73ec..23b3234c 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -3,10 +3,6 @@
     "list": [
       {
         "builtIn": 1,
-        "datasource": {
-          "type": "datasource",
-          "uid": "grafana"
-        },
         "enable": true,
         "hide": true,
         "iconColor": "rgba(0, 211, 255, 1)",
@@ -23,10 +19,6 @@
   "liveNow": false,
   "panels": [
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to list workspaces",
       "fieldConfig": {
         "defaults": {
@@ -102,10 +94,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
           "legendFormat": "__auto",
@@ -117,10 +105,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -194,10 +178,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -209,10 +189,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to get workspace",
       "fieldConfig": {
         "defaults": {
@@ -290,10 +266,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
           "legendFormat": "__auto",
@@ -305,10 +277,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -382,10 +350,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -397,10 +361,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
       "fieldConfig": {
         "defaults": {
@@ -484,10 +444,6 @@
       "pluginVersion": "9.5.1",
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
           "legendFormat": "__auto",
@@ -499,10 +455,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -576,10 +528,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -604,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Proxy Metrics",
+  "title": "Core - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": "" 
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
```
 
</details> 
<br> 


</div>
