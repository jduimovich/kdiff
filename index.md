# kustomize changes tracked by commits 
### This file generated at Thu Nov 14 04:07:26 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e42ca6ff to b22e6298 on Wed Nov 13 20:43:06 2024 </h3>  
 
<details> 
<summary>Git Diff (3086 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 80612773..0e0e6197 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 4b0c2940..85c6ca35 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: "base"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: kflux-stg-es01
                   values.clusterDir: kflux-stg-es01
                 - nameNormalized: kflux-prd-es01
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index ef08b7d4..e33d9810 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
                 - nameNormalized: stone-stg-rh01
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index 7690fd05..45dc3de6 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: ""
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index 068b6665..4a2b9d96 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index bc681113..36de0825 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 15be72e3..c1882d8f 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 4831152c..661c05e3 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index c4495c59..ffaab889 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
index 1ba1149e..519d23ea 100644
--- a/argo-cd-apps/base/smee-client/smee-client.yaml
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index 769b42b2..b5e2b34a 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml b/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..0ba9957b
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-prod-backup/backup-kflux-ocp-p01
diff --git a/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml b/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..3840a8bc
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-kflux-ocp-p01
diff --git a/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..0d56df73
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 5709bb39-3726-4a6c-aa1b-e5155cf981c1
diff --git a/components/backup/production/kflux-ocp-p01/kustomization.yaml b/components/backup/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
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
diff --git a/components/build-service/production/kflux-ocp-p01/kustomization.yaml b/components/build-service/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..aaca1ae2
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: build-service
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+configMapGenerator:
+  - name: webhook-config
+    files:
+      - webhook-config.json
+
+components:
+  - ../../components/webhook-config
diff --git a/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6576752a
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/kflux-ocp-p01/github-app
diff --git a/components/build-service/production/kflux-ocp-p01/webhook-config.json b/components/build-service/production/kflux-ocp-p01/webhook-config.json
new file mode 100644
index 00000000..26cc246f
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook14",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook14"
+}
diff --git a/components/integration/production/kflux-ocp-p01/console-url-config-patch.json b/components/integration/production/kflux-ocp-p01/console-url-config-patch.json
new file mode 100644
index 00000000..86015e06
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/kflux-ocp-p01/kustomization.yaml b/components/integration/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..64c31211
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/kustomization.yaml
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
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: integration-config
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..889307a6
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/github-app
\ No newline at end of file
diff --git a/components/keycloak/production/kflux-ocp-p01/kustomization.yaml b/components/keycloak/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..0f640327
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/konflux-workspace-admins
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml b/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..680ba1e3
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.kflux-ocp-p01.7ayg.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml b/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..3ac0977d
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml b/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6576752a
--- /dev/null
+++ b/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/kflux-ocp-p01/github-app
diff --git a/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml b/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite
diff --git a/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml b/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..9f6eefe8
--- /dev/null
+++ b/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: kflux-ocp-p01
diff --git a/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml b/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
new file mode 100644
index 00000000..15c53048
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -0,0 +1,2290 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
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
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
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
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
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
+  - patch
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
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
+rules:
+- apiGroups:
+  - resolution.tekton.dev
+  resources:
+  - resolutionrequests
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
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
+- apiGroups:
+  - admissionregistration.k8s.io
+  resources:
+  - '*'
+  verbs:
+  - list
+  - get
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
+  - summary
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
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
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
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
+    lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
+    Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
+    bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
+    B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
+    CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
+    MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
+    biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
+    dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
+    L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
+    JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
+    yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
+    VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
+    ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
+    bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
+    U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
+    S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
+    oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
+    LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
+    AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
+    HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
+    BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
+    pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
+    KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
+    76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
+    n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
+    jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
+    OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
+    z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
+    9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
+    iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
+    y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
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
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
+    PROFILING=true
+    PROFILING_PORT=6060
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
+  profiling.enable: "true"
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
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
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
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 6Gi
+          requests:
+            cpu: 250m
+            memory: 6Gi
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
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
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
+            cpu: 3000m
+            memory: 1Gi
+          requests:
+            cpu: 1000m
+            memory: 500Mi
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
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
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
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
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
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 8Gi
+          requests:
+            cpu: 250m
+            memory: 8Gi
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
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
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
+      key: production/pipeline-service/kflux-ocp-p01/github-app
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
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
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
+      key: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-plnsvc-rds
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
+      key: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-s3
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
+    artifacts.pipelinerun.enable-deep-inspection: "true"
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: alpha
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-step-actions: true
+    enable-tekton-oci-bundles: true
+    options:
+      configMaps:
+        config-defaults:
+          data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
+            default-timeout-minutes: "120"
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+      deployments:
+        tekton-operator-proxy-webhook:
+          spec:
+            replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
+        tekton-pipelines-remote-resolvers:
+          spec:
+            replicas: 1
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      memory: 4Gi
+                    requests:
+                      cpu: 500m
+                      memory: 4Gi
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
+      disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 6
+    performance:
+      buckets: 8
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 4
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
+        settings:
+          application-name: Konflux OCP
+          custom-console-name: Konflux OCP
+          custom-console-url: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+  profile: all
+  pruner:
+    disabled: false
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/10 * * * *'
+  targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
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
+  channel: latest
+  name: openshift-pipelines-operator-rh
+  source: custom-operators
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml b/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..79354316
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml
@@ -0,0 +1,39 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..b6b2dd66
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/github-app
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..430abbad
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..2aa393b5
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..6dee8f83
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-plnsvc-rds
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..b7b3eab3
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-s3
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..784233b8
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux OCP
+    custom-console-name: Konflux OCP
+    custom-console-url: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..8c10c7f7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
+- network-policy.yaml
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml
new file mode 100644
index 00000000..c1fe76c1
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml
@@ -0,0 +1,31 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..c3dee3c3
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml
@@ -0,0 +1,15 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-ocp-p01.7ayg.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-ocp-p01.7ayg.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..f1fe9b84
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml
@@ -0,0 +1,72 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: true
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: konflux-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://konflux.apps.rosa.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
diff --git a/components/smee-client/production/kflux-ocp-p01/kustomization.yaml b/components/smee-client/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..977ed4c4
--- /dev/null
+++ b/components/smee-client/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml b/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml
new file mode 100644
index 00000000..44f92943
--- /dev/null
+++ b/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13
diff --git a/components/ui/production/kflux-ocp-p01/fed-modules.json b/components/ui/production/kflux-ocp-p01/fed-modules.json
new file mode 100644
index 00000000..d8e77da1
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/"
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
diff --git a/components/ui/production/kflux-ocp-p01/kustomization.yaml b/components/ui/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..c99a3ebc
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: d76ce23
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 6f08f67
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: f97289a
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
diff --git a/components/ui/production/kflux-ocp-p01/set-hostname.yaml b/components/ui/production/kflux-ocp-p01/set-hostname.yaml
new file mode 100644
index 00000000..73b463a3
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from e42ca6ff to b22e6298 on Wed Nov 13 20:43:06 2024 </h3>  
 
<details> 
<summary>Git Diff (3086 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 80612773..0e0e6197 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 4b0c2940..85c6ca35 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: "base"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: kflux-stg-es01
                   values.clusterDir: kflux-stg-es01
                 - nameNormalized: kflux-prd-es01
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index ef08b7d4..e33d9810 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
                 - nameNormalized: stone-stg-rh01
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index 7690fd05..45dc3de6 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: ""
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index 068b6665..4a2b9d96 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index bc681113..36de0825 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 15be72e3..c1882d8f 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 4831152c..661c05e3 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index c4495c59..ffaab889 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
index 1ba1149e..519d23ea 100644
--- a/argo-cd-apps/base/smee-client/smee-client.yaml
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index 769b42b2..b5e2b34a 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml b/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..0ba9957b
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-prod-backup/backup-kflux-ocp-p01
diff --git a/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml b/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..3840a8bc
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-kflux-ocp-p01
diff --git a/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..0d56df73
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 5709bb39-3726-4a6c-aa1b-e5155cf981c1
diff --git a/components/backup/production/kflux-ocp-p01/kustomization.yaml b/components/backup/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
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
diff --git a/components/build-service/production/kflux-ocp-p01/kustomization.yaml b/components/build-service/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..aaca1ae2
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: build-service
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+configMapGenerator:
+  - name: webhook-config
+    files:
+      - webhook-config.json
+
+components:
+  - ../../components/webhook-config
diff --git a/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6576752a
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/kflux-ocp-p01/github-app
diff --git a/components/build-service/production/kflux-ocp-p01/webhook-config.json b/components/build-service/production/kflux-ocp-p01/webhook-config.json
new file mode 100644
index 00000000..26cc246f
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook14",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook14"
+}
diff --git a/components/integration/production/kflux-ocp-p01/console-url-config-patch.json b/components/integration/production/kflux-ocp-p01/console-url-config-patch.json
new file mode 100644
index 00000000..86015e06
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/kflux-ocp-p01/kustomization.yaml b/components/integration/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..64c31211
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/kustomization.yaml
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
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: integration-config
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..889307a6
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/github-app
\ No newline at end of file
diff --git a/components/keycloak/production/kflux-ocp-p01/kustomization.yaml b/components/keycloak/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..0f640327
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/konflux-workspace-admins
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml b/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..680ba1e3
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.kflux-ocp-p01.7ayg.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml b/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..3ac0977d
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml b/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6576752a
--- /dev/null
+++ b/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/kflux-ocp-p01/github-app
diff --git a/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml b/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite
diff --git a/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml b/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..9f6eefe8
--- /dev/null
+++ b/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: kflux-ocp-p01
diff --git a/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml b/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
new file mode 100644
index 00000000..15c53048
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -0,0 +1,2290 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
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
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
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
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
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
+  - patch
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
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
+rules:
+- apiGroups:
+  - resolution.tekton.dev
+  resources:
+  - resolutionrequests
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
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
+- apiGroups:
+  - admissionregistration.k8s.io
+  resources:
+  - '*'
+  verbs:
+  - list
+  - get
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
+  - summary
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
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
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
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
+    lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
+    Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
+    bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
+    B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
+    CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
+    MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
+    biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
+    dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
+    L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
+    JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
+    yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
+    VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
+    ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
+    bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
+    U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
+    S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
+    oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
+    LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
+    AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
+    HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
+    BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
+    pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
+    KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
+    76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
+    n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
+    jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
+    OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
+    z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
+    9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
+    iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
+    y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
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
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
+    PROFILING=true
+    PROFILING_PORT=6060
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
+  profiling.enable: "true"
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
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
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
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 6Gi
+          requests:
+            cpu: 250m
+            memory: 6Gi
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
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
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
+            cpu: 3000m
+            memory: 1Gi
+          requests:
+            cpu: 1000m
+            memory: 500Mi
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
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
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
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
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
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 8Gi
+          requests:
+            cpu: 250m
+            memory: 8Gi
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
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
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
+      key: production/pipeline-service/kflux-ocp-p01/github-app
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
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
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
+      key: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-plnsvc-rds
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
+      key: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-s3
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
+    artifacts.pipelinerun.enable-deep-inspection: "true"
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: alpha
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-step-actions: true
+    enable-tekton-oci-bundles: true
+    options:
+      configMaps:
+        config-defaults:
+          data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
+            default-timeout-minutes: "120"
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+      deployments:
+        tekton-operator-proxy-webhook:
+          spec:
+            replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
+        tekton-pipelines-remote-resolvers:
+          spec:
+            replicas: 1
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      memory: 4Gi
+                    requests:
+                      cpu: 500m
+                      memory: 4Gi
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
+      disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 6
+    performance:
+      buckets: 8
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 4
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
+        settings:
+          application-name: Konflux OCP
+          custom-console-name: Konflux OCP
+          custom-console-url: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+  profile: all
+  pruner:
+    disabled: false
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/10 * * * *'
+  targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
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
+  channel: latest
+  name: openshift-pipelines-operator-rh
+  source: custom-operators
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml b/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..79354316
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml
@@ -0,0 +1,39 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..b6b2dd66
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/github-app
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..430abbad
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..2aa393b5
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..6dee8f83
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-plnsvc-rds
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..b7b3eab3
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-s3
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..784233b8
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux OCP
+    custom-console-name: Konflux OCP
+    custom-console-url: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..8c10c7f7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
+- network-policy.yaml
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml
new file mode 100644
index 00000000..c1fe76c1
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml
@@ -0,0 +1,31 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..c3dee3c3
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml
@@ -0,0 +1,15 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-ocp-p01.7ayg.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-ocp-p01.7ayg.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..f1fe9b84
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml
@@ -0,0 +1,72 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: true
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: konflux-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://konflux.apps.rosa.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
diff --git a/components/smee-client/production/kflux-ocp-p01/kustomization.yaml b/components/smee-client/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..977ed4c4
--- /dev/null
+++ b/components/smee-client/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml b/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml
new file mode 100644
index 00000000..44f92943
--- /dev/null
+++ b/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13
diff --git a/components/ui/production/kflux-ocp-p01/fed-modules.json b/components/ui/production/kflux-ocp-p01/fed-modules.json
new file mode 100644
index 00000000..d8e77da1
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/"
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
diff --git a/components/ui/production/kflux-ocp-p01/kustomization.yaml b/components/ui/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..c99a3ebc
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: d76ce23
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 6f08f67
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: f97289a
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
diff --git a/components/ui/production/kflux-ocp-p01/set-hostname.yaml b/components/ui/production/kflux-ocp-p01/set-hostname.yaml
new file mode 100644
index 00000000..73b463a3
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from e42ca6ff to b22e6298 on Wed Nov 13 20:43:06 2024 </h3>  
 
