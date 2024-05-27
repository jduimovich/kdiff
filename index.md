# kustomize changes tracked by commits 
### This file generated at Mon May 27 00:06:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9270df8e to 75cc1cf0 on Sun May 26 13:20:14 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/oadp/dpa.yaml b/components/backup/base/all-clusters/oadp/dpa.yaml
index 4e4d32bc..873b28c8 100644
--- a/components/backup/base/all-clusters/oadp/dpa.yaml
+++ b/components/backup/base/all-clusters/oadp/dpa.yaml
@@ -4,6 +4,7 @@ metadata:
   name: velero-aws
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   backupLocations:
     - velero:
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 83ba107e..d4ba9545 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-host
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index c2895f5d..583137f9 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-tenants
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
index 652a9ffc..d5a85aaa 100644
--- a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-member
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-9270df8e/production/components/backup/production/stone-prd-host1/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prod-p01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
186,187d180
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/production/components/backup/production/stone-prod-p02/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
186,187d180
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 9270df8e to 75cc1cf0 on Sun May 26 13:20:14 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/oadp/dpa.yaml b/components/backup/base/all-clusters/oadp/dpa.yaml
index 4e4d32bc..873b28c8 100644
--- a/components/backup/base/all-clusters/oadp/dpa.yaml
+++ b/components/backup/base/all-clusters/oadp/dpa.yaml
@@ -4,6 +4,7 @@ metadata:
   name: velero-aws
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   backupLocations:
     - velero:
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 83ba107e..d4ba9545 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-host
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index c2895f5d..583137f9 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-tenants
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
index 652a9ffc..d5a85aaa 100644
--- a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-member
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-9270df8e/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
186,187d180
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-9270df8e/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
55d54
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
110,111d108
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
170,171d166
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>1: Development changes from 9270df8e to 75cc1cf0 on Sun May 26 13:20:14 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/backup/base/all-clusters/oadp/dpa.yaml b/components/backup/base/all-clusters/oadp/dpa.yaml
index 4e4d32bc..873b28c8 100644
--- a/components/backup/base/all-clusters/oadp/dpa.yaml
+++ b/components/backup/base/all-clusters/oadp/dpa.yaml
@@ -4,6 +4,7 @@ metadata:
   name: velero-aws
   annotations:
     argocd.argoproj.io/sync-wave: "-1"
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   backupLocations:
     - velero:
diff --git a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
index 83ba107e..d4ba9545 100644
--- a/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
+++ b/components/backup/base/host/schedules/backup-toolchain-host-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-host
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-tenants-schedule.yaml b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
index c2895f5d..583137f9 100644
--- a/components/backup/base/member/schedules/backup-tenants-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-tenants-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-tenants
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template:
diff --git a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
index 652a9ffc..d5a85aaa 100644
--- a/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
+++ b/components/backup/base/member/schedules/backup-toolchain-member-schedule.yaml
@@ -2,6 +2,8 @@ apiVersion: velero.io/v1
 kind: Schedule
 metadata:
   name: backup-toolchain-member
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   schedule: 30 1,13 * * * # every day 1:30, 13:30 UTC
   template: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from dee28678 to 9270df8e on Sun May 26 12:50:41 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index b1da9e84..aef9e370 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -20,6 +20,8 @@ metadata:
   labels:
     app: sso
   name: keycloak
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   external:
     enabled: false
@@ -40,6 +42,8 @@ metadata:
   labels:
     realm: redhat-external
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   instanceSelector:
     matchLabels:
@@ -284,6 +288,8 @@ metadata:
   name: cloud-services
   labels:
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   client:
     enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-dee28678/production/components/keycloak/production/stone-prod-p02/kustomize.out.yaml
60,61d59
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
82,83d79
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
124,125d119
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from dee28678 to 9270df8e on Sun May 26 12:50:41 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index b1da9e84..aef9e370 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -20,6 +20,8 @@ metadata:
   labels:
     app: sso
   name: keycloak
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   external:
     enabled: false
@@ -40,6 +42,8 @@ metadata:
   labels:
     realm: redhat-external
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   instanceSelector:
     matchLabels:
