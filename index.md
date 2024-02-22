# kustomize changes tracked by commits 
### This file generated at Thu Feb 22 20:04:40 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from c477e838 to bf986224 on Thu Feb 22 19:34:25 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 65aaabc4..44ae11c8 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index ee640cb7..31165cfa 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
+    newTag: c1e7d287444ebe0d82d78d47f041b55490b50c86
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (77 lines)</summary>  

``` 
./commit-c477e838/development/components/release/development/kustomize.out.yaml
337,341d336
<               releaseGracePeriodDays:
<                 default: 7
<                 description: ReleaseGracePeriodDays is the number of days a Release
<                   should be kept This value is used to define the Release ExpirationTime
<                 type: integer
510,513d504
<               gracePeriodDays:
<                 description: GracePeriodDays is the number of days a Release should
<                   be kept This value is used to define the Release ExpirationTime
<                 type: integer
644,647d634
<               expirationTime:
<                 description: ExpirationTime is the time when a Release can be purged
<                 format: date-time
<                 type: string
676,681d662
<                   roleBinding:
<                     description: RoleBinding contains the namespaced name of the roleBinding
<                       created for the managed Release PipelineRun executed as part
<                       of this release
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                     type: string
762,765d742
<               advisoryRepo:
<                 description: AdvisoryRepo is the repo to create advisories in during
<                   the managed release PipelineRun
<                 type: string
986,995d962
<   - internalrequests
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch
< - apiGroups:
<   - appstudio.redhat.com
<   resources:
1089,1100d1055
< - apiGroups:
<   - rbac.authorization.k8s.io
<   resources:
<   - rolebindings
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - patch
<   - update
<   - watch
1742c1697
<         image: quay.io/redhat-appstudio/release-service:c1e7d287444ebe0d82d78d47f041b55490b50c86
---
>         image: quay.io/redhat-appstudio/release-service:a623aa18c794ddc61bc0e0d87ad92bfc9b852e48
1890,1908d1844
<   sideEffects: None
< - admissionReviewVersions:
<   - v1
<   clientConfig:
<     service:
<       name: release-service-webhook-service
<       namespace: release-service
<       path: /mutate-appstudio-redhat-com-v1alpha1-release
<   failurePolicy: Fail
<   name: mrelease.kb.io
<   rules:
<   - apiGroups:
<     - appstudio.redhat.com
<     apiVersions:
<     - v1alpha1
<     operations:
<     - CREATE
<     resources:
<     - releases 
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
<h3>2: Production changes from d12c6c5c to c477e838 on Thu Feb 22 16:52:08 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 3bcd2317..dcde4adb 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-toolchain-host-schedule.yaml
+  - schedules
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
similarity index 100%
rename from components/backup/base/host/backup-toolchain-host-schedule.yaml
rename to components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/host/schedules/kustomization.yaml b/components/backup/base/host/schedules/kustomization.yaml
new file mode 100644
index 00000000..491fa46f
--- /dev/null
+++ b/components/backup/base/host/schedules/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index ffa4ee8a..dcde4adb 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-tenants-schedule.yaml
-  - backup-toolchain-member-schedule.yaml
+  - schedules
diff --git a/components/backup/base/member/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-tenants-schedule.yaml
rename to components/backup/base/member/schedules/backup-tenants-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-toolchain-member-schedule.yaml
rename to components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
diff --git a/components/backup/base/member/schedules/kustomization.yaml b/components/backup/base/member/schedules/kustomization.yaml
new file mode 100644
index 00000000..82489ce2
--- /dev/null
+++ b/components/backup/base/member/schedules/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..d0ab2f88
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..b846210a
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..720d118c
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: acab68d3-4bbd-453b-a31e-0ce354f0db4b
diff --git a/components/backup/production/stone-prod-p01/kustomization.yaml b/components/backup/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/kustomization.yaml
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
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..49236b0e
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f376eac6
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..ec4ef510
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 71be430c-e08f-4604-a3d6-f660d7b61072
diff --git a/components/backup/staging/stone-stage-p01/kustomization.yaml b/components/backup/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/kustomization.yaml
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-c477e838/production/components/backup/production: stone-prod-p01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from d12c6c5c to c477e838 on Thu Feb 22 16:52:08 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 3bcd2317..dcde4adb 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-toolchain-host-schedule.yaml
+  - schedules
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
similarity index 100%
rename from components/backup/base/host/backup-toolchain-host-schedule.yaml
rename to components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/host/schedules/kustomization.yaml b/components/backup/base/host/schedules/kustomization.yaml
new file mode 100644
index 00000000..491fa46f
--- /dev/null
+++ b/components/backup/base/host/schedules/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index ffa4ee8a..dcde4adb 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-tenants-schedule.yaml
-  - backup-toolchain-member-schedule.yaml
+  - schedules
diff --git a/components/backup/base/member/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-tenants-schedule.yaml
rename to components/backup/base/member/schedules/backup-tenants-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-toolchain-member-schedule.yaml
rename to components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
diff --git a/components/backup/base/member/schedules/kustomization.yaml b/components/backup/base/member/schedules/kustomization.yaml
new file mode 100644
index 00000000..82489ce2
--- /dev/null
+++ b/components/backup/base/member/schedules/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..d0ab2f88
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..b846210a
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..720d118c
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: acab68d3-4bbd-453b-a31e-0ce354f0db4b
diff --git a/components/backup/production/stone-prod-p01/kustomization.yaml b/components/backup/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/kustomization.yaml
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
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..49236b0e
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f376eac6
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..ec4ef510
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 71be430c-e08f-4604-a3d6-f660d7b61072
diff --git a/components/backup/staging/stone-stage-p01/kustomization.yaml b/components/backup/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/kustomization.yaml
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-c477e838/staging/components/backup/staging: stone-stage-p01 
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
<h3>2: Development changes from d12c6c5c to c477e838 on Thu Feb 22 16:52:08 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/base/host/kustomization.yaml b/components/backup/base/host/kustomization.yaml
index 3bcd2317..dcde4adb 100644
--- a/components/backup/base/host/kustomization.yaml
+++ b/components/backup/base/host/kustomization.yaml
@@ -3,4 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-toolchain-host-schedule.yaml
+  - schedules
diff --git a/components/backup/base/host/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
similarity index 100%
rename from components/backup/base/host/backup-toolchain-host-schedule.yaml
rename to components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/host/schedules/kustomization.yaml b/components/backup/base/host/schedules/kustomization.yaml
new file mode 100644
index 00000000..491fa46f
--- /dev/null
+++ b/components/backup/base/host/schedules/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-toolchain-host-schedule.yaml
diff --git a/components/backup/base/member/kustomization.yaml b/components/backup/base/member/kustomization.yaml
index ffa4ee8a..dcde4adb 100644
--- a/components/backup/base/member/kustomization.yaml
+++ b/components/backup/base/member/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: openshift-adp
 resources:
   - ../all-clusters
-  - backup-tenants-schedule.yaml
-  - backup-toolchain-member-schedule.yaml
+  - schedules
diff --git a/components/backup/base/member/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-tenants-schedule.yaml
rename to components/backup/base/member/schedules/backup-tenants-schedule.yaml
diff --git a/components/backup/base/member/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
similarity index 100%
rename from components/backup/base/member/backup-toolchain-member-schedule.yaml
rename to components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
diff --git a/components/backup/base/member/schedules/kustomization.yaml b/components/backup/base/member/schedules/kustomization.yaml
new file mode 100644
index 00000000..82489ce2
--- /dev/null
+++ b/components/backup/base/member/schedules/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: openshift-adp
+resources:
+  - backup-tenants-schedule.yaml
+  - backup-toolchain-member-schedule.yaml
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..d0ab2f88
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..b846210a
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-prod-p01
diff --git a/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..720d118c
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: acab68d3-4bbd-453b-a31e-0ce354f0db4b
diff --git a/components/backup/production/stone-prod-p01/kustomization.yaml b/components/backup/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/production/stone-prod-p01/kustomization.yaml
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
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
new file mode 100644
index 00000000..49236b0e
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: integrations-output/terraform-resources/stonesoups01ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
new file mode 100644
index 00000000..f376eac6
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-bucket-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/objectStorage/bucket
+  value: backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
new file mode 100644
index 00000000..ec4ef510
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/dpa-kmskeyid-patch.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/backupLocations/0/velero/config/kmsKeyId
+  value: 71be430c-e08f-4604-a3d6-f660d7b61072
diff --git a/components/backup/staging/stone-stage-p01/kustomization.yaml b/components/backup/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..60a2319d
--- /dev/null
+++ b/components/backup/staging/stone-stage-p01/kustomization.yaml
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 7237da50 to d12c6c5c on Thu Feb 22 15:38:14 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 8b796f19..0e887017 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 15b91552..4bb79de4 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 894df17b..374aa9d6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2119f200..754accdc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1966,6 +1966,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
@@ -1974,9 +1990,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 7237da50 to d12c6c5c on Thu Feb 22 15:38:14 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 8b796f19..0e887017 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 15b91552..4bb79de4 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 894df17b..374aa9d6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2119f200..754accdc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1966,6 +1966,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
@@ -1974,9 +1990,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-7237da50/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1969,1984d1968
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
< ---
< apiVersion: operators.coreos.com/v1alpha1
1993c1977
<   channel: latest
---
>   channel: pipelines-1.13
1995c1979
<   source: custom-operators
---
>   source: redhat-operators 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 7237da50 to d12c6c5c on Thu Feb 22 15:38:14 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 8b796f19..0e887017 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 15b91552..4bb79de4 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 894df17b..374aa9d6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7df9ea07e1db7dfe306c7ffbba62aa3e835a15c5
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2119f200..754accdc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1966,6 +1966,22 @@ spec:
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "0"
+  name: custom-operators
+  namespace: openshift-marketplace
+spec:
+  displayName: custom-operators
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 30m
+---
+apiVersion: operators.coreos.com/v1alpha1
 kind: Subscription
 metadata:
   annotations:
@@ -1974,9 +1990,9 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: pipelines-1.13
+  channel: latest
   name: openshift-pipelines-operator-rh
-  source: redhat-operators
+  source: custom-operators
   sourceNamespace: openshift-marketplace
 ---
 apiVersion: route.openshift.io/v1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-7237da50/development/components/pipeline-service/development/kustomize.out.yaml
2073,2088d2072
< kind: CatalogSource
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "0"
<   name: custom-operators
<   namespace: openshift-marketplace
< spec:
<   displayName: custom-operators
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:37310134aafa601207d873f21aca35c7d06631af695cd2e87a975b25971a3cc7
<   sourceType: grpc
<   updateStrategy:
<     registryPoll:
<       interval: 30m
< ---
< apiVersion: operators.coreos.com/v1alpha1
2112c2096
<   channel: latest
---
>   channel: pipelines-1.13
2114c2098
<   source: custom-operators
---
>   source: redhat-operators 
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
<h3>4: Production changes from 636abcb9 to 7237da50 on Thu Feb 22 14:29:07 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 62c8850b..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 42dda535..167e06c5 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 7380d71f..6b41fe79 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 99a06e7f..485ada63 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (78 lines)</summary>  

``` 
./commit-636abcb9/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
442d441
<   - summary
936,937d934
<     GCS_BUCKET_NAME=
<     STORAGE_EMULATOR_HOST=
1216c1213
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
1340c1337
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
1409c1406
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
1538c1535
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
1920c1917
<     enable-api-fields: alpha
---
>     enable-api-fields: beta
./commit-636abcb9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
442d441
<   - summary
936,937d934
<     GCS_BUCKET_NAME=
<     STORAGE_EMULATOR_HOST=
1216c1213
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
1340c1337
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
1409c1406
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
1538c1535
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
1920c1917
<     enable-api-fields: alpha
---
>     enable-api-fields: beta
./commit-636abcb9/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
442d441
<   - summary
936,937d934
<     GCS_BUCKET_NAME=
<     STORAGE_EMULATOR_HOST=
1216c1213
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
1340c1337
<         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
1409c1406
<         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
1538c1535
<         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
1920c1917
<     enable-api-fields: alpha
---
>     enable-api-fields: beta 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 636abcb9 to 7237da50 on Thu Feb 22 14:29:07 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 62c8850b..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 42dda535..167e06c5 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 7380d71f..6b41fe79 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 99a06e7f..485ada63 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 636abcb9 to 7237da50 on Thu Feb 22 14:29:07 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 62c8850b..bce2c7ff 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=43bb04294bf63ea4c80b3c389fe5553c2a4dd2a3
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 42dda535..167e06c5 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 7380d71f..6b41fe79 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 99a06e7f..485ada63 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -439,6 +439,7 @@ rules:
   - results
   - records
   - logs
+  - summary
   verbs:
   - get
   - list
@@ -932,6 +933,8 @@ data:
     S3_ACCESS_KEY_ID=
     S3_SECRET_ACCESS_KEY=
     S3_MULTI_PART_SIZE=5242880
+    GCS_BUCKET_NAME=
+    STORAGE_EMULATOR_HOST=
 kind: ConfigMap
 metadata:
   annotations:
@@ -1210,7 +1213,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
@@ -1334,7 +1337,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1403,7 +1406,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: migrator
         resources:
           limits:
@@ -1532,7 +1535,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:dd067cad783501dc87fdec7285ca62e573fd85e3
+        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
         name: watcher
         ports:
         - containerPort: 9090
@@ -1914,7 +1917,7 @@ spec:
     value: "false"
   pipeline:
     default-service-account: appstudio-pipeline
-    enable-api-fields: beta
+    enable-api-fields: alpha
     enable-bundles-resolver: true
     enable-cluster-resolver: true
     enable-git-resolver: true 
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
```
 
</details> 
<br> 


</div>
