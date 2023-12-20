# kustomize changes tracked by commits 
### This file generated at Wed Dec 20 08:03:03 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 18c77cf6 to f10d1c6d on Wed Dec 20 05:22:07 2023 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/kustomization.yaml b/components/backup/base/all-clusters/kustomization.yaml
index 487d9768..ec0cb80d 100644
--- a/components/backup/base/all-clusters/kustomization.yaml
+++ b/components/backup/base/all-clusters/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: openshift-adp
 resources:
   - external-secret.yaml
   - namespace.yaml
+  - oadp
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 9df29e8e..3bcd2317 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - ../all-clusters/oadp
   - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index 3381df1f..ffa4ee8a 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,6 +3,5 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - ../all-clusters/oadp
   - backup-tenants-schedule.yaml
   - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..ef2ab3e0
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..e8bef47c
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: ce3a05cb-a4c1-4390-a500-0e9eefbffab1
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
index 229a13d9..4ee8993e 100644
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-m01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/all-clusters
+  - ../../base/member
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

./commit-f10d1c6d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f10d1c6d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 18c77cf6 to f10d1c6d on Wed Dec 20 05:22:07 2023 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/kustomization.yaml b/components/backup/base/all-clusters/kustomization.yaml
index 487d9768..ec0cb80d 100644
--- a/components/backup/base/all-clusters/kustomization.yaml
+++ b/components/backup/base/all-clusters/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: openshift-adp
 resources:
   - external-secret.yaml
   - namespace.yaml
+  - oadp
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 9df29e8e..3bcd2317 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - ../all-clusters/oadp
   - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index 3381df1f..ffa4ee8a 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,6 +3,5 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - ../all-clusters/oadp
   - backup-tenants-schedule.yaml
   - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..ef2ab3e0
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..e8bef47c
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: ce3a05cb-a4c1-4390-a500-0e9eefbffab1
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
index 229a13d9..4ee8993e 100644
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-m01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/all-clusters
+  - ../../base/member
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
<summary>Kustomize Generated Diff (129 lines)</summary>  