@@ -284,6 +288,8 @@ metadata:
   name: cloud-services
   labels:
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   client:
     enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-dee28678/staging/components/keycloak/staging/stone-stage-p01/kustomize.out.yaml
60,61d59
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
82,83d79
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
124,125d119
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>2: Development changes from dee28678 to 9270df8e on Sun May 26 12:50:41 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index b1da9e84..aef9e370 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -20,6 +20,8 @@ metadata:
   labels:
     app: sso
   name: keycloak
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   external:
     enabled: false
@@ -40,6 +42,8 @@ metadata:
   labels:
     realm: redhat-external
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   instanceSelector:
     matchLabels:
@@ -284,6 +288,8 @@ metadata:
   name: cloud-services
   labels:
     app: sso
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   client:
     enabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-dee28678/development/components/keycloak/development/kustomize.out.yaml
28,29d27
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
50,51d47
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
92,93d87
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from d6c51759 to dee28678 on Sun May 26 12:42:32 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
index c5eeb9a0..0f640327 100644
--- a/components/keycloak/production/stone-prod-p02/kustomization.yaml
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -1,14 +1,14 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-#  - ../../base
+  - ../../base
   - ../../base/konflux-workspace-admins
-#patches:
-#  - path: set-redirect-uri.yaml
-#    target:
-#      name: openshift-provider
-#      kind: ServiceAccount
-#  - path: set-ocp-idp.yaml
-#    target:
-#      name: redhat-external
-#      kind: KeycloakRealm
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (357 lines)</summary>  