<details> 
<summary>Git Diff (3086 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 80612773..0e0e6197 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 4b0c2940..85c6ca35 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: "base"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: kflux-stg-es01
                   values.clusterDir: kflux-stg-es01
                 - nameNormalized: kflux-prd-es01
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index ef08b7d4..e33d9810 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
                 - nameNormalized: stone-stg-rh01
diff --git a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
index 7690fd05..45dc3de6 100644
--- a/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
+++ b/argo-cd-apps/base/host/toolchain-host-operator/toolchain-host-operator.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: ""
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/argo-cd-apps/base/keycloak/keycloak.yaml b/argo-cd-apps/base/keycloak/keycloak.yaml
index 068b6665..4a2b9d96 100644
--- a/argo-cd-apps/base/keycloak/keycloak.yaml
+++ b/argo-cd-apps/base/keycloak/keycloak.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
index bc681113..36de0825 100644
--- a/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/build-service/build-service.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 15be72e3..c1882d8f 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index 4831152c..661c05e3 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index c4495c59..ffaab889 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -15,6 +15,8 @@ spec:
                 clusterDir: base
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/argo-cd-apps/base/smee-client/smee-client.yaml b/argo-cd-apps/base/smee-client/smee-client.yaml
index 1ba1149e..519d23ea 100644
--- a/argo-cd-apps/base/smee-client/smee-client.yaml
+++ b/argo-cd-apps/base/smee-client/smee-client.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/argo-cd-apps/base/ui/ui.yaml b/argo-cd-apps/base/ui/ui.yaml
index 769b42b2..b5e2b34a 100644
--- a/argo-cd-apps/base/ui/ui.yaml
+++ b/argo-cd-apps/base/ui/ui.yaml
@@ -18,6 +18,8 @@ spec:
                   appstudio.redhat.com/internal-member-cluster: "true"
           - list:
               elements:
+                - nameNormalized: kflux-ocp-p01
+                  values.clusterDir: kflux-ocp-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
                 - nameNormalized: stone-prod-p02
diff --git a/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml b/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..0ba9957b
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/stonesoup-infra-prod-backup/backup-kflux-ocp-p01
diff --git a/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml b/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..3840a8bc
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-kflux-ocp-p01
diff --git a/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..0d56df73
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 5709bb39-3726-4a6c-aa1b-e5155cf981c1
diff --git a/components/backup/production/kflux-ocp-p01/kustomization.yaml b/components/backup/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/all-clusters
+  - ../../base/host/schedules
+  - ../../base/member/schedules
+patches:
+  - target:
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+      name: backup-s3-credentials
+    path: backup-s3-credentials-patch.yaml
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
diff --git a/components/build-service/production/kflux-ocp-p01/kustomization.yaml b/components/build-service/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..aaca1ae2
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,20 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: build-service
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+configMapGenerator:
+  - name: webhook-config
+    files:
+      - webhook-config.json
+
+components:
+  - ../../components/webhook-config
diff --git a/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6576752a
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/kflux-ocp-p01/github-app
diff --git a/components/build-service/production/kflux-ocp-p01/webhook-config.json b/components/build-service/production/kflux-ocp-p01/webhook-config.json
new file mode 100644
index 00000000..26cc246f
--- /dev/null
+++ b/components/build-service/production/kflux-ocp-p01/webhook-config.json
@@ -0,0 +1,4 @@
+{
+    "https://github.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook14",
+    "https://gitlab.com": "https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook14"
+}
diff --git a/components/integration/production/kflux-ocp-p01/console-url-config-patch.json b/components/integration/production/kflux-ocp-p01/console-url-config-patch.json
new file mode 100644
index 00000000..86015e06
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/console-url-config-patch.json
@@ -0,0 +1,12 @@
+[
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL",
+    "value": "https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+  },
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_URL_TASKLOG",
+    "value": "https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+  }
+]
diff --git a/components/integration/production/kflux-ocp-p01/kustomization.yaml b/components/integration/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..64c31211
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/kustomization.yaml
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
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: integration-config
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..889307a6
--- /dev/null
+++ b/components/integration/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/github-app
\ No newline at end of file
diff --git a/components/keycloak/production/kflux-ocp-p01/kustomization.yaml b/components/keycloak/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..0f640327
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/konflux-workspace-admins
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm
diff --git a/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml b/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml
new file mode 100644
index 00000000..680ba1e3
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/set-ocp-idp.yaml
@@ -0,0 +1,10 @@
+---
+- op: add
+  path: /spec/realm/identityProviders/0/config/authorizationUrl
+  value: https://oauth-openshift.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/oauth/authorize
+- op: add
+  path: /spec/realm/identityProviders/0/config/baseUrl
+  value: https://api.kflux-ocp-p01.7ayg.p1.openshiftapps.com:6443
+- op: add
+  path: /spec/realm/identityProviders/0/config/tokenUrl
+  value: https://oauth-openshift.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/oauth/token
diff --git a/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml b/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml
new file mode 100644
index 00000000..3ac0977d
--- /dev/null
+++ b/components/keycloak/production/kflux-ocp-p01/set-redirect-uri.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /metadata/annotations/serviceaccounts.openshift.io~1oauth-redirecturi.rhtap
+  value: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
diff --git a/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml b/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..6576752a
--- /dev/null
+++ b/components/mintmaker/production/kflux-ocp-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/kflux-ocp-p01/github-app
diff --git a/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml b/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite
diff --git a/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml b/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml
new file mode 100644
index 00000000..9f6eefe8
--- /dev/null
+++ b/components/monitoring/prometheus/production/kflux-ocp-p01/cluster-id-label.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/prometheusConfig/externalLabels/source_cluster
+  value: kflux-ocp-p01
diff --git a/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml b/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..37731611
--- /dev/null
+++ b/components/monitoring/prometheus/production/kflux-ocp-p01/kustomization.yaml
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
new file mode 100644
index 00000000..15c53048
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -0,0 +1,2290 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
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
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: tekton-results
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
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - pod/exec
+  verbs:
+  - get
+  - list
+  - create
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
+  - patch
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
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
+rules:
+- apiGroups:
+  - resolution.tekton.dev
+  resources:
+  - resolutionrequests
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
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
+- apiGroups:
+  - admissionregistration.k8s.io
+  resources:
+  - '*'
+  verbs:
+  - list
+  - get
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
+  - summary
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
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+  name: pipeline-service-sre-exec-pprof-data
+  namespace: tekton-results
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: pipeline-service-sre-exec-pprof-data
+subjects:
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-pipeline-service
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+- apiGroup: rbac.authorization.k8s.io
+  kind: Group
+  name: konflux-sre
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
+    argocd.argoproj.io/sync-wave: "0"
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
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
+  tekton-results-db-ca.pem: |-
+    -----BEGIN CERTIFICATE-----
+    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
+    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
+    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
+    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
+    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
+    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
+    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
+    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
+    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
+    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
+    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
+    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
+    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
+    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
+    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
+    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
+    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
+    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
+    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
+    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
+    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
+    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
+    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
+    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
+    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
+    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
+    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
+    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
+    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
+    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
+    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
+    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
+    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
+    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
+    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
+    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
+    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
+    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
+    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
+    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
+    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
+    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
+    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
+    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
+    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
+    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
+    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
+    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
+    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
+    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
+    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
+    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
+    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
+    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
+    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
+    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
+    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
+    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
+    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
+    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
+    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
+    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
+    lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
+    Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
+    bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
+    B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
+    CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
+    MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
+    biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
+    dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
+    L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
+    JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
+    yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
+    VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
+    ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
+    bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
+    U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
+    S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
+    oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
+    LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
+    AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
+    HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
+    BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
+    pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
+    KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
+    76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
+    n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
+    jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
+    OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
+    z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
+    9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
+    iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
+    y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
+    0Ws=
+    -----END CERTIFICATE-----
+    -----BEGIN CERTIFICATE-----
+    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
+    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
+    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
+    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
+    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
+    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
+    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
+    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
+    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
+    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
+    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
+    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
+    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
+    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
+    OGh9pTYPVkUbBiKPA7lVVhre
+    -----END CERTIFICATE-----
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  name: rds-root-crt
+  namespace: tekton-results
+---
+apiVersion: v1
+data:
+  config.env: |
+    DB_USER=
+    DB_PASSWORD=
+    DB_HOST=
+    DB_PORT=5432
+    DB_NAME=
+    DB_SSLMODE=verify-full
+    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
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
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
+    PROFILING=true
+    PROFILING_PORT=6060
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
+  profiling.enable: "true"
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
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
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
+      - args:
+        - -pprof-address
+        - "6060"
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
+        name: pipeline-metrics-exporter
+        ports:
+        - containerPort: 9117
+          name: metrics
+        resources:
+          limits:
+            cpu: 500m
+            memory: 6Gi
+          requests:
+            cpu: 250m
+            memory: 6Gi
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
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
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
+            cpu: 3000m
+            memory: 1Gi
+          requests:
+            cpu: 1000m
+            memory: 500Mi
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
+        - mountPath: /etc/tls/db
+          name: db-tls-ca
+          readOnly: true
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-api
+      volumes:
+      - configMap:
+          name: rds-root-crt
+        name: db-tls-ca
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
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
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
+        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        name: watcher
+        ports:
+        - containerPort: 9090
+          name: metrics
+        - containerPort: 8008
+          name: profiling
+        resources:
+          limits:
+            cpu: 250m
+            memory: 8Gi
+          requests:
+            cpu: 250m
+            memory: 8Gi
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
+              for namespace in $(kubectl get namespaces -o name | cut -d/ -f2 | grep -E "\\-tenant$|^tekton-ci$|^konflux-ci$"); do
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
+      key: production/pipeline-service/kflux-ocp-p01/github-app
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
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: signing-secrets
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
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
+      key: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-plnsvc-rds
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
+      key: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-s3
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
+    artifacts.pipelinerun.enable-deep-inspection: "true"
+    artifacts.pipelinerun.format: in-toto
+    artifacts.pipelinerun.storage: oci
+    artifacts.taskrun.format: in-toto
+    artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - args:
+                  - --threads-per-controller=32
+                  - --kube-api-qps=50
+                  - --kube-api-burst=50
+                  name: tekton-chains-controller
+    transparency.enabled: "false"
+  params:
+  - name: createRbacResource
+    value: "false"
+  pipeline:
+    default-service-account: appstudio-pipeline
+    enable-api-fields: alpha
+    enable-bundles-resolver: true
+    enable-cluster-resolver: true
+    enable-git-resolver: true
+    enable-hub-resolver: true
+    enable-step-actions: true
+    enable-tekton-oci-bundles: true
+    options:
+      configMaps:
+        config-defaults:
+          data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
+            default-timeout-minutes: "120"
+        config-logging:
+          data:
+            loglevel.controller: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+      deployments:
+        tekton-operator-proxy-webhook:
+          spec:
+            replicas: 2
+            template:
+              spec:
+                containers:
+                - name: proxy
+                  resources:
+                    limits:
+                      cpu: 500m
+                      memory: 500Mi
+                    requests:
+                      cpu: 100m
+                      memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
+        tekton-pipelines-remote-resolvers:
+          spec:
+            replicas: 1
+            template:
+              spec:
+                containers:
+                - name: controller
+                  resources:
+                    limits:
+                      memory: 4Gi
+                    requests:
+                      cpu: 500m
+                      memory: 4Gi
+        tekton-pipelines-webhook:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: webhook
+                  resources:
+                    limits:
+                      cpu: "1"
+                      memory: 1Gi
+                    requests:
+                      cpu: 200m
+                      memory: 200Mi
+      disabled: false
+      horizontalPodAutoscalers:
+        tekton-operator-proxy-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 2
+        tekton-pipelines-webhook:
+          spec:
+            maxReplicas: 6
+            metrics:
+            - resource:
+                name: cpu
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            - resource:
+                name: memory
+                target:
+                  averageUtilization: 100
+                  type: Utilization
+              type: Resource
+            minReplicas: 6
+    performance:
+      buckets: 8
+      disable-ha: false
+      kube-api-burst: 50
+      kube-api-qps: 50
+      replicas: 4
+      threads-per-controller: 32
+  platforms:
+    openshift:
+      pipelinesAsCode:
+        enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
+        settings:
+          application-name: Konflux OCP
+          custom-console-name: Konflux OCP
+          custom-console-url: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+          custom-console-url-pr-details: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+  profile: all
+  pruner:
+    disabled: false
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/10 * * * *'
+  targetNamespace: openshift-pipelines
+  trigger:
+    options:
+      configMaps:
+        config-logging-triggers:
+          data:
+            loglevel.controller: info
+            loglevel.eventlistener: info
+            loglevel.webhook: info
+            zap-logger-config: |
+              {
+                "level": "info",
+                "development": false,
+                "sampling": {
+                  "initial": 100,
+                  "thereafter": 100
+                },
+                "outputPaths": ["stdout"],
+                "errorOutputPaths": ["stderr"],
+                "encoding": "json",
+                "encoderConfig": {
+                  "timeKey": "ts",
+                  "levelKey": "level",
+                  "nameKey": "logger",
+                  "callerKey": "caller",
+                  "messageKey": "msg",
+                  "stacktraceKey": "stacktrace",
+                  "lineEnding": "",
+                  "levelEncoder": "",
+                  "timeEncoder": "iso8601",
+                  "durationEncoder": "string",
+                  "callerEncoder": ""
+                }
+              }
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
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
+  channel: latest
+  name: openshift-pipelines-operator-rh
+  source: custom-operators
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml b/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..ee2da5d8
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - deploy.yaml
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml
new file mode 100644
index 00000000..79354316
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/kustomization.yaml
@@ -0,0 +1,39 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
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
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..b6b2dd66
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/github-app
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..430abbad
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..2aa393b5
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/kflux-ocp-p01/chains-signing-secret
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml
new file mode 100644
index 00000000..6dee8f83
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-database-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-plnsvc-rds
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml
new file mode 100644
index 00000000..b7b3eab3
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/tekton-results-s3-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/appsrep09ue1/kflux-ocp-p01/kflux-ocp-p01-plnsvc-s3
diff --git a/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml
new file mode 100644
index 00000000..784233b8
--- /dev/null
+++ b/components/pipeline-service/production/kflux-ocp-p01/resources/update-tekton-config-pac.yaml
@@ -0,0 +1,9 @@
+---
+- op: add
+  path: /spec/platforms/openshift/pipelinesAsCode/settings
+  value:
+    application-name: Konflux OCP
+    custom-console-name: Konflux OCP
+    custom-console-url: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+    custom-console-url-pr-details: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..8c10c7f7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../../base
+- toolchainconfig.yaml
+- space-provisioner-configs.yaml
+- network-policy.yaml
+- ../../../tiers/production
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml
new file mode 100644
index 00000000..c1fe76c1
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/network-policy.yaml
@@ -0,0 +1,31 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress
+---
+apiVersion: networking.k8s.io/v1
+kind: NetworkPolicy
+metadata:
+  name: allow-from-same-namespace
+  namespace: toolchain-host-operator
+spec:
+  ingress:
+  - from:
+    - podSelector: {}
+  podSelector: {}
+  policyTypes:
+  - Ingress
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml
new file mode 100644
index 00000000..c3dee3c3
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/space-provisioner-configs.yaml
@@ -0,0 +1,15 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-ocp-p01.7ayg.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-ocp-p01.7ayg.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1000
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml
new file mode 100644
index 00000000..f1fe9b84
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/production/kflux-ocp-p01/toolchainconfig.yaml
@@ -0,0 +1,72 @@
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: ToolchainConfig
+metadata:
+  name: config
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true # on the very first install, the CRD will be missing since the operator has not been installed yet
+spec:
+  host:
+    tiers:
+      defaultSpaceTier: 'appstudio'
+    automaticApproval:
+      enabled: true
+    spaceConfig:
+      spaceRequestEnabled: true
+      spaceBindingRequestEnabled: true
+    deactivation:
+      deactivationDomainsExcluded: '@redhat.com'
+    notifications:
+      adminEmail: konflux-infra@redhat.com
+      secret:
+        mailgunAPIKey: mailgun.api.key
+        mailgunDomain: mailgun.domain
+        mailgunReplyToEmail: mailgun.replyto.email
+        mailgunSenderEmail: mailgun.sender.email
+        ref: host-operator-secret
+      templateSetName: 'appstudio'
+    registrationService:
+      auth:
+        authClientConfigRaw: '{
+                  "realm": "redhat-external",
+                  "auth-server-url": "https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth",
+                  "ssl-required": "ALL",
+                  "resource": "cloud-services",
+                  "clientId": "cloud-services",
+                  "public-client": true
+                }'
+        authClientLibraryURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/js/keycloak.js
+        authClientPublicKeysURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/realms/redhat-external/protocol/openid-connect/certs
+        ssoBaseURL: https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com
+        ssoRealm: redhat-external
+      environment: prod
+      replicas: 10
+      registrationServiceURL: https://konflux.apps.rosa.kflux-ocp-p01.7ayg.p1.openshiftapps.com/application-pipeline
+      verification:
+        enabled: false # skip phone verification for now
+        excludedEmailDomains: 'redhat.com'
+        secret:
+          ref: host-operator-secret
+          twilioAccountSID: twilio.account.sid
+          twilioAuthToken: twilio.auth.token
+          twilioFromNumber: twilio.from_number
+    toolchainStatus:
+      gitHubSecret:
+        ref: host-operator-secret
+        accessTokenKey: github.access.token
+  members:
+    default:
+      skipUserCreation: true
+      auth:
+        idp: DevSandbox
+      autoscaler:
+        bufferMemory: 3Gi
+        bufferReplicas: 10
+        deploy: true
+      che:
+        required: false
+        userDeletionEnabled: false
+      memberStatus:
+        gitHubSecret:
+          ref: member-operator-secret
+          accessTokenKey: github.access.token
diff --git a/components/smee-client/production/kflux-ocp-p01/kustomization.yaml b/components/smee-client/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..977ed4c4
--- /dev/null
+++ b/components/smee-client/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,9 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+patches:
+  - path: sever-url-patch.yaml
+    target:
+      name: gosmee-client
+      kind: Deployment
diff --git a/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml b/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml
new file mode 100644
index 00000000..44f92943
--- /dev/null
+++ b/components/smee-client/production/kflux-ocp-p01/sever-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/args/1
+  value: https://smee-smee.apps.stone-prd-host1.wdlc.p1.openshiftapps.com/redhathook13
diff --git a/components/ui/production/kflux-ocp-p01/fed-modules.json b/components/ui/production/kflux-ocp-p01/fed-modules.json
new file mode 100644
index 00000000..d8e77da1
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/fed-modules.json
@@ -0,0 +1,25 @@
+{
+    "chrome": {
+        "manifestLocation": "/apps/chrome/js/fed-mods.json",
+        "config": {
+            "ssoUrl": "https://keycloak-rhtap-auth.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com/auth/"
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
diff --git a/components/ui/production/kflux-ocp-p01/kustomization.yaml b/components/ui/production/kflux-ocp-p01/kustomization.yaml
new file mode 100644
index 00000000..c99a3ebc
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/kustomization.yaml
@@ -0,0 +1,32 @@
+kind: Kustomization
+apiVersion: kustomize.config.k8s.io/v1beta1
+resources:
+  - ../../base
+namespace: rhtap-ui
+images:
+  # chrome frontend
+  - name: quay.io/cloudservices/insights-chrome-frontend
+    newName: quay.io/cloudservices/insights-chrome-frontend
+    newTag: d76ce23
+  # chrome service
+  - name: quay.io/cloudservices/chrome-service
+    newName: quay.io/cloudservices/chrome-service
+    newTag: 6f08f67
+  # hac
+  - name: quay.io/cloudservices/hac-core-frontend
+    newName: quay.io/cloudservices/hac-core-frontend
+    newTag: 0bffd43
+  # hac-dev
+  - name: quay.io/cloudservices/hac-dev-frontend
+    newName: quay.io/cloudservices/hac-dev-frontend
+    newTag: f97289a
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
diff --git a/components/ui/production/kflux-ocp-p01/set-hostname.yaml b/components/ui/production/kflux-ocp-p01/set-hostname.yaml
new file mode 100644
index 00000000..73b463a3
--- /dev/null
+++ b/components/ui/production/kflux-ocp-p01/set-hostname.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/host
+  value: konflux.apps.kflux-ocp-p01.7ayg.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-e42ca6ff/development/app-of-apps-development.yaml
71,72d70
<           - nameNormalized: kflux-ocp-p01
<             values.clusterDir: kflux-ocp-p01
538,539d535
<           - nameNormalized: kflux-ocp-p01
<             values.clusterDir: kflux-ocp-p01
785,786d780
<           - nameNormalized: kflux-ocp-p01
<             values.clusterDir: kflux-ocp-p01
897,898d890
<           - nameNormalized: kflux-ocp-p01
<             values.clusterDir: kflux-ocp-p01
1096,1097d1087
<           - nameNormalized: kflux-ocp-p01
<             values.clusterDir: kflux-ocp-p01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5dcd6ff4 to e42ca6ff on Wed Nov 13 19:59:59 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index c6d5d020..21a4b549 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -27,7 +27,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.6
+  channel: stable-2.7
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index aa084720..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -14,11 +14,3 @@ patches:
     target:
       group: argoproj.io
       kind: ArgoCD
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.7
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 1ab3a7e8..9a6c26d9 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,7 +9,7 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImage
-    value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.6
+    value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.7
 
 - op: add
   path: /spec/template/spec/source/helm/parameters/-
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 600aaec3..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,11 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.7
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-5dcd6ff4/production/components/cluster-as-a-service/production/kustomize.out.yaml
236c236
<             value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.7
---
>             value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.6
377c377
<   channel: stable-2.7
---
>   channel: stable-2.6 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 5dcd6ff4 to e42ca6ff on Wed Nov 13 19:59:59 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index c6d5d020..21a4b549 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -27,7 +27,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.6
+  channel: stable-2.7
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index aa084720..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -14,11 +14,3 @@ patches:
     target:
       group: argoproj.io
       kind: ArgoCD
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.7
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 1ab3a7e8..9a6c26d9 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,7 +9,7 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImage
-    value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.6
+    value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.7
 
 - op: add
   path: /spec/template/spec/source/helm/parameters/-
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 600aaec3..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,11 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.7
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 5dcd6ff4 to e42ca6ff on Wed Nov 13 19:59:59 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index c6d5d020..21a4b549 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -27,7 +27,7 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
 spec:
-  channel: stable-2.6
+  channel: stable-2.7
   installPlanApproval: Automatic
   name: multicluster-engine
   source: redhat-operators
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index aa084720..f80701e2 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -14,11 +14,3 @@ patches:
     target:
       group: argoproj.io
       kind: ArgoCD
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.7
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine
diff --git a/components/cluster-as-a-service/production/add-hypershift-params.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
index 1ab3a7e8..9a6c26d9 100644
--- a/components/cluster-as-a-service/production/add-hypershift-params.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -9,7 +9,7 @@
   path: /spec/template/spec/source/helm/parameters/-
   value:
     name: hypershiftImage
-    value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.6
+    value: registry.redhat.io/multicluster-engine/hypershift-rhel9-operator:v2.7
 
 - op: add
   path: /spec/template/spec/source/helm/parameters/-
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 600aaec3..c82b467d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -11,11 +11,3 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       name: hypershift-aws-cluster
-  - patch: |
-      - op: replace
-        path: /spec/channel
-        value: stable-2.7
-    target:
-      group: operators.coreos.com
-      kind: Subscription
-      name: multicluster-engine 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from eaf916f5 to 5dcd6ff4 on Wed Nov 13 19:07:34 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 6ecf188e..74959d84 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -14,9 +14,7 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements:
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
+              elements: []
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production/common/kustomization.yaml b/components/multi-platform-controller/production/common/kustomization.yaml
deleted file mode 100644
index 6d9488fa..00000000
--- a/components/multi-platform-controller/production/common/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: multi-platform-controller
-
-resources:
-- host-config.yaml
-- external-secrets.yaml
diff --git a/components/multi-platform-controller/production/common/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
similarity index 100%
rename from components/multi-platform-controller/production/common/external-secrets.yaml
rename to components/multi-platform-controller/production/external-secrets.yaml
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
similarity index 100%
rename from components/multi-platform-controller/production/common/host-config.yaml
rename to components/multi-platform-controller/production/host-config.yaml
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index c7e5fbc6..2182a6e2 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,9 +5,10 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
+- host-config.yaml
+- external-secrets.yaml
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- common
 
 images:
 - name: multi-platform-controller
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index f7186e62..00000000
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: multi-platform-controller
-
-resources:
-- ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- ../common
-
-images:
-- name: multi-platform-controller
-  newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- name: multi-platform-otp-server
-  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-eaf916f5/production/components/multi-platform-controller/production: stone-prd-m01 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from eaf916f5 to 5dcd6ff4 on Wed Nov 13 19:07:34 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 6ecf188e..74959d84 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -14,9 +14,7 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements:
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
+              elements: []
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production/common/kustomization.yaml b/components/multi-platform-controller/production/common/kustomization.yaml
deleted file mode 100644
index 6d9488fa..00000000
--- a/components/multi-platform-controller/production/common/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: multi-platform-controller
-
-resources:
-- host-config.yaml
-- external-secrets.yaml
diff --git a/components/multi-platform-controller/production/common/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
similarity index 100%
rename from components/multi-platform-controller/production/common/external-secrets.yaml
rename to components/multi-platform-controller/production/external-secrets.yaml
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
similarity index 100%
rename from components/multi-platform-controller/production/common/host-config.yaml
rename to components/multi-platform-controller/production/host-config.yaml
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index c7e5fbc6..2182a6e2 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,9 +5,10 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
+- host-config.yaml
+- external-secrets.yaml
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- common
 
 images:
 - name: multi-platform-controller
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index f7186e62..00000000
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: multi-platform-controller
-
-resources:
-- ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- ../common
-
-images:
-- name: multi-platform-controller
-  newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- name: multi-platform-otp-server
-  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from eaf916f5 to 5dcd6ff4 on Wed Nov 13 19:07:34 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 6ecf188e..74959d84 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -14,9 +14,7 @@ spec:
                 environment: staging
                 clusterDir: ""
           - list:
-              elements:
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
+              elements: []
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production/common/kustomization.yaml b/components/multi-platform-controller/production/common/kustomization.yaml
deleted file mode 100644
index 6d9488fa..00000000
--- a/components/multi-platform-controller/production/common/kustomization.yaml
+++ /dev/null
@@ -1,8 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: multi-platform-controller
-
-resources:
-- host-config.yaml
-- external-secrets.yaml
diff --git a/components/multi-platform-controller/production/common/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
similarity index 100%
rename from components/multi-platform-controller/production/common/external-secrets.yaml
rename to components/multi-platform-controller/production/external-secrets.yaml
diff --git a/components/multi-platform-controller/production/common/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
similarity index 100%
rename from components/multi-platform-controller/production/common/host-config.yaml
rename to components/multi-platform-controller/production/host-config.yaml
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index c7e5fbc6..2182a6e2 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,9 +5,10 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
+- host-config.yaml
+- external-secrets.yaml
 - https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
 - https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- common
 
 images:
 - name: multi-platform-controller
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index f7186e62..00000000
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-namespace: multi-platform-controller
-
-resources:
-- ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- ../common
-
-images:
-- name: multi-platform-controller
-  newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f
-- name: multi-platform-otp-server
-  newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 53a13363d5e6cffb1bb4b4c260cb151f1fea672f 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-eaf916f5/development/app-of-apps-development.yaml
950c950,952
<           elements: []
---
>           elements:
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 66cfa739 to eaf916f5 on Wed Nov 13 18:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (1395 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
deleted file mode 100644
index 31ce11a3..00000000
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/gitops
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: gitops-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: gitops
-        server: '{{server}}'
-      syncPolicy:
-        automated: 
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml
deleted file mode 100644
index f6415a62..00000000
--- a/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- gitops.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e7b5e19c..c4de07ba 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - gitops
   - application-api
   - has
   - release
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index db3f5fb4..bbb4ac5d 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -79,12 +79,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index fb9292f6..4752cffc 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -17,11 +17,6 @@ patchesStrategicMerge:
   - delete-applications.yaml
 namespace: openshift-gitops
 patches:
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 49d0f500..281da6e7 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -1,10 +1,4 @@
 ---
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
 # Tempo is excluded from the production
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 1c614516..e19c6a33 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -17,11 +17,6 @@ patchesStrategicMerge:
   - delete-applications.yaml
 
 patches:
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index e70e6244..5763b5c1 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -1,10 +1,4 @@
 ---
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
 # Tempo is excluded from the staging
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index af361355..a11afbec 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -18,11 +18,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: multi-platform-controller
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 1461bdc7..e870826d 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -14,9 +14,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-ec'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-gitops'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-hac'
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index c049fbde..954eca52 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -34,17 +34,6 @@ rules:
   - get
   - list
   - watch
-- apiGroups:
-  - managed-gitops.redhat.com
-  resources:
-  - gitopsdeploymentmanagedenvironments
-  - gitopsdeployments
-  - gitopsdeploymentsyncruns
-  - operations
-  verbs:
-  - get
-  - list
-  - watch
 - apiGroups:
   - jvmbuildservice.io
   resources:
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index 30612a14..b95760f1 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -24,15 +24,6 @@ rules:
       - snapshots
     verbs:
       - '*'
-  - apiGroups:
-      - managed-gitops.redhat.com
-    resources:
-      - gitopsdeploymentmanagedenvironments
-      - gitopsdeployments
-      - gitopsdeploymentsyncruns
-      - operations
-    verbs:
-      - '*'
   - apiGroups:
       - jvmbuildservice.io
     resources:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index 93633a1b..949e90a6 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -24,8 +24,6 @@ spec:
       - dora-metrics
       - enterprise-contract-service
       - external-secrets-operator
-      - gitops
-      - gitops-service-argocd
       - group-sync-operator
       - hac-pact-broker
       - image-controller
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 4be79041..3ac41f40 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -28,6 +28,5 @@ spec:
   conditions:
     - namespaces:
         - tekton-results
-        - gitops
         - openshift-adp
         - product-kubearchive
diff --git a/components/gitops/README.md b/components/gitops/README.md
deleted file mode 100644
index 079b4c19..00000000
--- a/components/gitops/README.md
+++ /dev/null
@@ -1,57 +0,0 @@
----
-title: GitOps Service
----
-
-Once the cluster is successfully bootstrapped, create a Namespace with the `argocd.argoproj.io/managed-by: gitops-service-argocd` label, for example:
-
-```yaml
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: (your-user-name)
-  labels:
-    argocd.argoproj.io/managed-by: gitops-service-argocd
-```
-
-The `argocd.argoproj.io/managed-by: gitops-service-argocd` label gives 'permission' to Argo CD (specifically, the instance in `gitops-service-argocd`) to deploy to your namespace.
-
-You may now create `GitOpsDeployment` resources, which the GitOps Service will respond to, deploying resources to your namespace:
-
-```yaml
-apiVersion: managed-gitops.redhat.com/v1alpha1
-kind: GitOpsDeployment
-
-metadata:
-  name: gitops-depl
-  namespace: (your-user-name)
-
-spec:
-
-  # Application/component to deploy
-  source:
-    repoURL: https://github.com/redhat-appstudio/gitops-repository-template
-    path: environments/overlays/dev
-
-  # destination: {}  # destination is user namespace if empty
-
-  # Only 'automated' type is currently supported: changes to the GitOps repo immediately take effect (as soon as Argo CD detects them).
-  type: automated
-```
-
-## Viewing the ArgoCD instance that is used to deploy user workloads
-
-* Determine the route
-
-```
-kubectl get  route/gitops-service-argocd-server  -n gitops-service-argocd -o template --template={{.spec.host}}
-```
-
-* Determine the password for the 'admin' user
-
-```
-kubectl get secret gitops-service-argocd-cluster -n gitops-service-argocd -o=jsonpath='{.data.admin\.password}' | base64 -d
-```
-
-Navigate to the URL found above and use *admin* as the user and the *password* from above.
-
-See the [GitOps Service M2 Demo script for more details](https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m2-demo#run-the-demo).
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
deleted file mode 100644
index 848bfdcc..00000000
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-gitops-component-maintainers
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-component-maintainer
diff --git a/components/gitops/base/authentication/gitops-clusterroles.yaml b/components/gitops/base/authentication/gitops-clusterroles.yaml
deleted file mode 100644
index 3872e644..00000000
--- a/components/gitops/base/authentication/gitops-clusterroles.yaml
+++ /dev/null
@@ -1,123 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-component-maintainer
-rules:
-
-  - apiGroups:
-      - apiextensions.k8s.io
-    verbs:
-      - get
-      - list
-      - watch
-    resources:
-      - customresourcedefinitions
-
-  - apiGroups:
-      - rbac.authorization.k8s.io
-    resources:
-      - clusterrolebindings
-      - clusterroles
-    verbs:
-      - get
-      - list
-      - watch
-
-  - apiGroups:
-      - rbac.authorization.k8s.io
-    resources:
-      - rolebindings
-      - roles
-    verbs:
-      - get
-      - list
-      - watch
-
-
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'bindings'
-      - 'configmaps'
-      - 'daemonsets'
-      - 'deployments'
-      - 'events'
-      - 'namespaces'
-      - 'nodes'
-      - 'pods'
-      - 'pods/log'
-      - 'replicas'
-      - 'replicasets'
-      - 'routes'
-      - 'secrets'
-      - 'serviceaccounts'
-      - 'services'
-      - 'statefulsets'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-
-  - apiGroups:
-      - appstudio.redhat.com
-    resources:
-      - snapshotenvironmentbindings
-    verbs:
-      - delete
-
-  - apiGroups:
-      - admissionregistration.k8s.io
-    resources:
-      - validatingwebhookconfigurations
-      - mutatingwebhookconfigurations
-    verbs:
-      - get
-      - list
-      - watch
-      - delete
-
-  - apiGroups: 
-      - operators.coreos.com
-    resources:
-      - catalogsources
-      - clusterserviceversions
-      - installplans
-      - operatorgroups
-      - subscriptions
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - "toolchain.dev.openshift.com"
-    resources:
-      - "spacerequests"
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - monitoring.coreos.com
-    resources:
-      - alertmanagers
-      - prometheuses
-      - prometheusrules
-      - servicemonitors
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - operators.coreos.com
-    resources:
-      - installplans
-    verbs:
-      - get
-      - list
-      - update
-      - patch
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
deleted file mode 100644
index b8baa3f2..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: gitops
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
deleted file mode 100644
index 845f0f1e..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: gitops-service-argocd
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
deleted file mode 100644
index 6a75b6f8..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: jgwest-tenant
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
deleted file mode 100644
index 00952847..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-namespace
-- gitops-service-argocd-namespace
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
deleted file mode 100644
index 16de7406..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- roles.yaml
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
deleted file mode 100644
index 6d6160e8..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
+++ /dev/null
@@ -1,61 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-all-access
-rules:
-  - apiGroups:
-      - '*'
-    resources:
-      - '*'
-    verbs:
-      - '*'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-read-all-access
-rules:
-  - apiGroups:
-      - '*'
-    resources:
-      - '*'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-read-access
-rules:
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'pods'
-      - 'pods/log'
-      - 'deployments'
-      - 'events'
-      - 'bindings'
-      - 'replicas'
-      - 'configmaps'
-      - 'namespaces'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-delete-pods-access
-rules:
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'pods'
-    verbs:
-      - 'delete'
diff --git a/components/gitops/base/authentication/kustomization.yaml b/components/gitops/base/authentication/kustomization.yaml
deleted file mode 100644
index 4c92317a..00000000
--- a/components/gitops/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-namespace-roles
-- gitops-clusterroles.yaml
-- gitops-clusterrolebindings.yaml
diff --git a/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml b/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml
deleted file mode 100644
index f175bc9a..00000000
--- a/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: gitops-service-postgres-rds-config
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: gitops-service-postgres-rds-config
diff --git a/components/gitops/base/external-secrets/kustomization.yaml b/components/gitops/base/external-secrets/kustomization.yaml
deleted file mode 100644
index ae69bea6..00000000
--- a/components/gitops/base/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-service-postgres-rds-config.yaml
-
-namespace: gitops
diff --git a/components/gitops/base/monitoring/kustomization.yaml b/components/gitops/base/monitoring/kustomization.yaml
deleted file mode 100644
index a8e188ff..00000000
--- a/components/gitops/base/monitoring/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- monitoring-all.yaml
-- monitoring-agent.yaml
-- monitoring-appstudio.yaml
-- monitoring-core.yaml
-
-namespace: gitops
-
diff --git a/components/gitops/base/monitoring/monitoring-agent.yaml b/components/gitops/base/monitoring/monitoring-agent.yaml
deleted file mode 100644
index 2d3c540c..00000000
--- a/components/gitops/base/monitoring/monitoring-agent.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-service-agent-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-service-agent-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-service-agent
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: cluster-agent-controller-manager
diff --git a/components/gitops/base/monitoring/monitoring-all.yaml b/components/gitops/base/monitoring/monitoring-all.yaml
deleted file mode 100644
index 999b5020..00000000
--- a/components/gitops/base/monitoring/monitoring-all.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: metrics-reader
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: metrics-reader
-  annotations:
-    kubernetes.io/service-account.name: metrics-reader
-type: kubernetes.io/service-account-token
diff --git a/components/gitops/base/monitoring/monitoring-appstudio.yaml b/components/gitops/base/monitoring/monitoring-appstudio.yaml
deleted file mode 100644
index 2c5d16ca..00000000
--- a/components/gitops/base/monitoring/monitoring-appstudio.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-appstudio-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-appstudio-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-appstudio-service
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: appstudio-controller-manager
diff --git a/components/gitops/base/monitoring/monitoring-core.yaml b/components/gitops/base/monitoring/monitoring-core.yaml
deleted file mode 100644
index 7c0eb1d3..00000000
--- a/components/gitops/base/monitoring/monitoring-core.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-core-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-core-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-core-service
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: backend-controller-manager
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
deleted file mode 100644
index 322bdd57..00000000
--- a/components/gitops/development/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../openshift-gitops/overlays/production-and-dev
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
deleted file mode 100644
index 8bab205d..00000000
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../../../../openshift-gitops/cluster-rbac
-- subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
deleted file mode 100644
index 8a97fbdd..00000000
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: openshift-gitops-operator
-  namespace: openshift-operators
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  channel: gitops-1.9
-  installPlanApproval: Automatic
-  name: openshift-gitops-operator
-  source: redhat-operators
-  sourceNamespace: openshift-marketplace
diff --git a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
deleted file mode 100644
index 8bab205d..00000000
--- a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../../../../openshift-gitops/cluster-rbac
-- subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml b/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml
deleted file mode 100644
index 8a97fbdd..00000000
--- a/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: openshift-gitops-operator
-  namespace: openshift-operators
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  channel: gitops-1.9
-  installPlanApproval: Automatic
-  name: openshift-gitops-operator
-  source: redhat-operators
-  sourceNamespace: openshift-marketplace
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
deleted file mode 100644
index 510e47fc..00000000
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-read-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-read-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-all-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-all-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
diff --git a/components/gitops/production/base/authentication/kustomization.yaml b/components/gitops/production/base/authentication/kustomization.yaml
deleted file mode 100644
index 9c91d96c..00000000
--- a/components/gitops/production/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - gitops-rolebindings.yaml
-  - ../../../base/authentication
\ No newline at end of file
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
deleted file mode 100644
index 76d50070..00000000
--- a/components/gitops/production/base/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../../openshift-gitops/overlays/production-and-dev
-- ../../base/external-secrets
-- ../../base/monitoring
-- authentication
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-commonAnnotations:
-  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 3a9a4e25..00000000
--- a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
deleted file mode 100644
index ac1d99ad..00000000
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-allow-team-access-to-jgwest-tenant
-  namespace: jgwest-tenant
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
diff --git a/components/gitops/production/stone-prd-m01/kustomization.yaml b/components/gitops/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index 957e5200..00000000
--- a/components/gitops/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-- gitops-team-member-namespaces.yaml
-- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 808ef3a0..00000000
--- a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-rh01/kustomization.yaml b/components/gitops/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 6b98cf70..00000000
--- a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/stone-prod-p01-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p01/kustomization.yaml b/components/gitops/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index b9c52c55..00000000
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p02/kustomization.yaml b/components/gitops/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
deleted file mode 100644
index bba17f17..00000000
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-read-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-read-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-delete-pods-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-delete-pods-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-delete-pods-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-delete-pods-access
\ No newline at end of file
diff --git a/components/gitops/staging/base/authentication/kustomization.yaml b/components/gitops/staging/base/authentication/kustomization.yaml
deleted file mode 100644
index 7105d7d5..00000000
--- a/components/gitops/staging/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-rolebindings.yaml
-- ../../../base/authentication
\ No newline at end of file
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
deleted file mode 100644
index edbdd2da..00000000
--- a/components/gitops/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../../openshift-gitops/overlays/staging
-- ../../base/external-secrets
-- ../../base/monitoring
-- authentication
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-commonAnnotations:
-  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index c849fdff..00000000
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stage-p01/kustomization.yaml b/components/gitops/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 7670f5a7..00000000
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/kustomization.yaml b/components/gitops/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 6aa6f3c6..0964f6ec 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -4,7 +4,6 @@ resources:
 - kubesaw/
 - build-service/
 - image-controller/
-- managed-gitops/
 - dora-metrics/
 - has/
 - jvm-build-service/
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml
deleted file mode 100644
index 3016af18..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-gitops-service
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-gitops-service
-    key: gitops-dashboard.json
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml
deleted file mode 100644
index 1bf16dc1..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-gitops-service-argocd
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-gitops-service
-    key: gitops-argocd-dashboard.json
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml
deleted file mode 100644
index dbd97ed5..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/base/monitoring/grafana-dashboards-new?ref=23253fe449172c7907da9675d6c42bcd670c907e
-- dashboard.yaml
-- gitops-service-argocd-dashboard.yaml
\ No newline at end of file
diff --git a/hack/bootstrap-member-cluster.sh b/hack/bootstrap-member-cluster.sh
index 7fc37b31..cfd1c97e 100755
--- a/hack/bootstrap-member-cluster.sh
+++ b/hack/bootstrap-member-cluster.sh
@@ -5,7 +5,6 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/create-plnsvc-secrets.sh"
-    "${ROOT}/secret-creator/create-gitops-secrets.sh"
 
     [[ -z "$MY_GITHUB_TOKEN" ]] ||
         "${ROOT}/secret-creator/create-github-secret.sh" "$MY_GITHUB_TOKEN" "${GITHUB_TOKENS_LIST:-""}"
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index b757a5ed..b8105093 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard ci-helper-app internal-services application-api
+oc delete project enterprise-contract-service quality-dashboard ci-helper-app internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/secret-creator/create-gitops-secrets.sh b/hack/secret-creator/create-gitops-secrets.sh
deleted file mode 100755
index f7f3ec8a..00000000
--- a/hack/secret-creator/create-gitops-secrets.sh
+++ /dev/null
@@ -1,30 +0,0 @@
-#!/bin/bash -e
-
-main() {
-    echo "Setting secrets for GitOps"
-    create_namespace
-    create_db_secret
-}
-
-create_namespace() {
-    if kubectl get namespace gitops &>/dev/null; then
-        echo "gitops namespace already exists, skipping creation"
-        return
-    fi
-    kubectl create namespace gitops -o yaml --dry-run=client | oc apply -f-
-}
-
-create_db_secret() {
-    echo "Creating DB secret" >&2
-    if kubectl get secret -n gitops gitops-postgresql-staging &>/dev/null; then
-        echo "DB secret already exists, skipping creation"
-        return
-    fi
-    kubectl create secret generic gitops-postgresql-staging \
-        --namespace=gitops \
-        --from-literal=postgresql-password="$(openssl rand -base64 20)"
-}
-
-if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
-    main "$@"
-fi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (98 lines)</summary>  

``` 
./commit-66cfa739/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
118a119,127
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   - gitopsdeployments
>   - gitopsdeploymentsyncruns
>   - operations
>   verbs:
>   - '*'
> - apiGroups:
455a465,475
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   - gitopsdeployments
>   - gitopsdeploymentsyncruns
>   - operations
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
563a584,586
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
621a645,647
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
679a706,708
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
735a765,767
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops
./commit-66cfa739/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
118a119,127
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   - gitopsdeployments
>   - gitopsdeploymentsyncruns
>   - operations
>   verbs:
>   - '*'
> - apiGroups:
455a465,475
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   - gitopsdeployments
>   - gitopsdeploymentsyncruns
>   - operations
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
563a584,586
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
621a645,647
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
679a706,708
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
735a765,767
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops
./commit-66cfa739/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
133a134,135
>     - gitops
>     - gitops-service-argocd
./commit-66cfa739/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
133a134,135
>     - gitops
>     - gitops-service-argocd
./commit-66cfa739/production/components/backup/production/stone-prod-p01/kustomize.out.yaml
133a134,135
>     - gitops
>     - gitops-service-argocd
./commit-66cfa739/production/components/backup/production/stone-prod-p02/kustomize.out.yaml
133a134,135
>     - gitops
>     - gitops-service-argocd
./commit-66cfa739/production/components/cluster-secret-store/production/kustomize.out.yaml
66a67
>     - gitops
./commit-66cfa739/production/components: gitops 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 66cfa739 to eaf916f5 on Wed Nov 13 18:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (1395 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
deleted file mode 100644
index 31ce11a3..00000000
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/gitops
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: gitops-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: gitops
-        server: '{{server}}'
-      syncPolicy:
-        automated: 
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml
deleted file mode 100644
index f6415a62..00000000
--- a/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- gitops.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e7b5e19c..c4de07ba 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - gitops
   - application-api
   - has
   - release
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index db3f5fb4..bbb4ac5d 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -79,12 +79,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index fb9292f6..4752cffc 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -17,11 +17,6 @@ patchesStrategicMerge:
   - delete-applications.yaml
 namespace: openshift-gitops
 patches:
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 49d0f500..281da6e7 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -1,10 +1,4 @@
 ---
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
 # Tempo is excluded from the production
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 1c614516..e19c6a33 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -17,11 +17,6 @@ patchesStrategicMerge:
   - delete-applications.yaml
 
 patches:
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index e70e6244..5763b5c1 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -1,10 +1,4 @@
 ---
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
 # Tempo is excluded from the staging
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index af361355..a11afbec 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -18,11 +18,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: multi-platform-controller
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 1461bdc7..e870826d 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -14,9 +14,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-ec'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-gitops'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-hac'
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index c049fbde..954eca52 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -34,17 +34,6 @@ rules:
   - get
   - list
   - watch
-- apiGroups:
-  - managed-gitops.redhat.com
-  resources:
-  - gitopsdeploymentmanagedenvironments
-  - gitopsdeployments
-  - gitopsdeploymentsyncruns
-  - operations
-  verbs:
-  - get
-  - list
-  - watch
 - apiGroups:
   - jvmbuildservice.io
   resources:
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index 30612a14..b95760f1 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -24,15 +24,6 @@ rules:
       - snapshots
     verbs:
       - '*'
-  - apiGroups:
-      - managed-gitops.redhat.com
-    resources:
-      - gitopsdeploymentmanagedenvironments
-      - gitopsdeployments
-      - gitopsdeploymentsyncruns
-      - operations
-    verbs:
-      - '*'
   - apiGroups:
       - jvmbuildservice.io
     resources:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index 93633a1b..949e90a6 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -24,8 +24,6 @@ spec:
       - dora-metrics
       - enterprise-contract-service
       - external-secrets-operator
-      - gitops
-      - gitops-service-argocd
       - group-sync-operator
       - hac-pact-broker
       - image-controller
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 4be79041..3ac41f40 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -28,6 +28,5 @@ spec:
   conditions:
     - namespaces:
         - tekton-results
-        - gitops
         - openshift-adp
         - product-kubearchive
diff --git a/components/gitops/README.md b/components/gitops/README.md
deleted file mode 100644
index 079b4c19..00000000
--- a/components/gitops/README.md
+++ /dev/null
@@ -1,57 +0,0 @@
----
-title: GitOps Service
----
-
-Once the cluster is successfully bootstrapped, create a Namespace with the `argocd.argoproj.io/managed-by: gitops-service-argocd` label, for example:
-
-```yaml
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: (your-user-name)
-  labels:
-    argocd.argoproj.io/managed-by: gitops-service-argocd
-```
-
-The `argocd.argoproj.io/managed-by: gitops-service-argocd` label gives 'permission' to Argo CD (specifically, the instance in `gitops-service-argocd`) to deploy to your namespace.
-
-You may now create `GitOpsDeployment` resources, which the GitOps Service will respond to, deploying resources to your namespace:
-
-```yaml
-apiVersion: managed-gitops.redhat.com/v1alpha1
-kind: GitOpsDeployment
-
-metadata:
-  name: gitops-depl
-  namespace: (your-user-name)
-
-spec:
-
-  # Application/component to deploy
-  source:
-    repoURL: https://github.com/redhat-appstudio/gitops-repository-template
-    path: environments/overlays/dev
-
-  # destination: {}  # destination is user namespace if empty
-
-  # Only 'automated' type is currently supported: changes to the GitOps repo immediately take effect (as soon as Argo CD detects them).
-  type: automated
-```
-
-## Viewing the ArgoCD instance that is used to deploy user workloads
-
-* Determine the route
-
-```
-kubectl get  route/gitops-service-argocd-server  -n gitops-service-argocd -o template --template={{.spec.host}}
-```
-
-* Determine the password for the 'admin' user
-
-```
-kubectl get secret gitops-service-argocd-cluster -n gitops-service-argocd -o=jsonpath='{.data.admin\.password}' | base64 -d
-```
-
-Navigate to the URL found above and use *admin* as the user and the *password* from above.
-
-See the [GitOps Service M2 Demo script for more details](https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m2-demo#run-the-demo).
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
deleted file mode 100644
index 848bfdcc..00000000
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-gitops-component-maintainers
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-component-maintainer
diff --git a/components/gitops/base/authentication/gitops-clusterroles.yaml b/components/gitops/base/authentication/gitops-clusterroles.yaml
deleted file mode 100644
index 3872e644..00000000
--- a/components/gitops/base/authentication/gitops-clusterroles.yaml
+++ /dev/null
@@ -1,123 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-component-maintainer
-rules:
-
-  - apiGroups:
-      - apiextensions.k8s.io
-    verbs:
-      - get
-      - list
-      - watch
-    resources:
-      - customresourcedefinitions
-
-  - apiGroups:
-      - rbac.authorization.k8s.io
-    resources:
-      - clusterrolebindings
-      - clusterroles
-    verbs:
-      - get
-      - list
-      - watch
-
-  - apiGroups:
-      - rbac.authorization.k8s.io
-    resources:
-      - rolebindings
-      - roles
-    verbs:
-      - get
-      - list
-      - watch
-
-
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'bindings'
-      - 'configmaps'
-      - 'daemonsets'
-      - 'deployments'
-      - 'events'
-      - 'namespaces'
-      - 'nodes'
-      - 'pods'
-      - 'pods/log'
-      - 'replicas'
-      - 'replicasets'
-      - 'routes'
-      - 'secrets'
-      - 'serviceaccounts'
-      - 'services'
-      - 'statefulsets'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-
-  - apiGroups:
-      - appstudio.redhat.com
-    resources:
-      - snapshotenvironmentbindings
-    verbs:
-      - delete
-
-  - apiGroups:
-      - admissionregistration.k8s.io
-    resources:
-      - validatingwebhookconfigurations
-      - mutatingwebhookconfigurations
-    verbs:
-      - get
-      - list
-      - watch
-      - delete
-
-  - apiGroups: 
-      - operators.coreos.com
-    resources:
-      - catalogsources
-      - clusterserviceversions
-      - installplans
-      - operatorgroups
-      - subscriptions
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - "toolchain.dev.openshift.com"
-    resources:
-      - "spacerequests"
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - monitoring.coreos.com
-    resources:
-      - alertmanagers
-      - prometheuses
-      - prometheusrules
-      - servicemonitors
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - operators.coreos.com
-    resources:
-      - installplans
-    verbs:
-      - get
-      - list
-      - update
-      - patch
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
deleted file mode 100644
index b8baa3f2..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: gitops
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
deleted file mode 100644
index 845f0f1e..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: gitops-service-argocd
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
deleted file mode 100644
index 6a75b6f8..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: jgwest-tenant
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
deleted file mode 100644
index 00952847..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-namespace
-- gitops-service-argocd-namespace
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
deleted file mode 100644
index 16de7406..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- roles.yaml
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
deleted file mode 100644
index 6d6160e8..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
+++ /dev/null
@@ -1,61 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-all-access
-rules:
-  - apiGroups:
-      - '*'
-    resources:
-      - '*'
-    verbs:
-      - '*'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-read-all-access
-rules:
-  - apiGroups:
-      - '*'
-    resources:
-      - '*'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-read-access
-rules:
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'pods'
-      - 'pods/log'
-      - 'deployments'
-      - 'events'
-      - 'bindings'
-      - 'replicas'
-      - 'configmaps'
-      - 'namespaces'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-delete-pods-access
-rules:
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'pods'
-    verbs:
-      - 'delete'
diff --git a/components/gitops/base/authentication/kustomization.yaml b/components/gitops/base/authentication/kustomization.yaml
deleted file mode 100644
index 4c92317a..00000000
--- a/components/gitops/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-namespace-roles
-- gitops-clusterroles.yaml
-- gitops-clusterrolebindings.yaml
diff --git a/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml b/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml
deleted file mode 100644
index f175bc9a..00000000
--- a/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: gitops-service-postgres-rds-config
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: gitops-service-postgres-rds-config
diff --git a/components/gitops/base/external-secrets/kustomization.yaml b/components/gitops/base/external-secrets/kustomization.yaml
deleted file mode 100644
index ae69bea6..00000000
--- a/components/gitops/base/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-service-postgres-rds-config.yaml
-
-namespace: gitops
diff --git a/components/gitops/base/monitoring/kustomization.yaml b/components/gitops/base/monitoring/kustomization.yaml
deleted file mode 100644
index a8e188ff..00000000
--- a/components/gitops/base/monitoring/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- monitoring-all.yaml
-- monitoring-agent.yaml
-- monitoring-appstudio.yaml
-- monitoring-core.yaml
-
-namespace: gitops
-
diff --git a/components/gitops/base/monitoring/monitoring-agent.yaml b/components/gitops/base/monitoring/monitoring-agent.yaml
deleted file mode 100644
index 2d3c540c..00000000
--- a/components/gitops/base/monitoring/monitoring-agent.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-service-agent-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-service-agent-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-service-agent
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: cluster-agent-controller-manager
diff --git a/components/gitops/base/monitoring/monitoring-all.yaml b/components/gitops/base/monitoring/monitoring-all.yaml
deleted file mode 100644
index 999b5020..00000000
--- a/components/gitops/base/monitoring/monitoring-all.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: metrics-reader
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: metrics-reader
-  annotations:
-    kubernetes.io/service-account.name: metrics-reader
-type: kubernetes.io/service-account-token
diff --git a/components/gitops/base/monitoring/monitoring-appstudio.yaml b/components/gitops/base/monitoring/monitoring-appstudio.yaml
deleted file mode 100644
index 2c5d16ca..00000000
--- a/components/gitops/base/monitoring/monitoring-appstudio.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-appstudio-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-appstudio-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-appstudio-service
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: appstudio-controller-manager
diff --git a/components/gitops/base/monitoring/monitoring-core.yaml b/components/gitops/base/monitoring/monitoring-core.yaml
deleted file mode 100644
index 7c0eb1d3..00000000
--- a/components/gitops/base/monitoring/monitoring-core.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-core-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-core-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-core-service
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: backend-controller-manager
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
deleted file mode 100644
index 322bdd57..00000000
--- a/components/gitops/development/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../openshift-gitops/overlays/production-and-dev
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
deleted file mode 100644
index 8bab205d..00000000
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../../../../openshift-gitops/cluster-rbac
-- subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
deleted file mode 100644
index 8a97fbdd..00000000
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: openshift-gitops-operator
-  namespace: openshift-operators
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  channel: gitops-1.9
-  installPlanApproval: Automatic
-  name: openshift-gitops-operator
-  source: redhat-operators
-  sourceNamespace: openshift-marketplace
diff --git a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
deleted file mode 100644
index 8bab205d..00000000
--- a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../../../../openshift-gitops/cluster-rbac
-- subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml b/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml
deleted file mode 100644
index 8a97fbdd..00000000
--- a/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: openshift-gitops-operator
-  namespace: openshift-operators
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  channel: gitops-1.9
-  installPlanApproval: Automatic
-  name: openshift-gitops-operator
-  source: redhat-operators
-  sourceNamespace: openshift-marketplace
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
deleted file mode 100644
index 510e47fc..00000000
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-read-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-read-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-all-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-all-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
diff --git a/components/gitops/production/base/authentication/kustomization.yaml b/components/gitops/production/base/authentication/kustomization.yaml
deleted file mode 100644
index 9c91d96c..00000000
--- a/components/gitops/production/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - gitops-rolebindings.yaml
-  - ../../../base/authentication
\ No newline at end of file
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
deleted file mode 100644
index 76d50070..00000000
--- a/components/gitops/production/base/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../../openshift-gitops/overlays/production-and-dev
-- ../../base/external-secrets
-- ../../base/monitoring
-- authentication
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-commonAnnotations:
-  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 3a9a4e25..00000000
--- a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
deleted file mode 100644
index ac1d99ad..00000000
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-allow-team-access-to-jgwest-tenant
-  namespace: jgwest-tenant
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
diff --git a/components/gitops/production/stone-prd-m01/kustomization.yaml b/components/gitops/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index 957e5200..00000000
--- a/components/gitops/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-- gitops-team-member-namespaces.yaml
-- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 808ef3a0..00000000
--- a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-rh01/kustomization.yaml b/components/gitops/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 6b98cf70..00000000
--- a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/stone-prod-p01-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p01/kustomization.yaml b/components/gitops/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index b9c52c55..00000000
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p02/kustomization.yaml b/components/gitops/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
deleted file mode 100644
index bba17f17..00000000
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-read-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-read-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-delete-pods-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-delete-pods-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-delete-pods-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-delete-pods-access
\ No newline at end of file
diff --git a/components/gitops/staging/base/authentication/kustomization.yaml b/components/gitops/staging/base/authentication/kustomization.yaml
deleted file mode 100644
index 7105d7d5..00000000
--- a/components/gitops/staging/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-rolebindings.yaml
-- ../../../base/authentication
\ No newline at end of file
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
deleted file mode 100644
index edbdd2da..00000000
--- a/components/gitops/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../../openshift-gitops/overlays/staging
-- ../../base/external-secrets
-- ../../base/monitoring
-- authentication
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-commonAnnotations:
-  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index c849fdff..00000000
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stage-p01/kustomization.yaml b/components/gitops/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 7670f5a7..00000000
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/kustomization.yaml b/components/gitops/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 6aa6f3c6..0964f6ec 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -4,7 +4,6 @@ resources:
 - kubesaw/
 - build-service/
 - image-controller/
-- managed-gitops/
 - dora-metrics/
 - has/
 - jvm-build-service/
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml
deleted file mode 100644
index 3016af18..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-gitops-service
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-gitops-service
-    key: gitops-dashboard.json
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml
deleted file mode 100644
index 1bf16dc1..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-gitops-service-argocd
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-gitops-service
-    key: gitops-argocd-dashboard.json
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml
deleted file mode 100644
index dbd97ed5..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/base/monitoring/grafana-dashboards-new?ref=23253fe449172c7907da9675d6c42bcd670c907e
-- dashboard.yaml
-- gitops-service-argocd-dashboard.yaml
\ No newline at end of file
diff --git a/hack/bootstrap-member-cluster.sh b/hack/bootstrap-member-cluster.sh
index 7fc37b31..cfd1c97e 100755
--- a/hack/bootstrap-member-cluster.sh
+++ b/hack/bootstrap-member-cluster.sh
@@ -5,7 +5,6 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/create-plnsvc-secrets.sh"
-    "${ROOT}/secret-creator/create-gitops-secrets.sh"
 
     [[ -z "$MY_GITHUB_TOKEN" ]] ||
         "${ROOT}/secret-creator/create-github-secret.sh" "$MY_GITHUB_TOKEN" "${GITHUB_TOKENS_LIST:-""}"
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index b757a5ed..b8105093 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard ci-helper-app internal-services application-api
+oc delete project enterprise-contract-service quality-dashboard ci-helper-app internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/secret-creator/create-gitops-secrets.sh b/hack/secret-creator/create-gitops-secrets.sh
deleted file mode 100755
index f7f3ec8a..00000000
--- a/hack/secret-creator/create-gitops-secrets.sh
+++ /dev/null
@@ -1,30 +0,0 @@
-#!/bin/bash -e
-
-main() {
-    echo "Setting secrets for GitOps"
-    create_namespace
-    create_db_secret
-}
-
-create_namespace() {
-    if kubectl get namespace gitops &>/dev/null; then
-        echo "gitops namespace already exists, skipping creation"
-        return
-    fi
-    kubectl create namespace gitops -o yaml --dry-run=client | oc apply -f-
-}
-
-create_db_secret() {
-    echo "Creating DB secret" >&2
-    if kubectl get secret -n gitops gitops-postgresql-staging &>/dev/null; then
-        echo "DB secret already exists, skipping creation"
-        return
-    fi
-    kubectl create secret generic gitops-postgresql-staging \
-        --namespace=gitops \
-        --from-literal=postgresql-password="$(openssl rand -base64 20)"
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
./commit-66cfa739/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
118a119,127
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   - gitopsdeployments
>   - gitopsdeploymentsyncruns
>   - operations
>   verbs:
>   - '*'
> - apiGroups:
455a465,475
>   - managed-gitops.redhat.com
>   resources:
>   - gitopsdeploymentmanagedenvironments
>   - gitopsdeployments
>   - gitopsdeploymentsyncruns
>   - operations
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
563a584,586
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
621a645,647
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
679a706,708
>   name: konflux-gitops
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
735a765,767
> - apiGroup: rbac.authorization.k8s.io
>   kind: Group
>   name: konflux-gitops
./commit-66cfa739/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
133a134,135
>     - gitops
>     - gitops-service-argocd
./commit-66cfa739/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
133a134,135
>     - gitops
>     - gitops-service-argocd
./commit-66cfa739/staging/components/cluster-secret-store/staging/kustomize.out.yaml
67a68
>     - gitops
./commit-66cfa739/staging/components: gitops 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 66cfa739 to eaf916f5 on Wed Nov 13 18:07:21 2024 </h3>  
 
<details> 
<summary>Git Diff (1395 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
deleted file mode 100644
index 31ce11a3..00000000
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ /dev/null
@@ -1,53 +0,0 @@
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-spec:
-  generators:
-    - merge:
-        mergeKeys:
-          - nameNormalized
-        generators:
-          - clusters:
-              values:
-                sourceRoot: components/gitops
-                environment: staging
-                clusterDir: base
-          - list:
-              elements:
-                - nameNormalized: stone-stg-rh01
-                  values.clusterDir: stone-stg-rh01
-                - nameNormalized: stone-prd-m01
-                  values.clusterDir: stone-prd-m01
-                - nameNormalized: stone-prd-rh01
-                  values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stage-p01
-                  values.clusterDir: stone-stage-p01
-                - nameNormalized: stone-prod-p01
-                  values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-prod-p02
-                  values.clusterDir: stone-prod-p02
-  template:
-    metadata:
-      name: gitops-{{nameNormalized}}
-    spec:
-      project: default
-      source:
-        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
-        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
-        targetRevision: main
-      destination:
-        namespace: gitops
-        server: '{{server}}'
-      syncPolicy:
-        automated: 
-          prune: true
-          selfHeal: true
-        syncOptions:
-        - CreateNamespace=true
-        retry:
-          limit: -1
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml
deleted file mode 100644
index f6415a62..00000000
--- a/argo-cd-apps/base/member/infra-deployments/gitops/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- gitops.yaml
-components:
-  - ../../../../k-components/deploy-to-member-cluster-merge-generator
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index e7b5e19c..c4de07ba 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - gitops
   - application-api
   - has
   - release
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index db3f5fb4..bbb4ac5d 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -79,12 +79,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: workspaces
 $patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index fb9292f6..4752cffc 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -17,11 +17,6 @@ patchesStrategicMerge:
   - delete-applications.yaml
 namespace: openshift-gitops
 patches:
-  - path: development-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: development-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 49d0f500..281da6e7 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -1,10 +1,4 @@
 ---
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
 # Tempo is excluded from the production
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 1c614516..e19c6a33 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -17,11 +17,6 @@ patchesStrategicMerge:
   - delete-applications.yaml
 
 patches:
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index e70e6244..5763b5c1 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -1,10 +1,4 @@
 ---
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: gitops
-$patch: delete
----
 # Tempo is excluded from the staging
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index af361355..a11afbec 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -18,11 +18,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: multi-platform-controller
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: gitops
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet
diff --git a/components/authentication/base/everyone-can-view-patch.yaml b/components/authentication/base/everyone-can-view-patch.yaml
index 1461bdc7..e870826d 100644
--- a/components/authentication/base/everyone-can-view-patch.yaml
+++ b/components/authentication/base/everyone-can-view-patch.yaml
@@ -14,9 +14,6 @@
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-ec'
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'konflux-gitops'
     - kind: Group
       apiGroup: rbac.authorization.k8s.io
       name: 'konflux-hac'
diff --git a/components/authentication/base/everyone-can-view.yaml b/components/authentication/base/everyone-can-view.yaml
index c049fbde..954eca52 100644
--- a/components/authentication/base/everyone-can-view.yaml
+++ b/components/authentication/base/everyone-can-view.yaml
@@ -34,17 +34,6 @@ rules:
   - get
   - list
   - watch
-- apiGroups:
-  - managed-gitops.redhat.com
-  resources:
-  - gitopsdeploymentmanagedenvironments
-  - gitopsdeployments
-  - gitopsdeploymentsyncruns
-  - operations
-  verbs:
-  - get
-  - list
-  - watch
 - apiGroups:
   - jvmbuildservice.io
   resources:
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index 30612a14..b95760f1 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -24,15 +24,6 @@ rules:
       - snapshots
     verbs:
       - '*'
-  - apiGroups:
-      - managed-gitops.redhat.com
-    resources:
-      - gitopsdeploymentmanagedenvironments
-      - gitopsdeployments
-      - gitopsdeploymentsyncruns
-      - operations
-    verbs:
-      - '*'
   - apiGroups:
       - jvmbuildservice.io
     resources:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index 93633a1b..949e90a6 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -24,8 +24,6 @@ spec:
       - dora-metrics
       - enterprise-contract-service
       - external-secrets-operator
-      - gitops
-      - gitops-service-argocd
       - group-sync-operator
       - hac-pact-broker
       - image-controller
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index 4be79041..3ac41f40 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -28,6 +28,5 @@ spec:
   conditions:
     - namespaces:
         - tekton-results
-        - gitops
         - openshift-adp
         - product-kubearchive
diff --git a/components/gitops/README.md b/components/gitops/README.md
deleted file mode 100644
index 079b4c19..00000000
--- a/components/gitops/README.md
+++ /dev/null
@@ -1,57 +0,0 @@
----
-title: GitOps Service
----
-
-Once the cluster is successfully bootstrapped, create a Namespace with the `argocd.argoproj.io/managed-by: gitops-service-argocd` label, for example:
-
-```yaml
-apiVersion: v1
-kind: Namespace
-metadata:
-  name: (your-user-name)
-  labels:
-    argocd.argoproj.io/managed-by: gitops-service-argocd
-```
-
-The `argocd.argoproj.io/managed-by: gitops-service-argocd` label gives 'permission' to Argo CD (specifically, the instance in `gitops-service-argocd`) to deploy to your namespace.
-
-You may now create `GitOpsDeployment` resources, which the GitOps Service will respond to, deploying resources to your namespace:
-
-```yaml
-apiVersion: managed-gitops.redhat.com/v1alpha1
-kind: GitOpsDeployment
-
-metadata:
-  name: gitops-depl
-  namespace: (your-user-name)
-
-spec:
-
-  # Application/component to deploy
-  source:
-    repoURL: https://github.com/redhat-appstudio/gitops-repository-template
-    path: environments/overlays/dev
-
-  # destination: {}  # destination is user namespace if empty
-
-  # Only 'automated' type is currently supported: changes to the GitOps repo immediately take effect (as soon as Argo CD detects them).
-  type: automated
-```
-
-## Viewing the ArgoCD instance that is used to deploy user workloads
-
-* Determine the route
-
-```
-kubectl get  route/gitops-service-argocd-server  -n gitops-service-argocd -o template --template={{.spec.host}}
-```
-
-* Determine the password for the 'admin' user
-
-```
-kubectl get secret gitops-service-argocd-cluster -n gitops-service-argocd -o=jsonpath='{.data.admin\.password}' | base64 -d
-```
-
-Navigate to the URL found above and use *admin* as the user and the *password* from above.
-
-See the [GitOps Service M2 Demo script for more details](https://github.com/redhat-appstudio/managed-gitops/tree/main/examples/m2-demo#run-the-demo).
diff --git a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml b/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
deleted file mode 100644
index 848bfdcc..00000000
--- a/components/gitops/base/authentication/gitops-clusterrolebindings.yaml
+++ /dev/null
@@ -1,14 +0,0 @@
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-gitops-component-maintainers
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-component-maintainer
diff --git a/components/gitops/base/authentication/gitops-clusterroles.yaml b/components/gitops/base/authentication/gitops-clusterroles.yaml
deleted file mode 100644
index 3872e644..00000000
--- a/components/gitops/base/authentication/gitops-clusterroles.yaml
+++ /dev/null
@@ -1,123 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-component-maintainer
-rules:
-
-  - apiGroups:
-      - apiextensions.k8s.io
-    verbs:
-      - get
-      - list
-      - watch
-    resources:
-      - customresourcedefinitions
-
-  - apiGroups:
-      - rbac.authorization.k8s.io
-    resources:
-      - clusterrolebindings
-      - clusterroles
-    verbs:
-      - get
-      - list
-      - watch
-
-  - apiGroups:
-      - rbac.authorization.k8s.io
-    resources:
-      - rolebindings
-      - roles
-    verbs:
-      - get
-      - list
-      - watch
-
-
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'bindings'
-      - 'configmaps'
-      - 'daemonsets'
-      - 'deployments'
-      - 'events'
-      - 'namespaces'
-      - 'nodes'
-      - 'pods'
-      - 'pods/log'
-      - 'replicas'
-      - 'replicasets'
-      - 'routes'
-      - 'secrets'
-      - 'serviceaccounts'
-      - 'services'
-      - 'statefulsets'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-
-  - apiGroups:
-      - appstudio.redhat.com
-    resources:
-      - snapshotenvironmentbindings
-    verbs:
-      - delete
-
-  - apiGroups:
-      - admissionregistration.k8s.io
-    resources:
-      - validatingwebhookconfigurations
-      - mutatingwebhookconfigurations
-    verbs:
-      - get
-      - list
-      - watch
-      - delete
-
-  - apiGroups: 
-      - operators.coreos.com
-    resources:
-      - catalogsources
-      - clusterserviceversions
-      - installplans
-      - operatorgroups
-      - subscriptions
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - "toolchain.dev.openshift.com"
-    resources:
-      - "spacerequests"
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - monitoring.coreos.com
-    resources:
-      - alertmanagers
-      - prometheuses
-      - prometheusrules
-      - servicemonitors
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
-
-  - apiGroups:
-      - operators.coreos.com
-    resources:
-      - installplans
-    verbs:
-      - get
-      - list
-      - update
-      - patch
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
deleted file mode 100644
index b8baa3f2..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/gitops-namespace/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: gitops
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
deleted file mode 100644
index 845f0f1e..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/gitops-service-argocd-namespace/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: gitops-service-argocd
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
deleted file mode 100644
index 6a75b6f8..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/jgwest-tenant/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - ../roles
-
-namespace: jgwest-tenant
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
deleted file mode 100644
index 00952847..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-namespace
-- gitops-service-argocd-namespace
\ No newline at end of file
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
deleted file mode 100644
index 16de7406..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/roles/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- roles.yaml
diff --git a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml b/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
deleted file mode 100644
index 6d6160e8..00000000
--- a/components/gitops/base/authentication/gitops-namespace-roles/roles/roles.yaml
+++ /dev/null
@@ -1,61 +0,0 @@
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-all-access
-rules:
-  - apiGroups:
-      - '*'
-    resources:
-      - '*'
-    verbs:
-      - '*'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-read-all-access
-rules:
-  - apiGroups:
-      - '*'
-    resources:
-      - '*'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-read-access
-rules:
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'pods'
-      - 'pods/log'
-      - 'deployments'
-      - 'events'
-      - 'bindings'
-      - 'replicas'
-      - 'configmaps'
-      - 'namespaces'
-    verbs:
-      - 'get'
-      - 'list'
-      - 'watch'
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  name: gitops-namespaces-delete-pods-access
-rules:
-  - apiGroups:
-      - ''
-      - 'apps'
-    resources:
-      - 'pods'
-    verbs:
-      - 'delete'
diff --git a/components/gitops/base/authentication/kustomization.yaml b/components/gitops/base/authentication/kustomization.yaml
deleted file mode 100644
index 4c92317a..00000000
--- a/components/gitops/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-namespace-roles
-- gitops-clusterroles.yaml
-- gitops-clusterrolebindings.yaml
diff --git a/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml b/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml
deleted file mode 100644
index f175bc9a..00000000
--- a/components/gitops/base/external-secrets/gitops-service-postgres-rds-config.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: gitops-service-postgres-rds-config
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: "" # will be added by the overlays
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: gitops-service-postgres-rds-config
diff --git a/components/gitops/base/external-secrets/kustomization.yaml b/components/gitops/base/external-secrets/kustomization.yaml
deleted file mode 100644
index ae69bea6..00000000
--- a/components/gitops/base/external-secrets/kustomization.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-service-postgres-rds-config.yaml
-
-namespace: gitops
diff --git a/components/gitops/base/monitoring/kustomization.yaml b/components/gitops/base/monitoring/kustomization.yaml
deleted file mode 100644
index a8e188ff..00000000
--- a/components/gitops/base/monitoring/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- monitoring-all.yaml
-- monitoring-agent.yaml
-- monitoring-appstudio.yaml
-- monitoring-core.yaml
-
-namespace: gitops
-
diff --git a/components/gitops/base/monitoring/monitoring-agent.yaml b/components/gitops/base/monitoring/monitoring-agent.yaml
deleted file mode 100644
index 2d3c540c..00000000
--- a/components/gitops/base/monitoring/monitoring-agent.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-service-agent-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-service-agent-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-service-agent
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: cluster-agent-controller-manager
diff --git a/components/gitops/base/monitoring/monitoring-all.yaml b/components/gitops/base/monitoring/monitoring-all.yaml
deleted file mode 100644
index 999b5020..00000000
--- a/components/gitops/base/monitoring/monitoring-all.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  name: metrics-reader
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: metrics-reader
-  annotations:
-    kubernetes.io/service-account.name: metrics-reader
-type: kubernetes.io/service-account-token
diff --git a/components/gitops/base/monitoring/monitoring-appstudio.yaml b/components/gitops/base/monitoring/monitoring-appstudio.yaml
deleted file mode 100644
index 2c5d16ca..00000000
--- a/components/gitops/base/monitoring/monitoring-appstudio.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-appstudio-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-appstudio-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-appstudio-service
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: appstudio-controller-manager
diff --git a/components/gitops/base/monitoring/monitoring-core.yaml b/components/gitops/base/monitoring/monitoring-core.yaml
deleted file mode 100644
index 7c0eb1d3..00000000
--- a/components/gitops/base/monitoring/monitoring-core.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: prometheus-gitops-core-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: gitops-core-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  name: gitops-core-service
-spec:
-  endpoints:
-  - path: /metrics
-    interval: 15s
-    port: metrics
-    scheme: https
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      control-plane: backend-controller-manager
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
deleted file mode 100644
index 322bdd57..00000000
--- a/components/gitops/development/kustomization.yaml
+++ /dev/null
@@ -1,11 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../openshift-gitops/overlays/production-and-dev
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
deleted file mode 100644
index 8bab205d..00000000
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../../../../openshift-gitops/cluster-rbac
-- subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml b/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
deleted file mode 100644
index 8a97fbdd..00000000
--- a/components/gitops/openshift-gitops/overlays/production-and-dev/subscription-openshift-gitops.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: openshift-gitops-operator
-  namespace: openshift-operators
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  channel: gitops-1.9
-  installPlanApproval: Automatic
-  name: openshift-gitops-operator
-  source: redhat-operators
-  sourceNamespace: openshift-marketplace
diff --git a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml b/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
deleted file mode 100644
index 8bab205d..00000000
--- a/components/gitops/openshift-gitops/overlays/staging/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../../../../openshift-gitops/cluster-rbac
-- subscription-openshift-gitops.yaml
diff --git a/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml b/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml
deleted file mode 100644
index 8a97fbdd..00000000
--- a/components/gitops/openshift-gitops/overlays/staging/subscription-openshift-gitops.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  name: openshift-gitops-operator
-  namespace: openshift-operators
-  annotations:
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  channel: gitops-1.9
-  installPlanApproval: Automatic
-  name: openshift-gitops-operator
-  source: redhat-operators
-  sourceNamespace: openshift-marketplace
diff --git a/components/gitops/production/base/authentication/gitops-rolebindings.yaml b/components/gitops/production/base/authentication/gitops-rolebindings.yaml
deleted file mode 100644
index 510e47fc..00000000
--- a/components/gitops/production/base/authentication/gitops-rolebindings.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-read-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-read-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-all-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-all-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
diff --git a/components/gitops/production/base/authentication/kustomization.yaml b/components/gitops/production/base/authentication/kustomization.yaml
deleted file mode 100644
index 9c91d96c..00000000
--- a/components/gitops/production/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-  - gitops-rolebindings.yaml
-  - ../../../base/authentication
\ No newline at end of file
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
deleted file mode 100644
index 76d50070..00000000
--- a/components/gitops/production/base/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../../openshift-gitops/overlays/production-and-dev
-- ../../base/external-secrets
-- ../../base/monitoring
-- authentication
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-commonAnnotations:
-  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 3a9a4e25..00000000
--- a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml b/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
deleted file mode 100644
index ac1d99ad..00000000
--- a/components/gitops/production/stone-prd-m01/gitops-team-member-namespaces.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-allow-team-access-to-jgwest-tenant
-  namespace: jgwest-tenant
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops-admins
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
diff --git a/components/gitops/production/stone-prd-m01/kustomization.yaml b/components/gitops/production/stone-prd-m01/kustomization.yaml
deleted file mode 100644
index 957e5200..00000000
--- a/components/gitops/production/stone-prd-m01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-- gitops-team-member-namespaces.yaml
-- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 808ef3a0..00000000
--- a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-rh01/kustomization.yaml b/components/gitops/production/stone-prd-rh01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prd-rh01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 6b98cf70..00000000
--- a/components/gitops/production/stone-prod-p01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p01/stone-prod-p01-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p01/kustomization.yaml b/components/gitops/production/stone-prod-p01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prod-p01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index b9c52c55..00000000
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/gitops/production/stone-prod-p02/kustomization.yaml b/components/gitops/production/stone-prod-p02/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/production/stone-prod-p02/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml b/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
deleted file mode 100644
index bba17f17..00000000
--- a/components/gitops/staging/base/authentication/gitops-rolebindings.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-read-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-read-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-read-all-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-namespace-delete-pods-access
-  namespace: gitops
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-delete-pods-access
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-service-argocd-namespace-delete-pods-access
-  namespace: gitops-service-argocd
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-delete-pods-access
\ No newline at end of file
diff --git a/components/gitops/staging/base/authentication/kustomization.yaml b/components/gitops/staging/base/authentication/kustomization.yaml
deleted file mode 100644
index 7105d7d5..00000000
--- a/components/gitops/staging/base/authentication/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- gitops-rolebindings.yaml
-- ../../../base/authentication
\ No newline at end of file
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
deleted file mode 100644
index edbdd2da..00000000
--- a/components/gitops/staging/base/kustomization.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=87e1f9acc67bf033d2159951ba6489f0836586ef
-- ../../openshift-gitops/overlays/staging
-- ../../base/external-secrets
-- ../../base/monitoring
-- authentication
-
-images:
-  - name: \${COMMON_IMAGE}
-    newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
-
-commonAnnotations:
-  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index c849fdff..00000000
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stage-p01/kustomization.yaml b/components/gitops/staging/stone-stage-p01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/staging/stone-stage-p01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 7670f5a7..00000000
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/kustomization.yaml b/components/gitops/staging/stone-stg-rh01/kustomization.yaml
deleted file mode 100644
index 92c671c3..00000000
--- a/components/gitops/staging/stone-stg-rh01/kustomization.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 6aa6f3c6..0964f6ec 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -4,7 +4,6 @@ resources:
 - kubesaw/
 - build-service/
 - image-controller/
-- managed-gitops/
 - dora-metrics/
 - has/
 - jvm-build-service/
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml
deleted file mode 100644
index 3016af18..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/dashboard.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-gitops-service
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-gitops-service
-    key: gitops-dashboard.json
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml
deleted file mode 100644
index 1bf16dc1..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/gitops-service-argocd-dashboard.yaml
+++ /dev/null
@@ -1,13 +0,0 @@
-apiVersion: grafana.integreatly.org/v1beta1
-kind: GrafanaDashboard
-metadata:
-  name: grafana-dashboard-gitops-service-argocd
-  labels: 
-    app: appstudio-grafana
-spec:
-  instanceSelector:
-    matchLabels:
-      dashboards: "appstudio-grafana"
-  configMapRef:
-    name: grafana-dashboard-gitops-service
-    key: gitops-argocd-dashboard.json
diff --git a/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml b/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml
deleted file mode 100644
index dbd97ed5..00000000
--- a/components/monitoring/grafana/base/dashboards/managed-gitops/kustomization.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/base/monitoring/grafana-dashboards-new?ref=23253fe449172c7907da9675d6c42bcd670c907e
-- dashboard.yaml
-- gitops-service-argocd-dashboard.yaml
\ No newline at end of file
diff --git a/hack/bootstrap-member-cluster.sh b/hack/bootstrap-member-cluster.sh
index 7fc37b31..cfd1c97e 100755
--- a/hack/bootstrap-member-cluster.sh
+++ b/hack/bootstrap-member-cluster.sh
@@ -5,7 +5,6 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/create-plnsvc-secrets.sh"
-    "${ROOT}/secret-creator/create-gitops-secrets.sh"
 
     [[ -z "$MY_GITHUB_TOKEN" ]] ||
         "${ROOT}/secret-creator/create-github-secret.sh" "$MY_GITHUB_TOKEN" "${GITHUB_TOKENS_LIST:-""}"
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index b757a5ed..b8105093 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops quality-dashboard ci-helper-app internal-services application-api
+oc delete project enterprise-contract-service quality-dashboard ci-helper-app internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/secret-creator/create-gitops-secrets.sh b/hack/secret-creator/create-gitops-secrets.sh
deleted file mode 100755
index f7f3ec8a..00000000
--- a/hack/secret-creator/create-gitops-secrets.sh
+++ /dev/null
@@ -1,30 +0,0 @@
-#!/bin/bash -e
-
-main() {
-    echo "Setting secrets for GitOps"
-    create_namespace
-    create_db_secret
-}
-
-create_namespace() {
-    if kubectl get namespace gitops &>/dev/null; then
-        echo "gitops namespace already exists, skipping creation"
-        return
-    fi
-    kubectl create namespace gitops -o yaml --dry-run=client | oc apply -f-
-}
-
-create_db_secret() {
-    echo "Creating DB secret" >&2
-    if kubectl get secret -n gitops gitops-postgresql-staging &>/dev/null; then
-        echo "DB secret already exists, skipping creation"
-        return
-    fi
-    kubectl create secret generic gitops-postgresql-staging \
-        --namespace=gitops \
-        --from-literal=postgresql-password="$(openssl rand -base64 20)"
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
./commit-66cfa739/development/components: gitops 
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
```
 
</details> 
<br> 


</div>