``` 
./commit-18c77cf6/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
33,159d32
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
<         kmsKeyId: ce3a05cb-a4c1-4390-a500-0e9eefbffab1
<         profile: default
<         region: us-east-1
<       credential:
<         key: cloud
<         name: backup-s3-credentials
<       default: true
<       objectStorage:
<         bucket: backup-stone-stg-m01
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
<   name: backup-tenants
<   namespace: openshift-adp
< spec:
<   schedule: 30 1,13 * * *
<   template:
<     excludedNamespaces:
<     - kube-*
<     - openshift*
<     - appstudio*
<     - admin-checker
<     - application-api
<     - application-service
<     - appsre-vault
<     - build-service
<     - build-templates
<     - build-templates-e2e
<     - dedicated-admin
<     - deployment-validation-operator
<     - dora-metrics
<     - enterprise-contract-service
<     - external-secrets-operator
<     - gitops
<     - gitops-service-argocd
<     - group-sync-operator
<     - hac-pact-broker
<     - image-controller
<     - integration-service
<     - internal-services
<     - jvm-build-service
<     - multi-platform-controller
<     - perf-team-prometheus-reader
<     - plnsvc-tests
<     - quality-dashboard
<     - release-service
<     - remotesecret
<     - sandbox-sre-member
<     - segment-bridge
<     - spi-system
<     - tekton-results
<     - toolchain-member-operator
<     includedResources:
<     - applications.appstudio.redhat.com
<     - components.appstudio.redhat.com
<     - environments.appstudio.redhat.com
<     - integrationtestscenarios.appstudio.redhat.com
<     - secrets
<     - snapshots.appstudio.redhat.com
<     - snapshotenvironmentbindings.appstudio.redhat.com
<     - serviceaccounts
<     - namespaces
<     storageLocation: velero-aws-1
<     ttl: 720h0m0s
<   useOwnerReferencesInBackup: true
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

./commit-f10d1c6d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f10d1c6d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f10d1c6d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 18c77cf6 to f10d1c6d on Wed Dec 20 05:22:07 2023 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/kustomization.yaml b/components/backup/base/all-clusters/kustomization.yaml
index 487d9768..ec0cb80d 100644
--- a/components/backup/base/all-clusters/kustomization.yaml
+++ b/components/backup/base/all-clusters/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: openshift-adp
 resources:
   - external-secret.yaml
   - namespace.yaml
+  - oadp
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 9df29e8e..3bcd2317 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - ../all-clusters/oadp
   - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index 3381df1f..ffa4ee8a 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,6 +3,5 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - ../all-clusters/oadp
   - backup-tenants-schedule.yaml
   - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..ef2ab3e0
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..e8bef47c
--- /dev/null
+++ b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: ce3a05cb-a4c1-4390-a500-0e9eefbffab1
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
index 229a13d9..4ee8993e 100644
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ b/components/backup/staging/stone-stg-m01/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/all-clusters
+  - ../../base/member
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

./commit-f10d1c6d/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from 89be7354 to 18c77cf6 on Wed Dec 20 00:14:03 2023 </h3>  
 
<details> 
<summary>Git Diff (180 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 7cc41273..43559e4a 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=67335b740aa29eb0b5c2b096eb7f973dcbaae5a3
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 5a4bb334..c65d6462 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=67335b740aa29eb0b5c2b096eb7f973dcbaae5a3
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b34e2834..230af73c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
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
@@ -1484,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
@@ -1499,18 +1499,27 @@ spec:
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
@@ -1570,11 +1579,19 @@ spec:
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
@@ -1692,7 +1709,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1713,7 +1730,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1884,7 +1901,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47fcd4f1..bf05174f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1482,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 80463ba6..3bc9e113 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1482,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
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

./commit-18c77cf6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c77cf6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 89be7354 to 18c77cf6 on Wed Dec 20 00:14:03 2023 </h3>  
 
<details> 
<summary>Git Diff (180 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 7cc41273..43559e4a 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=67335b740aa29eb0b5c2b096eb7f973dcbaae5a3
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 5a4bb334..c65d6462 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=67335b740aa29eb0b5c2b096eb7f973dcbaae5a3
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b34e2834..230af73c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
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
@@ -1484,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
@@ -1499,18 +1499,27 @@ spec:
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
@@ -1570,11 +1579,19 @@ spec:
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
@@ -1692,7 +1709,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1713,7 +1730,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1884,7 +1901,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47fcd4f1..bf05174f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1482,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 80463ba6..3bc9e113 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1482,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
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
1485,1486d1485
<         - -check_owner
<         - "false"
1502,1506c1501
<         - name: TEKTON_RESULTS_API_SERVICE
<           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
<         - name: AUTH_MODE
<           value: token
<         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1513,1519d1507
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
1522a1511,1512
>             add:
>             - NET_BIND_SERVICE
1582,1588d1571
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
1594d1576
<               readOnlyRootFilesystem: true
1712c1694
<       key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
1733c1715
<       key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
1904c1886
<   channel: pipelines-1.13
---
>   channel: pipelines-1.12
./commit-89be7354/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1485,1486d1484
<         - -check_owner
<         - "false"
./commit-89be7354/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1485,1486d1484
<         - -check_owner
<         - "false" 
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

./commit-18c77cf6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c77cf6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-18c77cf6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 89be7354 to 18c77cf6 on Wed Dec 20 00:14:03 2023 </h3>  
 
<details> 
<summary>Git Diff (180 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 7cc41273..43559e4a 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=67335b740aa29eb0b5c2b096eb7f973dcbaae5a3
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 5a4bb334..c65d6462 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=67335b740aa29eb0b5c2b096eb7f973dcbaae5a3
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b34e2834..230af73c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
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
@@ -1484,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
@@ -1499,18 +1499,27 @@ spec:
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
@@ -1570,11 +1579,19 @@ spec:
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
@@ -1692,7 +1709,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1713,7 +1730,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1884,7 +1901,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.12
+  channel: pipelines-1.13
   name: openshift-pipelines-operator-rh
   source: redhat-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47fcd4f1..bf05174f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1482,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 80463ba6..3bc9e113 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1482,6 +1482,8 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner
+        - "false"
         - -completed_run_grace_period
         - 10m
         env: 
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

./commit-18c77cf6/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from 87aa5351 to 89be7354 on Tue Dec 19 22:57:01 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index b365de78..7117e489 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -337,3 +337,20 @@ if $KEYCLOAK && $TOOLCHAIN ; then
 	  exit 1
   fi
 fi
+
+# Sometimes Tekton CRDs need a few mins to be ready
+retry=0
+while true; do
+  if [ "$retry" -eq 5 ]; then
+    printf "Error: Tekton CRDs are not yet available on the cluster.\n" >&2
+    exit 1
+  fi
+  tekton_crds=$(oc api-resources --api-group="tekton.dev" --no-headers)
+  if [[ $tekton_crds =~ pipelines && $tekton_crds =~ tasks && $tekton_crds =~ pipelineruns && $tekton_crds =~ taskruns ]]; then
+    echo "Tekton CRDs are ready"
+    break
+  fi
+  sleep $INTERVAL
+  retry=$((retry + 1))
+done
+ 
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

./commit-89be7354/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-89be7354/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 87aa5351 to 89be7354 on Tue Dec 19 22:57:01 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index b365de78..7117e489 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -337,3 +337,20 @@ if $KEYCLOAK && $TOOLCHAIN ; then
 	  exit 1
   fi
 fi
+
+# Sometimes Tekton CRDs need a few mins to be ready
+retry=0
+while true; do
+  if [ "$retry" -eq 5 ]; then
+    printf "Error: Tekton CRDs are not yet available on the cluster.\n" >&2
+    exit 1
+  fi
+  tekton_crds=$(oc api-resources --api-group="tekton.dev" --no-headers)
+  if [[ $tekton_crds =~ pipelines && $tekton_crds =~ tasks && $tekton_crds =~ pipelineruns && $tekton_crds =~ taskruns ]]; then
+    echo "Tekton CRDs are ready"
+    break
+  fi
+  sleep $INTERVAL
+  retry=$((retry + 1))
+done
+ 
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

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-89be7354/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-89be7354/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-89be7354/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from 87aa5351 to 89be7354 on Tue Dec 19 22:57:01 2023 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index b365de78..7117e489 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -337,3 +337,20 @@ if $KEYCLOAK && $TOOLCHAIN ; then
 	  exit 1
   fi
 fi
+
+# Sometimes Tekton CRDs need a few mins to be ready
+retry=0
+while true; do
+  if [ "$retry" -eq 5 ]; then
+    printf "Error: Tekton CRDs are not yet available on the cluster.\n" >&2
+    exit 1
+  fi
+  tekton_crds=$(oc api-resources --api-group="tekton.dev" --no-headers)
+  if [[ $tekton_crds =~ pipelines && $tekton_crds =~ tasks && $tekton_crds =~ pipelineruns && $tekton_crds =~ taskruns ]]; then
+    echo "Tekton CRDs are ready"
+    break
+  fi
+  sleep $INTERVAL
+  retry=$((retry + 1))
+done
+ 
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

./commit-89be7354/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from e195fa3d to 87aa5351 on Tue Dec 19 21:04:16 2023 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ab56757b..61120be2 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8313c38b61d684562cb93bd7d4757b08401d2c44
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2f0b4d0f72cc4902bb108ac56172d535de55f9d8
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e57368c0..326c41e7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
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
@@ -1569,11 +1577,19 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 736cb59f..aa763693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
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
@@ -1569,11 +1577,19 @@ spec:
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (86 lines)</summary>  

``` 
./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
319d318
<   - resolution.tekton.dev
1323c1322
<         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1348a1348,1349
>             add:
>             - NET_BIND_SERVICE
1392c1393
<         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1499,1503c1500
<         - name: TEKTON_RESULTS_API_SERVICE
<           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
<         - name: AUTH_MODE
<           value: token
<         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1510,1516d1506
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
1519a1510,1511
>             add:
>             - NET_BIND_SERVICE
1579,1585d1570
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
1591d1575
<               readOnlyRootFilesystem: true
./commit-e195fa3d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
319d318
<   - resolution.tekton.dev
1323c1322
<         image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1348a1348,1349
>             add:
>             - NET_BIND_SERVICE
1392c1393
<         image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1499,1503c1500
<         - name: TEKTON_RESULTS_API_SERVICE
<           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
<         - name: AUTH_MODE
<           value: token
<         image: quay.io/redhat-appstudio/tekton-results-watcher:f6bf1d11b428f1411a42dd608e56f09f79a7de31
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
1510,1516d1506
<         resources:
<           limits:
<             cpu: 250m
<             memory: 2Gi
<           requests:
<             cpu: 100m
<             memory: 64Mi
1519a1510,1511
>             add:
>             - NET_BIND_SERVICE
1579,1585d1570
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 200Mi
<               requests:
<                 cpu: 10m
<                 memory: 10Mi
1591d1575
<               readOnlyRootFilesystem: true 
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