``` 
./commit-d6c51759/production/components/keycloak/production/stone-prod-p02/kustomize.out.yaml
1,15d0
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
<   name: rhtap-auth
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     serviceaccounts.openshift.io/oauth-redirecturi.rhtap: https://keycloak-rhtap-auth.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/auth/realms/redhat-external/broker/openshift-v4/endpoint
<   name: openshift-provider
<   namespace: rhtap-auth
< ---
47,385d31
< ---
< apiVersion: v1
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: openshift-provider
<   name: openshift-provider
<   namespace: rhtap-auth
< type: kubernetes.io/service-account-token
< ---
< apiVersion: keycloak.org/v1alpha1
< kind: Keycloak
< metadata:
<   labels:
<     app: sso
<   name: keycloak
<   namespace: rhtap-auth
< spec:
<   external:
<     enabled: false
<   externalAccess:
<     enabled: true
<   instances: 3
<   keycloakDeploymentSpec:
<     imagePullPolicy: Always
<   multiAvailablityZones:
<     enabled: true
<   postgresDeploymentSpec:
<     imagePullPolicy: Always
< ---
< apiVersion: keycloak.org/v1alpha1
< kind: KeycloakClient
< metadata:
<   labels:
<     app: sso
<   name: cloud-services
<   namespace: rhtap-auth
< spec:
<   client:
<     clientAuthenticatorType: client-secret
<     clientId: cloud-services
<     defaultClientScopes:
<     - web-origins
<     - acr
<     - nameandterms
<     - profile
<     - roles
<     - email
<     directAccessGrantsEnabled: false
<     enabled: true
<     id: e3e1d703-62c1-46f4-b706-e3d7eebafd01
<     implicitFlowEnabled: false
<     optionalClientScopes:
<     - address
<     - phone
<     - profile_level.name_and_dev_terms
<     - offline_access
<     - microprofile-jwt
<     publicClient: true
<     redirectUris:
<     - '*'
<     secret: client-secret
<     standardFlowEnabled: true
<     webOrigins:
<     - '*'
<   realmSelector:
<     matchLabels:
<       realm: redhat-external
<   scopeMappings: {}
< ---
< apiVersion: keycloak.org/v1alpha1
< kind: KeycloakRealm
< metadata:
<   labels:
<     app: sso
<     realm: redhat-external
<   name: redhat-external
<   namespace: rhtap-auth
< spec:
<   instanceSelector:
<     matchLabels:
<       app: sso
<   realm:
<     clientScopes:
<     - attributes:
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 672455b2-1e92-44f6-9fb6-fe2017995aed
<       name: profile_level.name_and_dev_terms
<       protocol: openid-connect
<     - attributes:
<         consent.screen.text: ${profileScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: profile'
<       id: 65c7d0bd-243d-42d2-b7f2-64ce2fa7ca7e
<       name: profile
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: locale
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: locale
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: e3f5a475-0722-4293-bcd5-2bad6bc7dde6
<         name: locale
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           id.token.claim: "true"
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 7b91d2ec-3c9f-4e7d-859e-67900de0c6b6
<         name: full name
<         protocol: openid-connect
<         protocolMapper: oidc-full-name-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: family_name
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: lastName
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: d301c7b7-0d97-4d37-8527-a5c63d461a3c
<         name: family name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: updated_at
<           id.token.claim: "true"
<           jsonType.label: long
<           user.attribute: updatedAt
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 71c6caff-3f17-47db-8dc1-42f9af01832e
<         name: updated at
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: picture
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: picture
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 6bcb9f8d-94be-48b3-bd47-2ba7746d65ac
<         name: picture
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: nickname
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: nickname
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: d497ef2e-5d5b-4d8a-9392-04e09f5c51b6
<         name: nickname
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: website
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: website
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: f8167604-073d-47ea-9fd1-6ec754ce5c49
<         name: website
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: profile
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: profile
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 48d8f2ff-d0e6-41f2-839e-3e51951ee078
<         name: profile
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: preferred_username
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: username
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 463f80df-1554-4f0b-889f-1e6f2308ba17
<         name: username
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: given_name
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: firstName
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: c347cd4f-a2e1-4a5f-a676-e779beb7bccf
<         name: given name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: zoneinfo
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: zoneinfo
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 665672fd-872e-4a58-b586-b6f6fddbc1ac
<         name: zoneinfo
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: gender
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: gender
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: b76e46cc-98a9-4bf7-8918-0cc8eb2dfc8c
<         name: gender
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: birthdate
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: birthdate
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: cb1a55e3-87f0-4efb-b5c0-d5de40344bfc
<         name: birthdate
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: middle_name
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: middleName
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 9b5c1c92-c937-4216-9fdb-db23d6eee788
<         name: middle name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-attribute-mapper
<     - attributes:
<         consent.screen.text: ${emailScopeConsentText}
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       description: 'OpenID Connect built-in scope: email'
<       id: 45e1900d-2199-45fc-9028-a39497a6cdd5
<       name: email
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: email
<           id.token.claim: "true"
<           jsonType.label: String
<           user.attribute: email
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 149315f5-4595-4794-b11f-f4b68b1c9f7a
<         name: email
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: email_verified
<           id.token.claim: "true"
<           jsonType.label: boolean
<           user.attribute: emailVerified
<           userinfo.token.claim: "true"
<         consentRequired: false
<         id: 26f0791c-93cf-4241-9c92-5528e67b9817
<         name: email verified
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<     displayName: redhat-external
<     enabled: true
<     id: redhat-external
<     identityProviders:
<     - alias: openshift-v4
<       config:
<         authorizationUrl: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/authorize
<         baseUrl: https://api.stone-prod-p02.hjvn.p1.openshiftapps.com:6443
<         clientId: system:serviceaccount:rhtap-auth:openshift-provider
<         clientSecret: To be added manually in the keycloak UI see the readme
<         syncMode: FORCE
<         tokenUrl: https://oauth-openshift.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/oauth/token
<       enabled: true
<       internalId: openshift-v4
<       providerId: openshift-v4
<     realm: redhat-external
<     sslRequired: all
< ---
< apiVersion: operators.coreos.com/v1
< kind: OperatorGroup
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
<   name: keycloak-operatorgroup
<   namespace: rhtap-auth
< spec:
<   targetNamespaces:
<   - rhtap-auth
< ---
< apiVersion: operators.coreos.com/v1alpha1
< kind: Subscription
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-wave: "-2"
<   name: rhsso-operator
<   namespace: rhtap-auth
< spec:
<   channel: stable
<   installPlanApproval: Automatic
<   name: rhsso-operator
<   source: redhat-operators
<   sourceNamespace: openshift-marketplace 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from d6c51759 to dee28678 on Sun May 26 12:42:32 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
index c5eeb9a0..0f640327 100644
--- a/components/keycloak/production/stone-prod-p02/kustomization.yaml
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -1,14 +1,14 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-#  - ../../base
+  - ../../base
   - ../../base/konflux-workspace-admins
-#patches:
-#  - path: set-redirect-uri.yaml
-#    target:
-#      name: openshift-provider
-#      kind: ServiceAccount
-#  - path: set-ocp-idp.yaml
-#    target:
-#      name: redhat-external
-#      kind: KeycloakRealm
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm 
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
<h3>3: Development changes from d6c51759 to dee28678 on Sun May 26 12:42:32 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/components/keycloak/production/stone-prod-p02/kustomization.yaml b/components/keycloak/production/stone-prod-p02/kustomization.yaml
index c5eeb9a0..0f640327 100644
--- a/components/keycloak/production/stone-prod-p02/kustomization.yaml
+++ b/components/keycloak/production/stone-prod-p02/kustomization.yaml
@@ -1,14 +1,14 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-#  - ../../base
+  - ../../base
   - ../../base/konflux-workspace-admins
-#patches:
-#  - path: set-redirect-uri.yaml
-#    target:
-#      name: openshift-provider
-#      kind: ServiceAccount
-#  - path: set-ocp-idp.yaml
-#    target:
-#      name: redhat-external
-#      kind: KeycloakRealm
+patches:
+  - path: set-redirect-uri.yaml
+    target:
+      name: openshift-provider
+      kind: ServiceAccount
+  - path: set-ocp-idp.yaml
+    target:
+      name: redhat-external
+      kind: KeycloakRealm 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 7ba4c3ae to d6c51759 on Sun May 26 12:01:46 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index a73c712f..608823cb 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -3,6 +3,8 @@ kind: ProxyPlugin
 metadata:
   name: tekton-results
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 325c6e77..568ed5b3 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-m01.84db.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
index 852abb1d..f8cc7fb0 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
index 761838de..5b3137be 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 3d8e583b..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index cb443616..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
<h3>4: Staging changes from 7ba4c3ae to d6c51759 on Sun May 26 12:01:46 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index a73c712f..608823cb 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -3,6 +3,8 @@ kind: ProxyPlugin
 metadata:
   name: tekton-results
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 325c6e77..568ed5b3 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-m01.84db.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
index 852abb1d..f8cc7fb0 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
index 761838de..5b3137be 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 3d8e583b..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index cb443616..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
<h3>4: Development changes from 7ba4c3ae to d6c51759 on Sun May 26 12:01:46 2024 </h3>  
 
<details> 
<summary>Git Diff (122 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
index a73c712f..608823cb 100644
--- a/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
+++ b/components/sandbox/toolchain-host-operator/base/proxy/proxyplugin.yaml
@@ -3,6 +3,8 @@ kind: ProxyPlugin
 metadata:
   name: tekton-results
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   openShiftRouteTargetEndpoint:
     # see https://github.com/openshift-pipelines/pipeline-service/blob/main/operator/gitops/argocd/pipeline-service/tekton-results/api-route.yaml
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 325c6e77..568ed5b3 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-m01.84db.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
index 852abb1d..f8cc7fb0 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p01.wcfb.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
index 761838de..5b3137be 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prod-p02/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prod-p02.hjvn.p1.openshiftapps.com
   enabled: true
@@ -10,4 +12,4 @@ spec:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 3d8e583b..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index cb443616..8ca9480e 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -3,6 +3,8 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-m01.7ayg.p1.openshiftapps.com
   enabled: true
@@ -17,10 +19,12 @@ kind: SpaceProvisionerConfig
 metadata:
   name: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-stg-rh01.l2vh.p1.openshiftapps.com
   enabled: false
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
```
 
</details> 
<br> 


</div>