./commit-87aa5351/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-87aa5351/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from e195fa3d to 87aa5351 on Tue Dec 19 21:04:16 2023 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ab56757b..61120be2 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8313c38b61d684562cb93bd7d4757b08401d2c44
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2f0b4d0f72cc4902bb108ac56172d535de55f9d8
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e57368c0..326c41e7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
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
@@ -1569,11 +1577,19 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 736cb59f..aa763693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
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
@@ -1569,11 +1577,19 @@ spec:
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

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: tekton-results/tekton-results-watcher apps/v1, Kind=Deployment) container "watcher" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" does not have a read-only root file system (check: no-read-only-root-fs, remediation: Set readOnlyRootFilesystem to true in the container securityContext.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu request 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has cpu limit 0 (check: unset-cpu-requirements, remediation: Set CPU requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory request 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/pac-secret-reaper batch/v1, Kind=CronJob) container "delete-pac-secrets" has memory limit 0 (check: unset-memory-requirements, remediation: Set memory requests and limits for your container based on its requirements. Refer to https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#requests-and-limits for details.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-87aa5351/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from e195fa3d to 87aa5351 on Tue Dec 19 21:04:16 2023 </h3>  
 
<details> 
<summary>Git Diff (193 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index ab56757b..61120be2 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8313c38b61d684562cb93bd7d4757b08401d2c44
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2f0b4d0f72cc4902bb108ac56172d535de55f9d8
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e57368c0..326c41e7 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
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
@@ -1569,11 +1577,19 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 736cb59f..aa763693 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -317,6 +317,7 @@ rules:
   - results.tekton.dev
   - tekton.dev
   - triggers.tekton.dev
+  - resolution.tekton.dev
   resources:
   - '*'
   verbs:
@@ -1320,7 +1321,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-api:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1346,8 +1347,6 @@ spec:
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
-            add:
-            - NET_BIND_SERVICE
             drop:
             - ALL
           readOnlyRootFilesystem: true
@@ -1391,7 +1390,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:6c008b21d9bb5000f2e42dbd010b5984095e4d6a
+        image: quay.io/redhat-appstudio/tekton-results-migrator:f6bf1d11b428f1411a42dd608e56f09f79a7de31
         name: migrator
         resources:
           limits:
@@ -1498,18 +1497,27 @@ spec:
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
@@ -1569,11 +1577,19 @@ spec:
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

./commit-87aa5351/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
