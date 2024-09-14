# kustomize changes tracked by commits 
### This file generated at Sat Sep 14 16:02:55 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 37f5bebe to ab022e28 on Fri Sep 13 11:38:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a7c9dbb..6170fa68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 5ca7e1f3..9bd6c54b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
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
<h3>1: Staging changes from 37f5bebe to ab022e28 on Fri Sep 13 11:38:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a7c9dbb..6170fa68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 5ca7e1f3..9bd6c54b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-37f5bebe/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>         image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>             image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 37f5bebe to ab022e28 on Fri Sep 13 11:38:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a7c9dbb..6170fa68 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 5ca7e1f3..9bd6c54b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+- https://github.com/konflux-ci/integration-service/config/default?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 230951f3865ba0fa0b1ab424ceeabeaa2451fc52
+  newTag: 7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-37f5bebe/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>         image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:7173ad88b720ea01479e45d1b36ae49cfe6b8bcd
---
>             image: quay.io/redhat-appstudio/integration-service:230951f3865ba0fa0b1ab424ceeabeaa2451fc52 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from a39ca3a1 to 37f5bebe on Fri Sep 13 10:57:23 2024 </h3>  
 
<details> 
<summary>Git Diff (2408 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index d1ef8fa9..ef08b7d4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -17,8 +17,6 @@ spec:
               elements:
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-host1
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index 4617e956..31ce11a3 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -15,8 +15,6 @@ spec:
                 clusterDir: base
           - list:
               elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index 40548333..c4495c59 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -15,8 +15,6 @@ spec:
                 clusterDir: base
           - list:
               elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
deleted file mode 100644
index dfae5d83..00000000
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
deleted file mode 100644
index ef2ab3e0..00000000
--- a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/backupLocations/0/velero/objectStorage/bucket
-  value: backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
deleted file mode 100644
index e8bef47c..00000000
--- a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/backupLocations/0/velero/config/kmsKeyId
-  value: ce3a05cb-a4c1-4390-a500-0e9eefbffab1
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 4ee8993e..00000000
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/member
-patches:
-  - target:
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-      name: backup-s3-credentials
-    path: backup-s3-credentials-patch.yaml
-  - target:
-      group: oadp.openshift.io
-      version: v1alpha1
-      kind: DataProtectionApplication
-      name: velero-aws
-    path: dpa-bucket-patch.yaml
-  - target:
-      group: oadp.openshift.io
-      version: v1alpha1
-      kind: DataProtectionApplication
-      name: velero-aws
-    path: dpa-kmskeyid-patch.yaml
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 2c86d554..00000000
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
deleted file mode 100644
index 65a7f6e8..00000000
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-#
-# This file grants access to some specific tenant namespaces, to GitOps Service team members, to allow debugging/testing in those Namespaces.
-# - Note: this grants access to the team members's GitHub ID, not to their Red Hat ID.
-#
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-allow-team-access-to-jgwest-tenant
-  namespace: jgwest-tenant
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
diff --git a/components/gitops/staging/stone-stg-m01/kustomization.yaml b/components/gitops/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 27e25486..00000000
--- a/components/gitops/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
-- gitops-team-member-namespaces.yaml
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml b/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml
deleted file mode 100644
index 50be69bd..00000000
--- a/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
----
-- op: add
-  path: /spec/prometheusConfig/externalLabels/source_cluster
-  value:
-    stone-stg-m01
diff --git a/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml b/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 37731611..00000000
--- a/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
-
-patches:
-  - path: cluster-id-label.yaml
-    target:
-      name: appstudio-federate-ms
-      kind: MonitoringStack
-      group: monitoring.rhobs
-      version: v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
deleted file mode 100644
index 19c9b7d8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ /dev/null
@@ -1,2114 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  labels:
-    argocd.argoproj.io/managed-by: openshift-gitops
-  name: openshift-pipelines
----
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: plnsvc-tests
----
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  labels:
-    argocd.argoproj.io/managed-by: openshift-gitops
-  name: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: tekton-results-tests
-  namespace: plnsvc-tests
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: metrics-reader
-  namespace: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-  namespace: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-exec-pprof-data
-  namespace: tekton-results
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pod/exec
-  verbs:
-  - get
-  - list
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - tekton-results-info
-  resources:
-  - configmaps
-  verbs:
-  - get
-  - describe
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-apply-tekton-config-parameters
-rules:
-- apiGroups:
-  - monitoring.coreos.com
-  resources:
-  - servicemonitors
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - operator.tekton.dev
-  resources:
-  - tektonconfigs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - security.openshift.io
-  resources:
-  - securitycontextconstraints
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-jobs-admin
-rules:
-- apiGroups:
-  - batch
-  resources:
-  - jobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-reader
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods
-  - services
-  - namespaces
-  - endpoints
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - apiextensions.k8s.io
-  resources:
-  - customresourcedefinitions
-  verbs:
-  - get
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelineruns
-  - taskruns
-  verbs:
-  - get
-  - list
-  - watch
-  - patch
-- nonResourceURLs:
-  - /metrics
-  verbs:
-  - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-rules:
-- apiGroups:
-  - resolution.tekton.dev
-  resources:
-  - resolutionrequests
-  verbs:
-  - get
-  - list
-  - watch
-  - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
-- apiGroups:
-  - quota.openshift.io
-  resources:
-  - clusterresourcequotas
-  verbs:
-  - list
-  - get
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - ""
-  resourceNames:
-  - appstudio-pipeline
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-- apiGroups:
-  - pipelinesascode.tekton.dev
-  - results.tekton.dev
-  - tekton.dev
-  - triggers.tekton.dev
-  - resolution.tekton.dev
-  resources:
-  - '*'
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - nodes
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - metrics.k8s.io
-  resources:
-  - nodes
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - admissionregistration.k8s.io
-  resources:
-  - '*'
-  verbs:
-  - list
-  - get
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-chains-public-key-viewer
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - public-key
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-    rbac.authorization.k8s.io/aggregate-to-admin: "true"
-  name: tekton-results-admin
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - create
-  - update
-  - get
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-    rbac.authorization.k8s.io/aggregate-to-edit: "true"
-    rbac.authorization.k8s.io/aggregate-to-view: "true"
-  name: tekton-results-readonly
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  - summary
-  verbs:
-  - get
-  - list
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-readwrite
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - create
-  - update
-  - get
-  - list
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-service-metrics-reader
-rules:
-- nonResourceURLs:
-  - /metrics
-  verbs:
-  - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - logs
-  - results
-  - records
-  verbs:
-  - create
-  - get
-  - update
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelineruns
-  - taskruns
-  verbs:
-  - get
-  - list
-  - patch
-  - update
-  - watch
-  - delete
-- apiGroups:
-  - ""
-  resources:
-  - configmaps
-  - pods
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelines
-  verbs:
-  - get
-- apiGroups:
-  - coordination.k8s.io
-  resources:
-  - leases
-  verbs:
-  - get
-  - list
-  - create
-  - update
-  - delete
-  - patch
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-rbac
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-ns-edit
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-chains-public-key-viewer
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-chains-public-key-viewer
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: system:authenticated
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-admin
-  namespace: plnsvc-tests
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-admin
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-exec-pprof-data
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: pipeline-service-sre-exec-pprof-data
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-ns-edit
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: tekton-results-info
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: system:authenticated
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: tekton-results-tests
-  namespace: plnsvc-tests
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-readonly
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-tests
-  namespace: plnsvc-tests
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-apply-tekton-config-parameters
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-apply-tekton-config-parameters
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-jobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-jobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-reader-binding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-exporter-reader
-subjects:
-- kind: ServiceAccount
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-subjects:
-- kind: ServiceAccount
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-sre
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: prometheus-tekton-results-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-api
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-api
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-watcher
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-logs
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-admin
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-rbac
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-watcher-rbac
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  tekton-results-db-ca.pem: |-
-    -----BEGIN CERTIFICATE-----
-    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
-    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
-    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
-    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
-    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
-    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
-    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
-    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
-    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
-    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
-    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
-    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
-    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
-    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
-    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
-    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
-    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
-    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
-    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
-    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
-    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
-    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
-    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
-    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
-    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
-    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
-    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
-    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
-    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
-    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
-    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
-    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
-    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
-    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
-    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
-    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
-    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
-    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
-    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
-    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
-    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
-    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
-    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
-    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
-    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
-    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
-    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
-    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
-    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
-    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
-    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
-    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
-    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
-    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
-    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
-    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
-    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
-    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
-    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
-    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
-    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
-    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
-    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
-    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
-    lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
-    Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
-    bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
-    B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
-    CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
-    MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
-    biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
-    dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
-    L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
-    JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
-    yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
-    VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
-    ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
-    bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
-    U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
-    S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
-    oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
-    LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
-    AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
-    HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
-    BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
-    pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
-    KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
-    76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
-    n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
-    jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
-    OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
-    z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
-    9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
-    iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
-    y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
-    0Ws=
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
-    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
-    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
-    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
-    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
-    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
-    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
-    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
-    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
-    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
-    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
-    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
-    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
-    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
-    OGh9pTYPVkUbBiKPA7lVVhre
-    -----END CERTIFICATE-----
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: rds-root-crt
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  config.env: |
-    DB_USER=
-    DB_PASSWORD=
-    DB_HOST=
-    DB_PORT=5432
-    DB_NAME=
-    DB_SSLMODE=verify-full
-    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
-    DB_ENABLE_AUTO_MIGRATION=true
-    SERVER_PORT=8080
-    PROMETHEUS_PORT=9090
-    PROMETHEUS_HISTOGRAM=true
-    TLS_PATH=/etc/tls
-    AUTH_DISABLE=false
-    AUTH_IMPERSONATE=true
-    LOG_LEVEL=info
-    LOGS_API=false
-    LOGS_TYPE=File
-    LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
-    S3_BUCKET_NAME=
-    S3_ENDPOINT=
-    S3_HOSTNAME_IMMUTABLE=false
-    S3_REGION=
-    S3_ACCESS_KEY_ID=
-    S3_SECRET_ACCESS_KEY=
-    S3_MULTI_PART_SIZE=5242880
-    GCS_BUCKET_NAME=
-    STORAGE_EMULATOR_HOST=
-    K8S_QPS=50
-    K8S_BURST=100
-    PROFILING=true
-    PROFILING_PORT=6060
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api-config
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  _example: |
-    ################################
-    #                              #
-    #    EXAMPLE CONFIGURATION     #
-    #                              #
-    ################################
-    # This block is not actually functional configuration,
-    # but serves to illustrate the available configuration
-    # options and document them in a way that is accessible
-    # to users that `kubectl edit` this config map.
-    #
-    # These sample configuration options may be copied out of
-    # this example block and unindented to be in the data block
-    # to actually change the configuration.
-    # lease-duration is how long non-leaders will wait to try to acquire the
-    # lock; 15 seconds is the value used by core kubernetes controllers.
-    lease-duration: "60s"
-    # renew-deadline is how long a leader will try to renew the lease before
-    # giving up; 10 seconds is the value used by core kubernetes controllers.
-    renew-deadline: "40s"
-    # retry-period is how long the leader election client waits between tries of
-    # actions; 2 seconds is the value used by core kubernetes controllers.
-    retry-period: "10s"
-    # buckets is the number of buckets used to partition key space of each
-    # Reconciler. If this number is M and the replica number of the controller
-    # is N, the N replicas will compete for the M buckets. The owner of a
-    # bucket will take care of the reconciling for the keys partitioned into
-    # that bucket.
-    buckets: "1"
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-leader-election
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-leader-election
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.watcher: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  labels:
-    app.kubernetes.io/name: tekton-results-logging
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-logging
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  _example: |
-    ################################
-    #                              #
-    #    EXAMPLE CONFIGURATION     #
-    #                              #
-    ################################
-
-    # This block is not actually functional configuration,
-    # but serves to illustrate the available configuration
-    # options and document them in a way that is accessible
-    # to users that `kubectl edit` this config map.
-    #
-    # These sample configuration options may be copied out of
-    # this example block and unindented to be in the data block
-    # to actually change the configuration.
-
-    # metrics.backend-destination field specifies the system metrics destination.
-    # It supports either prometheus (the default) or stackdriver.
-    # Note: Using Stackdriver will incur additional charges.
-    metrics.backend-destination: prometheus
-
-    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
-    # field is optional. When running on GCE, application default credentials will be
-    # used and metrics will be sent to the cluster's project if this field is
-    # not provided.
-    metrics.stackdriver-project-id: "<your stackdriver project id>"
-
-    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
-    # to send metrics to Stackdriver using "global" resource type and custom
-    # metric type. Setting this flag to "true" could cause extra Stackdriver
-    # charge.  If metrics.backend-destination is not Stackdriver, this is
-    # ignored.
-    metrics.allow-stackdriver-custom-metrics: "false"
-    metrics.taskrun.level: "task"
-    metrics.taskrun.duration-type: "histogram"
-    metrics.pipelinerun.level: "pipeline"
-    metrics.pipelinerun.duration-type: "histogram"
-  profiling.enable: "true"
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-observability
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-observability
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  version: devel
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
----
-apiVersion: v1
-kind: Secret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    kubernetes.io/service-account.name: metrics-reader
-  name: metrics-reader
-  namespace: tekton-results
-type: kubernetes.io/service-account-token
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  labels:
-    app: pipeline-metrics-exporter
-  name: pipeline-metrics-exporter-service
-  namespace: openshift-pipelines
-spec:
-  ports:
-  - name: metrics
-    port: 9117
-    protocol: TCP
-    targetPort: 9117
-  selector:
-    app: pipeline-metrics-exporter
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
-  labels:
-    app: tekton-chains-controller
-    app.kubernetes.io/component: metrics
-    app.kubernetes.io/part-of: tekton-chains
-  name: tekton-chains
-  namespace: openshift-pipelines
-spec:
-  ports:
-  - name: metrics
-    port: 9090
-    protocol: TCP
-    targetPort: 9090
-  selector:
-    app.kubernetes.io/component: controller
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-chains
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
-  labels:
-    app.kubernetes.io/name: tekton-results-api
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api-service
-  namespace: tekton-results
-spec:
-  ports:
-  - name: server
-    port: 8080
-    protocol: TCP
-    targetPort: 8080
-  - name: metrics
-    port: 9443
-    protocol: TCP
-    targetPort: metrics
-  - name: profiling
-    port: 6060
-    protocol: TCP
-    targetPort: 6060
-  selector:
-    app.kubernetes.io/name: tekton-results-api
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "2"
-  labels:
-    app.kubernetes.io/name: tekton-results-watcher
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  ports:
-  - name: watchermetrics
-    port: 8443
-    targetPort: watchermetrics
-  - name: profiling
-    port: 8008
-  selector:
-    app.kubernetes.io/name: tekton-results-watcher
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-metrics-exporter
-  namespace: openshift-pipelines
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app: pipeline-metrics-exporter
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-      labels:
-        app: pipeline-metrics-exporter
-    spec:
-      containers:
-      - args:
-        - -pprof-address
-        - "6060"
-        - -zap-log-level=6
-        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
-        name: pipeline-metrics-exporter
-        ports:
-        - containerPort: 9117
-          name: metrics
-        resources:
-          limits:
-            cpu: 500m
-            memory: 512Mi
-          requests:
-            cpu: 250m
-            memory: 128Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      restartPolicy: Always
-      serviceAccountName: pipeline-service-exporter
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/name: tekton-results-api
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-  namespace: tekton-results
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-api
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
-      labels:
-        app.kubernetes.io/name: tekton-results-api
-        app.kubernetes.io/version: devel
-    spec:
-      containers:
-      - args:
-        - --secure-listen-address=0.0.0.0:9443
-        - --upstream=http://127.0.0.1:9090/
-        - --logtostderr=true
-        - --v=6
-        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
-        name: kube-rbac-proxy
-        ports:
-        - containerPort: 9443
-          name: metrics
-          protocol: TCP
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-      - env:
-        - name: LOGS_API
-          value: "true"
-        - name: LOGS_TYPE
-          value: S3
-        - name: S3_HOSTNAME_IMMUTABLE
-          value: "true"
-        - name: S3_ACCESS_KEY_ID
-          valueFrom:
-            secretKeyRef:
-              key: aws_access_key_id
-              name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
-          valueFrom:
-            secretKeyRef:
-              key: aws_secret_access_key
-              name: tekton-results-s3
-        - name: S3_REGION
-          valueFrom:
-            secretKeyRef:
-              key: aws_region
-              name: tekton-results-s3
-        - name: S3_BUCKET_NAME
-          valueFrom:
-            secretKeyRef:
-              key: bucket
-              name: tekton-results-s3
-        - name: S3_ENDPOINT
-          valueFrom:
-            secretKeyRef:
-              key: endpoint
-              name: tekton-results-s3
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
-        livenessProbe:
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        name: api
-        readinessProbe:
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        resources:
-          limits:
-            cpu: 100m
-            memory: 512Mi
-          requests:
-            cpu: 100m
-            memory: 512Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        startupProbe:
-          failureThreshold: 10
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        volumeMounts:
-        - mountPath: /etc/tls/db
-          name: db-tls-ca
-          readOnly: true
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
-        - mountPath: /etc/tls
-          name: tls
-          readOnly: true
-      serviceAccountName: tekton-results-api
-      volumes:
-      - configMap:
-          name: rds-root-crt
-        name: db-tls-ca
-      - configMap:
-          name: tekton-results-api-config
-        name: config
-      - name: tls
-        secret:
-          secretName: tekton-results-tls
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "2"
-  labels:
-    app.kubernetes.io/name: tekton-results-watcher
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-watcher
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
-      labels:
-        app.kubernetes.io/name: tekton-results-watcher
-        app.kubernetes.io/version: devel
-    spec:
-      affinity:
-        nodeAffinity:
-          requiredDuringSchedulingIgnoredDuringExecution:
-            nodeSelectorTerms:
-            - matchExpressions:
-              - key: kubernetes.io/os
-                operator: NotIn
-                values:
-                - windows
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-          - podAffinityTerm:
-              labelSelector:
-                matchLabels:
-                  app.kubernetes.io/name: tekton-results-watcher
-              topologyKey: kubernetes.io/hostname
-            weight: 100
-      containers:
-      - args:
-        - --secure-listen-address=0.0.0.0:8443
-        - --upstream=http://127.0.0.1:9090/
-        - --logtostderr=true
-        - --v=6
-        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
-        name: kube-rbac-proxy
-        ports:
-        - containerPort: 8443
-          name: watchermetrics
-          protocol: TCP
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-      - args:
-        - -api_addr
-        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
-        - -auth_mode
-        - token
-        - -check_owner=false
-        - -completed_run_grace_period
-        - 10m
-        env:
-        - name: SYSTEM_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        - name: CONFIG_LOGGING_NAME
-          value: tekton-results-config-logging
-        - name: CONFIG_LEADERELECTION_NAME
-          value: tekton-results-config-leader-election
-        - name: CONFIG_OBSERVABILITY_NAME
-          value: tekton-results-config-observability
-        - name: METRICS_DOMAIN
-          value: tekton.dev/results
-        - name: TEKTON_RESULTS_API_SERVICE
-          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
-        - name: AUTH_MODE
-          value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
-        name: watcher
-        ports:
-        - containerPort: 9090
-          name: metrics
-        - containerPort: 8008
-          name: profiling
-        resources:
-          limits:
-            cpu: 250m
-            memory: 4Gi
-          requests:
-            cpu: 250m
-            memory: 4Gi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tls
-          name: tls
-          readOnly: true
-      serviceAccountName: tekton-results-watcher
-      volumes:
-      - name: tls
-        secret:
-          secretName: tekton-results-tls
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: pipelines-as-code-secret
-  namespace: openshift-pipelines
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/github-app
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: pipelines-as-code-secret
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-public-key
-  namespace: openshift-pipelines
-spec:
-  data:
-  - remoteRef:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-      property: cosign.pub
-    secretKey: cosign.pub
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Orphan
-    name: public-key
-    template:
-      metadata:
-        annotations:
-          argocd.argoproj.io/sync-options: Prune=false
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Orphan
-    name: signing-secrets
-    template:
-      metadata:
-        annotations:
-          argocd.argoproj.io/sync-options: Prune=false
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-results-database
-  namespace: tekton-results
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-database
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-results-s3
-  namespace: tekton-results
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service
-  namespace: openshift-pipelines
-spec:
-  endpoints:
-  - honorLabels: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-    scheme: http
-  jobLabel: app
-  namespaceSelector:
-    matchNames:
-    - openshift-pipelines
-  selector:
-    matchLabels:
-      app: pipeline-metrics-exporter
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-controller
-  namespace: openshift-pipelines
-spec:
-  endpoints:
-  - honorLabels: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-    scheme: http
-  jobLabel: app.kubernetes.io/name
-  namespaceSelector:
-    matchNames:
-    - openshift-pipelines
-  selector:
-    matchLabels:
-      app: tekton-chains-controller
-      app.kubernetes.io/component: metrics
-      app.kubernetes.io/part-of: tekton-chains
-  targetLabels:
-  - app
-  - app.kubernetes.io/component
-  - app.kubernetes.io/part-of
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-api
-  namespace: tekton-results
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      key: token
-      name: metrics-reader
-    path: /metrics
-    port: metrics
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-  jobLabel: app.kubernetes.io/name
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-api
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      key: token
-      name: metrics-reader
-    path: /metrics
-    port: watchermetrics
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-watcher
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: config
-spec:
-  chain:
-    artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: "true"
-    artifacts.pipelinerun.format: in-toto
-    artifacts.pipelinerun.storage: oci
-    artifacts.taskrun.format: in-toto
-    artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                - args:
-                  - --threads-per-controller=32
-                  - --kube-api-qps=50
-                  - --kube-api-burst=50
-                  name: tekton-chains-controller
-    transparency.enabled: "false"
-  params:
-  - name: createRbacResource
-    value: "false"
-  pipeline:
-    default-service-account: appstudio-pipeline
-    enable-api-fields: alpha
-    enable-bundles-resolver: true
-    enable-cluster-resolver: true
-    enable-git-resolver: true
-    enable-hub-resolver: true
-    enable-step-actions: true
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
-            default-timeout-minutes: "120"
-        config-logging:
-          data:
-            loglevel.controller: info
-            loglevel.webhook: info
-            zap-logger-config: |
-              {
-                "level": "info",
-                "development": false,
-                "sampling": {
-                  "initial": 100,
-                  "thereafter": 100
-                },
-                "outputPaths": ["stdout"],
-                "errorOutputPaths": ["stderr"],
-                "encoding": "json",
-                "encoderConfig": {
-                  "timeKey": "ts",
-                  "levelKey": "level",
-                  "nameKey": "logger",
-                  "callerKey": "caller",
-                  "messageKey": "msg",
-                  "stacktraceKey": "stacktrace",
-                  "lineEnding": "",
-                  "levelEncoder": "",
-                  "timeEncoder": "iso8601",
-                  "durationEncoder": "string",
-                  "callerEncoder": ""
-                }
-              }
-      deployments:
-        tekton-operator-proxy-webhook:
-          spec:
-            replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
-      disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 6
-    performance:
-      buckets: 4
-      disable-ha: false
-      kube-api-burst: 50
-      kube-api-qps: 50
-      replicas: 2
-      threads-per-controller: 32
-  platforms:
-    openshift:
-      pipelinesAsCode:
-        enable: true
-        options:
-          deployments:
-            pipelines-as-code-watcher:
-              spec:
-                replicas: 2
-            pipelines-as-code-webhook:
-              spec:
-                replicas: 2
-        settings:
-          application-name: Konflux Staging
-          custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
-            namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
-            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
-  profile: all
-  pruner:
-    disabled: true
-  targetNamespace: openshift-pipelines
-  trigger:
-    options:
-      configMaps:
-        config-logging-triggers:
-          data:
-            loglevel.controller: info
-            loglevel.eventlistener: info
-            loglevel.webhook: info
-            zap-logger-config: |
-              {
-                "level": "info",
-                "development": false,
-                "sampling": {
-                  "initial": 100,
-                  "thereafter": 100
-                },
-                "outputPaths": ["stdout"],
-                "errorOutputPaths": ["stderr"],
-                "encoding": "json",
-                "encoderConfig": {
-                  "timeKey": "ts",
-                  "levelKey": "level",
-                  "nameKey": "logger",
-                  "callerKey": "caller",
-                  "messageKey": "msg",
-                  "stacktraceKey": "stacktrace",
-                  "lineEnding": "",
-                  "levelEncoder": "",
-                  "timeEncoder": "iso8601",
-                  "durationEncoder": "string",
-                  "callerEncoder": ""
-                }
-              }
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-pipelines-operator
-  namespace: openshift-operators
-spec:
-  channel: latest
-  config:
-    env:
-    - name: AUTOINSTALL_COMPONENTS
-      value: "false"
-  name: openshift-pipelines-operator-rh
-  source: custom-operators
-  sourceNamespace: openshift-marketplace
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
-allowHostDirVolumePlugin: false
-allowHostIPC: false
-allowHostNetwork: false
-allowHostPID: false
-allowHostPorts: false
-allowPrivilegeEscalation: false
-allowPrivilegedContainer: false
-allowedCapabilities:
-- SETFCAP
-apiVersion: security.openshift.io/v1
-defaultAddCapabilities: null
-fsGroup:
-  type: MustRunAs
-groups:
-- system:cluster-admins
-kind: SecurityContextConstraints
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: appstudio-pipelines-scc
-priority: 10
-readOnlyRootFilesystem: false
-requiredDropCapabilities:
-- MKNOD
-runAsUser:
-  type: RunAsAny
-seLinuxContext:
-  type: MustRunAs
-supplementalGroups:
-  type: RunAsAny
-users: []
-volumes:
-- configMap
-- downwardAPI
-- emptyDir
-- persistentVolumeClaim
-- projected
-- secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index ee2da5d8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - deploy.yaml
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
deleted file mode 100644
index 2bd243ef..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ /dev/null
@@ -1,29 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-patches:
-  - path: tekton-chains-public-key-path.yaml
-    target:
-      name: tekton-chains-public-key
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-chains-signing-secret-path.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-results-database-secret-path.yaml
-    target:
-      name: tekton-results-database
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-results-s3-secret-path.yaml
-    target:
-      name: tekton-results-s3
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
deleted file mode 100644
index caf2f13c..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/data/0/remoteRef/key
-  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
deleted file mode 100644
index e8fefefe..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
deleted file mode 100644
index be62b7c8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
deleted file mode 100644
index c2731fbd..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index 3d873917..d9d94c52 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -2,8 +2,6 @@ clusters:
   host:
     api: https://api.stone-stg-host.qc0p.p1.openshiftapps.com:6443
   members:
-  - api: https://api.stone-stg-m01.7ayg.p1.openshiftapps.com:6443
-    name: member-1
   - api: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
     name: member-rh-1
 
diff --git a/components/sprayproxy/staging/change-backends.yaml b/components/sprayproxy/staging/change-backends.yaml
index e025a004..1c98da6d 100644
--- a/components/sprayproxy/staging/change-backends.yaml
+++ b/components/sprayproxy/staging/change-backends.yaml
@@ -12,5 +12,4 @@ spec:
           env:
             - name: SPRAYPROXY_SERVER_BACKEND
               value: >
-                https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-m01.7ayg.p1.openshiftapps.com
                 https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com 
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
<h3>2: Staging changes from a39ca3a1 to 37f5bebe on Fri Sep 13 10:57:23 2024 </h3>  
 
<details> 
<summary>Git Diff (2408 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index d1ef8fa9..ef08b7d4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -17,8 +17,6 @@ spec:
               elements:
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-host1
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index 4617e956..31ce11a3 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -15,8 +15,6 @@ spec:
                 clusterDir: base
           - list:
               elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index 40548333..c4495c59 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -15,8 +15,6 @@ spec:
                 clusterDir: base
           - list:
               elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
deleted file mode 100644
index dfae5d83..00000000
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
deleted file mode 100644
index ef2ab3e0..00000000
--- a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/backupLocations/0/velero/objectStorage/bucket
-  value: backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
deleted file mode 100644
index e8bef47c..00000000
--- a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/backupLocations/0/velero/config/kmsKeyId
-  value: ce3a05cb-a4c1-4390-a500-0e9eefbffab1
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 4ee8993e..00000000
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/member
-patches:
-  - target:
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-      name: backup-s3-credentials
-    path: backup-s3-credentials-patch.yaml
-  - target:
-      group: oadp.openshift.io
-      version: v1alpha1
-      kind: DataProtectionApplication
-      name: velero-aws
-    path: dpa-bucket-patch.yaml
-  - target:
-      group: oadp.openshift.io
-      version: v1alpha1
-      kind: DataProtectionApplication
-      name: velero-aws
-    path: dpa-kmskeyid-patch.yaml
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 2c86d554..00000000
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
deleted file mode 100644
index 65a7f6e8..00000000
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-#
-# This file grants access to some specific tenant namespaces, to GitOps Service team members, to allow debugging/testing in those Namespaces.
-# - Note: this grants access to the team members's GitHub ID, not to their Red Hat ID.
-#
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-allow-team-access-to-jgwest-tenant
-  namespace: jgwest-tenant
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
diff --git a/components/gitops/staging/stone-stg-m01/kustomization.yaml b/components/gitops/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 27e25486..00000000
--- a/components/gitops/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
-- gitops-team-member-namespaces.yaml
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml b/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml
deleted file mode 100644
index 50be69bd..00000000
--- a/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
----
-- op: add
-  path: /spec/prometheusConfig/externalLabels/source_cluster
-  value:
-    stone-stg-m01
diff --git a/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml b/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 37731611..00000000
--- a/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
-
-patches:
-  - path: cluster-id-label.yaml
-    target:
-      name: appstudio-federate-ms
-      kind: MonitoringStack
-      group: monitoring.rhobs
-      version: v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
deleted file mode 100644
index 19c9b7d8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ /dev/null
@@ -1,2114 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  labels:
-    argocd.argoproj.io/managed-by: openshift-gitops
-  name: openshift-pipelines
----
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: plnsvc-tests
----
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  labels:
-    argocd.argoproj.io/managed-by: openshift-gitops
-  name: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: tekton-results-tests
-  namespace: plnsvc-tests
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: metrics-reader
-  namespace: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-  namespace: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-exec-pprof-data
-  namespace: tekton-results
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pod/exec
-  verbs:
-  - get
-  - list
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - tekton-results-info
-  resources:
-  - configmaps
-  verbs:
-  - get
-  - describe
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-apply-tekton-config-parameters
-rules:
-- apiGroups:
-  - monitoring.coreos.com
-  resources:
-  - servicemonitors
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - operator.tekton.dev
-  resources:
-  - tektonconfigs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - security.openshift.io
-  resources:
-  - securitycontextconstraints
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-jobs-admin
-rules:
-- apiGroups:
-  - batch
-  resources:
-  - jobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-reader
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods
-  - services
-  - namespaces
-  - endpoints
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - apiextensions.k8s.io
-  resources:
-  - customresourcedefinitions
-  verbs:
-  - get
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelineruns
-  - taskruns
-  verbs:
-  - get
-  - list
-  - watch
-  - patch
-- nonResourceURLs:
-  - /metrics
-  verbs:
-  - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-rules:
-- apiGroups:
-  - resolution.tekton.dev
-  resources:
-  - resolutionrequests
-  verbs:
-  - get
-  - list
-  - watch
-  - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
-- apiGroups:
-  - quota.openshift.io
-  resources:
-  - clusterresourcequotas
-  verbs:
-  - list
-  - get
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - ""
-  resourceNames:
-  - appstudio-pipeline
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-- apiGroups:
-  - pipelinesascode.tekton.dev
-  - results.tekton.dev
-  - tekton.dev
-  - triggers.tekton.dev
-  - resolution.tekton.dev
-  resources:
-  - '*'
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - nodes
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - metrics.k8s.io
-  resources:
-  - nodes
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - admissionregistration.k8s.io
-  resources:
-  - '*'
-  verbs:
-  - list
-  - get
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-chains-public-key-viewer
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - public-key
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-    rbac.authorization.k8s.io/aggregate-to-admin: "true"
-  name: tekton-results-admin
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - create
-  - update
-  - get
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-    rbac.authorization.k8s.io/aggregate-to-edit: "true"
-    rbac.authorization.k8s.io/aggregate-to-view: "true"
-  name: tekton-results-readonly
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  - summary
-  verbs:
-  - get
-  - list
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-readwrite
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - create
-  - update
-  - get
-  - list
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-service-metrics-reader
-rules:
-- nonResourceURLs:
-  - /metrics
-  verbs:
-  - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - logs
-  - results
-  - records
-  verbs:
-  - create
-  - get
-  - update
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelineruns
-  - taskruns
-  verbs:
-  - get
-  - list
-  - patch
-  - update
-  - watch
-  - delete
-- apiGroups:
-  - ""
-  resources:
-  - configmaps
-  - pods
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelines
-  verbs:
-  - get
-- apiGroups:
-  - coordination.k8s.io
-  resources:
-  - leases
-  verbs:
-  - get
-  - list
-  - create
-  - update
-  - delete
-  - patch
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-rbac
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-ns-edit
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-chains-public-key-viewer
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-chains-public-key-viewer
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: system:authenticated
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-admin
-  namespace: plnsvc-tests
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-admin
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-exec-pprof-data
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: pipeline-service-sre-exec-pprof-data
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-ns-edit
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: tekton-results-info
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: system:authenticated
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: tekton-results-tests
-  namespace: plnsvc-tests
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-readonly
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-tests
-  namespace: plnsvc-tests
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-apply-tekton-config-parameters
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-apply-tekton-config-parameters
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-jobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-jobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-reader-binding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-exporter-reader
-subjects:
-- kind: ServiceAccount
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-subjects:
-- kind: ServiceAccount
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-sre
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: prometheus-tekton-results-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-api
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-api
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-watcher
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-logs
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-admin
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-rbac
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-watcher-rbac
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  tekton-results-db-ca.pem: |-
-    -----BEGIN CERTIFICATE-----
-    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
-    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
-    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
-    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
-    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
-    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
-    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
-    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
-    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
-    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
-    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
-    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
-    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
-    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
-    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
-    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
-    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
-    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
-    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
-    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
-    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
-    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
-    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
-    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
-    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
-    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
-    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
-    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
-    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
-    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
-    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
-    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
-    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
-    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
-    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
-    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
-    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
-    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
-    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
-    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
-    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
-    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
-    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
-    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
-    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
-    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
-    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
-    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
-    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
-    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
-    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
-    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
-    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
-    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
-    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
-    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
-    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
-    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
-    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
-    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
-    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
-    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
-    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
-    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
-    lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
-    Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
-    bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
-    B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
-    CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
-    MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
-    biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
-    dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
-    L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
-    JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
-    yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
-    VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
-    ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
-    bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
-    U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
-    S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
-    oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
-    LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
-    AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
-    HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
-    BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
-    pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
-    KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
-    76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
-    n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
-    jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
-    OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
-    z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
-    9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
-    iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
-    y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
-    0Ws=
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
-    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
-    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
-    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
-    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
-    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
-    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
-    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
-    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
-    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
-    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
-    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
-    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
-    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
-    OGh9pTYPVkUbBiKPA7lVVhre
-    -----END CERTIFICATE-----
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: rds-root-crt
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  config.env: |
-    DB_USER=
-    DB_PASSWORD=
-    DB_HOST=
-    DB_PORT=5432
-    DB_NAME=
-    DB_SSLMODE=verify-full
-    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
-    DB_ENABLE_AUTO_MIGRATION=true
-    SERVER_PORT=8080
-    PROMETHEUS_PORT=9090
-    PROMETHEUS_HISTOGRAM=true
-    TLS_PATH=/etc/tls
-    AUTH_DISABLE=false
-    AUTH_IMPERSONATE=true
-    LOG_LEVEL=info
-    LOGS_API=false
-    LOGS_TYPE=File
-    LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
-    S3_BUCKET_NAME=
-    S3_ENDPOINT=
-    S3_HOSTNAME_IMMUTABLE=false
-    S3_REGION=
-    S3_ACCESS_KEY_ID=
-    S3_SECRET_ACCESS_KEY=
-    S3_MULTI_PART_SIZE=5242880
-    GCS_BUCKET_NAME=
-    STORAGE_EMULATOR_HOST=
-    K8S_QPS=50
-    K8S_BURST=100
-    PROFILING=true
-    PROFILING_PORT=6060
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api-config
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  _example: |
-    ################################
-    #                              #
-    #    EXAMPLE CONFIGURATION     #
-    #                              #
-    ################################
-    # This block is not actually functional configuration,
-    # but serves to illustrate the available configuration
-    # options and document them in a way that is accessible
-    # to users that `kubectl edit` this config map.
-    #
-    # These sample configuration options may be copied out of
-    # this example block and unindented to be in the data block
-    # to actually change the configuration.
-    # lease-duration is how long non-leaders will wait to try to acquire the
-    # lock; 15 seconds is the value used by core kubernetes controllers.
-    lease-duration: "60s"
-    # renew-deadline is how long a leader will try to renew the lease before
-    # giving up; 10 seconds is the value used by core kubernetes controllers.
-    renew-deadline: "40s"
-    # retry-period is how long the leader election client waits between tries of
-    # actions; 2 seconds is the value used by core kubernetes controllers.
-    retry-period: "10s"
-    # buckets is the number of buckets used to partition key space of each
-    # Reconciler. If this number is M and the replica number of the controller
-    # is N, the N replicas will compete for the M buckets. The owner of a
-    # bucket will take care of the reconciling for the keys partitioned into
-    # that bucket.
-    buckets: "1"
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-leader-election
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-leader-election
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.watcher: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  labels:
-    app.kubernetes.io/name: tekton-results-logging
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-logging
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  _example: |
-    ################################
-    #                              #
-    #    EXAMPLE CONFIGURATION     #
-    #                              #
-    ################################
-
-    # This block is not actually functional configuration,
-    # but serves to illustrate the available configuration
-    # options and document them in a way that is accessible
-    # to users that `kubectl edit` this config map.
-    #
-    # These sample configuration options may be copied out of
-    # this example block and unindented to be in the data block
-    # to actually change the configuration.
-
-    # metrics.backend-destination field specifies the system metrics destination.
-    # It supports either prometheus (the default) or stackdriver.
-    # Note: Using Stackdriver will incur additional charges.
-    metrics.backend-destination: prometheus
-
-    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
-    # field is optional. When running on GCE, application default credentials will be
-    # used and metrics will be sent to the cluster's project if this field is
-    # not provided.
-    metrics.stackdriver-project-id: "<your stackdriver project id>"
-
-    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
-    # to send metrics to Stackdriver using "global" resource type and custom
-    # metric type. Setting this flag to "true" could cause extra Stackdriver
-    # charge.  If metrics.backend-destination is not Stackdriver, this is
-    # ignored.
-    metrics.allow-stackdriver-custom-metrics: "false"
-    metrics.taskrun.level: "task"
-    metrics.taskrun.duration-type: "histogram"
-    metrics.pipelinerun.level: "pipeline"
-    metrics.pipelinerun.duration-type: "histogram"
-  profiling.enable: "true"
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-observability
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-observability
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  version: devel
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
----
-apiVersion: v1
-kind: Secret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    kubernetes.io/service-account.name: metrics-reader
-  name: metrics-reader
-  namespace: tekton-results
-type: kubernetes.io/service-account-token
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  labels:
-    app: pipeline-metrics-exporter
-  name: pipeline-metrics-exporter-service
-  namespace: openshift-pipelines
-spec:
-  ports:
-  - name: metrics
-    port: 9117
-    protocol: TCP
-    targetPort: 9117
-  selector:
-    app: pipeline-metrics-exporter
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
-  labels:
-    app: tekton-chains-controller
-    app.kubernetes.io/component: metrics
-    app.kubernetes.io/part-of: tekton-chains
-  name: tekton-chains
-  namespace: openshift-pipelines
-spec:
-  ports:
-  - name: metrics
-    port: 9090
-    protocol: TCP
-    targetPort: 9090
-  selector:
-    app.kubernetes.io/component: controller
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-chains
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
-  labels:
-    app.kubernetes.io/name: tekton-results-api
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api-service
-  namespace: tekton-results
-spec:
-  ports:
-  - name: server
-    port: 8080
-    protocol: TCP
-    targetPort: 8080
-  - name: metrics
-    port: 9443
-    protocol: TCP
-    targetPort: metrics
-  - name: profiling
-    port: 6060
-    protocol: TCP
-    targetPort: 6060
-  selector:
-    app.kubernetes.io/name: tekton-results-api
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "2"
-  labels:
-    app.kubernetes.io/name: tekton-results-watcher
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  ports:
-  - name: watchermetrics
-    port: 8443
-    targetPort: watchermetrics
-  - name: profiling
-    port: 8008
-  selector:
-    app.kubernetes.io/name: tekton-results-watcher
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-metrics-exporter
-  namespace: openshift-pipelines
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app: pipeline-metrics-exporter
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-      labels:
-        app: pipeline-metrics-exporter
-    spec:
-      containers:
-      - args:
-        - -pprof-address
-        - "6060"
-        - -zap-log-level=6
-        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
-        name: pipeline-metrics-exporter
-        ports:
-        - containerPort: 9117
-          name: metrics
-        resources:
-          limits:
-            cpu: 500m
-            memory: 512Mi
-          requests:
-            cpu: 250m
-            memory: 128Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      restartPolicy: Always
-      serviceAccountName: pipeline-service-exporter
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/name: tekton-results-api
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-  namespace: tekton-results
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-api
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
-      labels:
-        app.kubernetes.io/name: tekton-results-api
-        app.kubernetes.io/version: devel
-    spec:
-      containers:
-      - args:
-        - --secure-listen-address=0.0.0.0:9443
-        - --upstream=http://127.0.0.1:9090/
-        - --logtostderr=true
-        - --v=6
-        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
-        name: kube-rbac-proxy
-        ports:
-        - containerPort: 9443
-          name: metrics
-          protocol: TCP
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-      - env:
-        - name: LOGS_API
-          value: "true"
-        - name: LOGS_TYPE
-          value: S3
-        - name: S3_HOSTNAME_IMMUTABLE
-          value: "true"
-        - name: S3_ACCESS_KEY_ID
-          valueFrom:
-            secretKeyRef:
-              key: aws_access_key_id
-              name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
-          valueFrom:
-            secretKeyRef:
-              key: aws_secret_access_key
-              name: tekton-results-s3
-        - name: S3_REGION
-          valueFrom:
-            secretKeyRef:
-              key: aws_region
-              name: tekton-results-s3
-        - name: S3_BUCKET_NAME
-          valueFrom:
-            secretKeyRef:
-              key: bucket
-              name: tekton-results-s3
-        - name: S3_ENDPOINT
-          valueFrom:
-            secretKeyRef:
-              key: endpoint
-              name: tekton-results-s3
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
-        livenessProbe:
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        name: api
-        readinessProbe:
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        resources:
-          limits:
-            cpu: 100m
-            memory: 512Mi
-          requests:
-            cpu: 100m
-            memory: 512Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        startupProbe:
-          failureThreshold: 10
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        volumeMounts:
-        - mountPath: /etc/tls/db
-          name: db-tls-ca
-          readOnly: true
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
-        - mountPath: /etc/tls
-          name: tls
-          readOnly: true
-      serviceAccountName: tekton-results-api
-      volumes:
-      - configMap:
-          name: rds-root-crt
-        name: db-tls-ca
-      - configMap:
-          name: tekton-results-api-config
-        name: config
-      - name: tls
-        secret:
-          secretName: tekton-results-tls
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "2"
-  labels:
-    app.kubernetes.io/name: tekton-results-watcher
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-watcher
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
-      labels:
-        app.kubernetes.io/name: tekton-results-watcher
-        app.kubernetes.io/version: devel
-    spec:
-      affinity:
-        nodeAffinity:
-          requiredDuringSchedulingIgnoredDuringExecution:
-            nodeSelectorTerms:
-            - matchExpressions:
-              - key: kubernetes.io/os
-                operator: NotIn
-                values:
-                - windows
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-          - podAffinityTerm:
-              labelSelector:
-                matchLabels:
-                  app.kubernetes.io/name: tekton-results-watcher
-              topologyKey: kubernetes.io/hostname
-            weight: 100
-      containers:
-      - args:
-        - --secure-listen-address=0.0.0.0:8443
-        - --upstream=http://127.0.0.1:9090/
-        - --logtostderr=true
-        - --v=6
-        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
-        name: kube-rbac-proxy
-        ports:
-        - containerPort: 8443
-          name: watchermetrics
-          protocol: TCP
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-      - args:
-        - -api_addr
-        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
-        - -auth_mode
-        - token
-        - -check_owner=false
-        - -completed_run_grace_period
-        - 10m
-        env:
-        - name: SYSTEM_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        - name: CONFIG_LOGGING_NAME
-          value: tekton-results-config-logging
-        - name: CONFIG_LEADERELECTION_NAME
-          value: tekton-results-config-leader-election
-        - name: CONFIG_OBSERVABILITY_NAME
-          value: tekton-results-config-observability
-        - name: METRICS_DOMAIN
-          value: tekton.dev/results
-        - name: TEKTON_RESULTS_API_SERVICE
-          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
-        - name: AUTH_MODE
-          value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
-        name: watcher
-        ports:
-        - containerPort: 9090
-          name: metrics
-        - containerPort: 8008
-          name: profiling
-        resources:
-          limits:
-            cpu: 250m
-            memory: 4Gi
-          requests:
-            cpu: 250m
-            memory: 4Gi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tls
-          name: tls
-          readOnly: true
-      serviceAccountName: tekton-results-watcher
-      volumes:
-      - name: tls
-        secret:
-          secretName: tekton-results-tls
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: pipelines-as-code-secret
-  namespace: openshift-pipelines
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/github-app
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: pipelines-as-code-secret
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-public-key
-  namespace: openshift-pipelines
-spec:
-  data:
-  - remoteRef:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-      property: cosign.pub
-    secretKey: cosign.pub
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Orphan
-    name: public-key
-    template:
-      metadata:
-        annotations:
-          argocd.argoproj.io/sync-options: Prune=false
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Orphan
-    name: signing-secrets
-    template:
-      metadata:
-        annotations:
-          argocd.argoproj.io/sync-options: Prune=false
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-results-database
-  namespace: tekton-results
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-database
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-results-s3
-  namespace: tekton-results
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service
-  namespace: openshift-pipelines
-spec:
-  endpoints:
-  - honorLabels: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-    scheme: http
-  jobLabel: app
-  namespaceSelector:
-    matchNames:
-    - openshift-pipelines
-  selector:
-    matchLabels:
-      app: pipeline-metrics-exporter
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-controller
-  namespace: openshift-pipelines
-spec:
-  endpoints:
-  - honorLabels: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-    scheme: http
-  jobLabel: app.kubernetes.io/name
-  namespaceSelector:
-    matchNames:
-    - openshift-pipelines
-  selector:
-    matchLabels:
-      app: tekton-chains-controller
-      app.kubernetes.io/component: metrics
-      app.kubernetes.io/part-of: tekton-chains
-  targetLabels:
-  - app
-  - app.kubernetes.io/component
-  - app.kubernetes.io/part-of
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-api
-  namespace: tekton-results
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      key: token
-      name: metrics-reader
-    path: /metrics
-    port: metrics
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-  jobLabel: app.kubernetes.io/name
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-api
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      key: token
-      name: metrics-reader
-    path: /metrics
-    port: watchermetrics
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-watcher
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: config
-spec:
-  chain:
-    artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: "true"
-    artifacts.pipelinerun.format: in-toto
-    artifacts.pipelinerun.storage: oci
-    artifacts.taskrun.format: in-toto
-    artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                - args:
-                  - --threads-per-controller=32
-                  - --kube-api-qps=50
-                  - --kube-api-burst=50
-                  name: tekton-chains-controller
-    transparency.enabled: "false"
-  params:
-  - name: createRbacResource
-    value: "false"
-  pipeline:
-    default-service-account: appstudio-pipeline
-    enable-api-fields: alpha
-    enable-bundles-resolver: true
-    enable-cluster-resolver: true
-    enable-git-resolver: true
-    enable-hub-resolver: true
-    enable-step-actions: true
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
-            default-timeout-minutes: "120"
-        config-logging:
-          data:
-            loglevel.controller: info
-            loglevel.webhook: info
-            zap-logger-config: |
-              {
-                "level": "info",
-                "development": false,
-                "sampling": {
-                  "initial": 100,
-                  "thereafter": 100
-                },
-                "outputPaths": ["stdout"],
-                "errorOutputPaths": ["stderr"],
-                "encoding": "json",
-                "encoderConfig": {
-                  "timeKey": "ts",
-                  "levelKey": "level",
-                  "nameKey": "logger",
-                  "callerKey": "caller",
-                  "messageKey": "msg",
-                  "stacktraceKey": "stacktrace",
-                  "lineEnding": "",
-                  "levelEncoder": "",
-                  "timeEncoder": "iso8601",
-                  "durationEncoder": "string",
-                  "callerEncoder": ""
-                }
-              }
-      deployments:
-        tekton-operator-proxy-webhook:
-          spec:
-            replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
-      disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 6
-    performance:
-      buckets: 4
-      disable-ha: false
-      kube-api-burst: 50
-      kube-api-qps: 50
-      replicas: 2
-      threads-per-controller: 32
-  platforms:
-    openshift:
-      pipelinesAsCode:
-        enable: true
-        options:
-          deployments:
-            pipelines-as-code-watcher:
-              spec:
-                replicas: 2
-            pipelines-as-code-webhook:
-              spec:
-                replicas: 2
-        settings:
-          application-name: Konflux Staging
-          custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
-            namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
-            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
-  profile: all
-  pruner:
-    disabled: true
-  targetNamespace: openshift-pipelines
-  trigger:
-    options:
-      configMaps:
-        config-logging-triggers:
-          data:
-            loglevel.controller: info
-            loglevel.eventlistener: info
-            loglevel.webhook: info
-            zap-logger-config: |
-              {
-                "level": "info",
-                "development": false,
-                "sampling": {
-                  "initial": 100,
-                  "thereafter": 100
-                },
-                "outputPaths": ["stdout"],
-                "errorOutputPaths": ["stderr"],
-                "encoding": "json",
-                "encoderConfig": {
-                  "timeKey": "ts",
-                  "levelKey": "level",
-                  "nameKey": "logger",
-                  "callerKey": "caller",
-                  "messageKey": "msg",
-                  "stacktraceKey": "stacktrace",
-                  "lineEnding": "",
-                  "levelEncoder": "",
-                  "timeEncoder": "iso8601",
-                  "durationEncoder": "string",
-                  "callerEncoder": ""
-                }
-              }
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-pipelines-operator
-  namespace: openshift-operators
-spec:
-  channel: latest
-  config:
-    env:
-    - name: AUTOINSTALL_COMPONENTS
-      value: "false"
-  name: openshift-pipelines-operator-rh
-  source: custom-operators
-  sourceNamespace: openshift-marketplace
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
-allowHostDirVolumePlugin: false
-allowHostIPC: false
-allowHostNetwork: false
-allowHostPID: false
-allowHostPorts: false
-allowPrivilegeEscalation: false
-allowPrivilegedContainer: false
-allowedCapabilities:
-- SETFCAP
-apiVersion: security.openshift.io/v1
-defaultAddCapabilities: null
-fsGroup:
-  type: MustRunAs
-groups:
-- system:cluster-admins
-kind: SecurityContextConstraints
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: appstudio-pipelines-scc
-priority: 10
-readOnlyRootFilesystem: false
-requiredDropCapabilities:
-- MKNOD
-runAsUser:
-  type: RunAsAny
-seLinuxContext:
-  type: MustRunAs
-supplementalGroups:
-  type: RunAsAny
-users: []
-volumes:
-- configMap
-- downwardAPI
-- emptyDir
-- persistentVolumeClaim
-- projected
-- secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index ee2da5d8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - deploy.yaml
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
deleted file mode 100644
index 2bd243ef..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ /dev/null
@@ -1,29 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-patches:
-  - path: tekton-chains-public-key-path.yaml
-    target:
-      name: tekton-chains-public-key
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-chains-signing-secret-path.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-results-database-secret-path.yaml
-    target:
-      name: tekton-results-database
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-results-s3-secret-path.yaml
-    target:
-      name: tekton-results-s3
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
deleted file mode 100644
index caf2f13c..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/data/0/remoteRef/key
-  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
deleted file mode 100644
index e8fefefe..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
deleted file mode 100644
index be62b7c8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
deleted file mode 100644
index c2731fbd..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index 3d873917..d9d94c52 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -2,8 +2,6 @@ clusters:
   host:
     api: https://api.stone-stg-host.qc0p.p1.openshiftapps.com:6443
   members:
-  - api: https://api.stone-stg-m01.7ayg.p1.openshiftapps.com:6443
-    name: member-1
   - api: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
     name: member-rh-1
 
diff --git a/components/sprayproxy/staging/change-backends.yaml b/components/sprayproxy/staging/change-backends.yaml
index e025a004..1c98da6d 100644
--- a/components/sprayproxy/staging/change-backends.yaml
+++ b/components/sprayproxy/staging/change-backends.yaml
@@ -12,5 +12,4 @@ spec:
           env:
             - name: SPRAYPROXY_SERVER_BACKEND
               value: >
-                https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-m01.7ayg.p1.openshiftapps.com
                 https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-a39ca3a1/staging/components/backup/staging: stone-stg-m01
./commit-a39ca3a1/staging/components/gitops/staging: stone-stg-m01
./commit-a39ca3a1/staging/components/pipeline-service/staging: stone-stg-m01
./commit-a39ca3a1/staging/components/sprayproxy/staging/kustomize.out.yaml
196c196
<             https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
---
>             https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-m01.7ayg.p1.openshiftapps.com https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a39ca3a1 to 37f5bebe on Fri Sep 13 10:57:23 2024 </h3>  
 
<details> 
<summary>Git Diff (2408 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
index d1ef8fa9..ef08b7d4 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-prometheus/monitoring-workload-prometheus.yaml
@@ -17,8 +17,6 @@ spec:
               elements:
                 - nameNormalized: stone-stg-host
                   values.clusterDir: stone-stg-host
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-host1
diff --git a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
index 4617e956..31ce11a3 100644
--- a/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/gitops/gitops.yaml
@@ -15,8 +15,6 @@ spec:
                 clusterDir: base
           - list:
               elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
index 40548333..c4495c59 100644
--- a/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/pipeline-service/pipeline-service.yaml
@@ -15,8 +15,6 @@ spec:
                 clusterDir: base
           - list:
               elements:
-                - nameNormalized: stone-stg-m01
-                  values.clusterDir: stone-stg-m01
                 - nameNormalized: stone-stg-rh01
                   values.clusterDir: stone-stg-rh01
                 - nameNormalized: stone-prd-m01
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
deleted file mode 100644
index dfae5d83..00000000
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
deleted file mode 100644
index ef2ab3e0..00000000
--- a/components/backup/staging/stone-stg-m01/dpa-bucket-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/backupLocations/0/velero/objectStorage/bucket
-  value: backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml b/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
deleted file mode 100644
index e8bef47c..00000000
--- a/components/backup/staging/stone-stg-m01/dpa-kmskeyid-patch.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/backupLocations/0/velero/config/kmsKeyId
-  value: ce3a05cb-a4c1-4390-a500-0e9eefbffab1
diff --git a/components/backup/staging/stone-stg-m01/kustomization.yaml b/components/backup/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 4ee8993e..00000000
--- a/components/backup/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,23 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/member
-patches:
-  - target:
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-      name: backup-s3-credentials
-    path: backup-s3-credentials-patch.yaml
-  - target:
-      group: oadp.openshift.io
-      version: v1alpha1
-      kind: DataProtectionApplication
-      name: velero-aws
-    path: dpa-bucket-patch.yaml
-  - target:
-      group: oadp.openshift.io
-      version: v1alpha1
-      kind: DataProtectionApplication
-      name: velero-aws
-    path: dpa-kmskeyid-patch.yaml
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
deleted file mode 100644
index 2c86d554..00000000
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml b/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
deleted file mode 100644
index 65a7f6e8..00000000
--- a/components/gitops/staging/stone-stg-m01/gitops-team-member-namespaces.yaml
+++ /dev/null
@@ -1,19 +0,0 @@
-#
-# This file grants access to some specific tenant namespaces, to GitOps Service team members, to allow debugging/testing in those Namespaces.
-# - Note: this grants access to the team members's GitHub ID, not to their Red Hat ID.
-#
----
-kind: RoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: gitops-allow-team-access-to-jgwest-tenant
-  namespace: jgwest-tenant
-subjects:
-  - kind: Group
-    apiGroup: rbac.authorization.k8s.io
-    name: konflux-gitops
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: gitops-namespaces-all-access
----
diff --git a/components/gitops/staging/stone-stg-m01/kustomization.yaml b/components/gitops/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 27e25486..00000000
--- a/components/gitops/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-
-resources:
-- ../base
-- ../../base/authentication/gitops-namespace-roles/jgwest-tenant
-- gitops-team-member-namespaces.yaml
-
-patches:
-  - path: gitops-service-postgres-rds-config-path.yaml
-    target:
-      name: gitops-service-postgres-rds-config
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml b/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml
deleted file mode 100644
index 50be69bd..00000000
--- a/components/monitoring/prometheus/staging/stone-stg-m01/cluster-id-label.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
----
-- op: add
-  path: /spec/prometheusConfig/externalLabels/source_cluster
-  value:
-    stone-stg-m01
diff --git a/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml b/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index 37731611..00000000
--- a/components/monitoring/prometheus/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-- ../base
-
-patches:
-  - path: cluster-id-label.yaml
-    target:
-      name: appstudio-federate-ms
-      kind: MonitoringStack
-      group: monitoring.rhobs
-      version: v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
deleted file mode 100644
index 19c9b7d8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ /dev/null
@@ -1,2114 +0,0 @@
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  labels:
-    argocd.argoproj.io/managed-by: openshift-gitops
-  name: openshift-pipelines
----
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: plnsvc-tests
----
-apiVersion: v1
-kind: Namespace
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  labels:
-    argocd.argoproj.io/managed-by: openshift-gitops
-  name: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: tekton-results-tests
-  namespace: plnsvc-tests
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: metrics-reader
-  namespace: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-  namespace: tekton-results
----
-apiVersion: v1
-kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-exec-pprof-data
-  namespace: tekton-results
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pod/exec
-  verbs:
-  - get
-  - list
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - tekton-results-info
-  resources:
-  - configmaps
-  verbs:
-  - get
-  - describe
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-apply-tekton-config-parameters
-rules:
-- apiGroups:
-  - monitoring.coreos.com
-  resources:
-  - servicemonitors
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - operator.tekton.dev
-  resources:
-  - tektonconfigs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
-- apiGroups:
-  - security.openshift.io
-  resources:
-  - securitycontextconstraints
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-jobs-admin
-rules:
-- apiGroups:
-  - batch
-  resources:
-  - jobs
-  verbs:
-  - get
-  - list
-  - patch
-  - create
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-reader
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods
-  - services
-  - namespaces
-  - endpoints
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - apiextensions.k8s.io
-  resources:
-  - customresourcedefinitions
-  verbs:
-  - get
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelineruns
-  - taskruns
-  verbs:
-  - get
-  - list
-  - watch
-  - patch
-- nonResourceURLs:
-  - /metrics
-  verbs:
-  - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-rules:
-- apiGroups:
-  - resolution.tekton.dev
-  resources:
-  - resolutionrequests
-  verbs:
-  - get
-  - list
-  - watch
-  - patch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - delete
-- apiGroups:
-  - quota.openshift.io
-  resources:
-  - clusterresourcequotas
-  verbs:
-  - list
-  - get
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - ""
-  resourceNames:
-  - appstudio-pipeline
-  resources:
-  - serviceaccounts
-  verbs:
-  - get
-  - list
-- apiGroups:
-  - pipelinesascode.tekton.dev
-  - results.tekton.dev
-  - tekton.dev
-  - triggers.tekton.dev
-  - resolution.tekton.dev
-  resources:
-  - '*'
-  verbs:
-  - create
-  - delete
-  - get
-  - list
-  - patch
-  - update
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - nodes
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - metrics.k8s.io
-  resources:
-  - nodes
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - admissionregistration.k8s.io
-  resources:
-  - '*'
-  verbs:
-  - list
-  - get
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-chains-public-key-viewer
-rules:
-- apiGroups:
-  - ""
-  resourceNames:
-  - public-key
-  resources:
-  - secrets
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-    rbac.authorization.k8s.io/aggregate-to-admin: "true"
-  name: tekton-results-admin
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - create
-  - update
-  - get
-  - list
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-    rbac.authorization.k8s.io/aggregate-to-edit: "true"
-    rbac.authorization.k8s.io/aggregate-to-view: "true"
-  name: tekton-results-readonly
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  - summary
-  verbs:
-  - get
-  - list
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-readwrite
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - results
-  - records
-  - logs
-  verbs:
-  - create
-  - update
-  - get
-  - list
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-service-metrics-reader
-rules:
-- nonResourceURLs:
-  - /metrics
-  verbs:
-  - get
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-rules:
-- apiGroups:
-  - results.tekton.dev
-  resources:
-  - logs
-  - results
-  - records
-  verbs:
-  - create
-  - get
-  - update
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelineruns
-  - taskruns
-  verbs:
-  - get
-  - list
-  - patch
-  - update
-  - watch
-  - delete
-- apiGroups:
-  - ""
-  resources:
-  - configmaps
-  - pods
-  verbs:
-  - get
-  - list
-  - watch
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-- apiGroups:
-  - tekton.dev
-  resources:
-  - pipelines
-  verbs:
-  - get
-- apiGroups:
-  - coordination.k8s.io
-  resources:
-  - leases
-  verbs:
-  - get
-  - list
-  - create
-  - update
-  - delete
-  - patch
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-rbac
-rules:
-- apiGroups:
-  - authentication.k8s.io
-  resources:
-  - tokenreviews
-  verbs:
-  - create
-- apiGroups:
-  - authorization.k8s.io
-  resources:
-  - subjectaccessreviews
-  verbs:
-  - create
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-ns-edit
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-chains-public-key-viewer
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-chains-public-key-viewer
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: system:authenticated
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-admin
-  namespace: plnsvc-tests
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-admin
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-exec-pprof-data
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: pipeline-service-sre-exec-pprof-data
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre-ns-edit
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: edit
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-sre
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: tekton-results-info
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: system:authenticated
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: tekton-results-tests
-  namespace: plnsvc-tests
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-readonly
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-tests
-  namespace: plnsvc-tests
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-apply-tekton-config-parameters
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-apply-tekton-config-parameters
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-gitops-jobs-admin
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: openshift-gitops-jobs-admin
-subjects:
-- kind: ServiceAccount
-  name: openshift-gitops-argocd-application-controller
-  namespace: openshift-gitops
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-reader-binding
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-exporter-reader
-subjects:
-- kind: ServiceAccount
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-exporter-resolution-req-read-until-ocp-at-415
-subjects:
-- kind: ServiceAccount
-  name: pipeline-service-exporter
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: pipeline-service-sre
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: pipeline-service-sre
-subjects:
-- apiGroup: rbac.authorization.k8s.io
-  kind: Group
-  name: konflux-pipeline-service
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: prometheus-tekton-results-service-metrics-reader
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-service-metrics-reader
-subjects:
-- kind: ServiceAccount
-  name: metrics-reader
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-api
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-api
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-watcher
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-logs
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-admin
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher-rbac
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-results-watcher-rbac
-subjects:
-- kind: ServiceAccount
-  name: tekton-results-watcher
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  tekton-results-db-ca.pem: |-
-    -----BEGIN CERTIFICATE-----
-    MIIEBjCCAu6gAwIBAgIJAMc0ZzaSUK51MA0GCSqGSIb3DQEBCwUAMIGPMQswCQYD
-    VQQGEwJVUzEQMA4GA1UEBwwHU2VhdHRsZTETMBEGA1UECAwKV2FzaGluZ3RvbjEi
-    MCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1h
-    em9uIFJEUzEgMB4GA1UEAwwXQW1hem9uIFJEUyBSb290IDIwMTkgQ0EwHhcNMTkw
-    ODIyMTcwODUwWhcNMjQwODIyMTcwODUwWjCBjzELMAkGA1UEBhMCVVMxEDAOBgNV
-    BAcMB1NlYXR0bGUxEzARBgNVBAgMCldhc2hpbmd0b24xIjAgBgNVBAoMGUFtYXpv
-    biBXZWIgU2VydmljZXMsIEluYy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxIDAeBgNV
-    BAMMF0FtYXpvbiBSRFMgUm9vdCAyMDE5IENBMIIBIjANBgkqhkiG9w0BAQEFAAOC
-    AQ8AMIIBCgKCAQEArXnF/E6/Qh+ku3hQTSKPMhQQlCpoWvnIthzX6MK3p5a0eXKZ
-    oWIjYcNNG6UwJjp4fUXl6glp53Jobn+tWNX88dNH2n8DVbppSwScVE2LpuL+94vY
-    0EYE/XxN7svKea8YvlrqkUBKyxLxTjh+U/KrGOaHxz9v0l6ZNlDbuaZw3qIWdD/I
-    6aNbGeRUVtpM6P+bWIoxVl/caQylQS6CEYUk+CpVyJSkopwJlzXT07tMoDL5WgX9
-    O08KVgDNz9qP/IGtAcRduRcNioH3E9v981QO1zt/Gpb2f8NqAjUUCUZzOnij6mx9
-    McZ+9cWX88CRzR0vQODWuZscgI08NvM69Fn2SQIDAQABo2MwYTAOBgNVHQ8BAf8E
-    BAMCAQYwDwYDVR0TAQH/BAUwAwEB/zAdBgNVHQ4EFgQUc19g2LzLA5j0Kxc0LjZa
-    pmD/vB8wHwYDVR0jBBgwFoAUc19g2LzLA5j0Kxc0LjZapmD/vB8wDQYJKoZIhvcN
-    AQELBQADggEBAHAG7WTmyjzPRIM85rVj+fWHsLIvqpw6DObIjMWokpliCeMINZFV
-    ynfgBKsf1ExwbvJNzYFXW6dihnguDG9VMPpi2up/ctQTN8tm9nDKOy08uNZoofMc
-    NUZxKCEkVKZv+IL4oHoeayt8egtv3ujJM6V14AstMQ6SwvwvA93EP/Ug2e4WAXHu
-    cbI1NAbUgVDqp+DRdfvZkgYKryjTWd/0+1fS8X1bBZVWzl7eirNVnHbSH2ZDpNuY
-    0SBd8dj5F6ld3t58ydZbrTHze7JJOd8ijySAp4/kiu9UfZWuTPABzDa/DSdz9Dk/
-    zPW4CXXvhLmE02TA9/HeCw3KEHIwicNuEfw=
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIIEBzCCAu+gAwIBAgICJVUwDQYJKoZIhvcNAQELBQAwgY8xCzAJBgNVBAYTAlVT
-    MRAwDgYDVQQHDAdTZWF0dGxlMRMwEQYDVQQIDApXYXNoaW5ndG9uMSIwIAYDVQQK
-    DBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMuMRMwEQYDVQQLDApBbWF6b24gUkRT
-    MSAwHgYDVQQDDBdBbWF6b24gUkRTIFJvb3QgMjAxOSBDQTAeFw0xOTA5MTkxODE2
-    NTNaFw0yNDA4MjIxNzA4NTBaMIGUMQswCQYDVQQGEwJVUzETMBEGA1UECAwKV2Fz
-    aGluZ3RvbjEQMA4GA1UEBwwHU2VhdHRsZTEiMCAGA1UECgwZQW1hem9uIFdlYiBT
-    ZXJ2aWNlcywgSW5jLjETMBEGA1UECwwKQW1hem9uIFJEUzElMCMGA1UEAwwcQW1h
-    em9uIFJEUyB1cy1lYXN0LTEgMjAxOSBDQTCCASIwDQYJKoZIhvcNAQEBBQADggEP
-    ADCCAQoCggEBAM3i/k2u6cqbMdcISGRvh+m+L0yaSIoOXjtpNEoIftAipTUYoMhL
-    InXGlQBVA4shkekxp1N7HXe1Y/iMaPEyb3n+16pf3vdjKl7kaSkIhjdUz3oVUEYt
-    i8Z/XeJJ9H2aEGuiZh3kHixQcZczn8cg3dA9aeeyLSEnTkl/npzLf//669Ammyhs
-    XcAo58yvT0D4E0D/EEHf2N7HRX7j/TlyWvw/39SW0usiCrHPKDLxByLojxLdHzso
-    QIp/S04m+eWn6rmD+uUiRteN1hI5ncQiA3wo4G37mHnUEKo6TtTUh+sd/ku6a8HK
-    glMBcgqudDI90s1OpuIAWmuWpY//8xEG2YECAwEAAaNmMGQwDgYDVR0PAQH/BAQD
-    AgEGMBIGA1UdEwEB/wQIMAYBAf8CAQAwHQYDVR0OBBYEFPqhoWZcrVY9mU7tuemR
-    RBnQIj1jMB8GA1UdIwQYMBaAFHNfYNi8ywOY9CsXNC42WqZg/7wfMA0GCSqGSIb3
-    DQEBCwUAA4IBAQB6zOLZ+YINEs72heHIWlPZ8c6WY8MDU+Be5w1M+BK2kpcVhCUK
-    PJO4nMXpgamEX8DIiaO7emsunwJzMSvavSPRnxXXTKIc0i/g1EbiDjnYX9d85DkC
-    E1LaAUCmCZBVi9fIe0H2r9whIh4uLWZA41oMnJx/MOmo3XyMfQoWcqaSFlMqfZM4
-    0rNoB/tdHLNuV4eIdaw2mlHxdWDtF4oH+HFm+2cVBUVC1jXKrFv/euRVtsTT+A6i
-    h2XBHKxQ1Y4HgAn0jACP2QSPEmuoQEIa57bEKEcZsBR8SDY6ZdTd2HLRIApcCOSF
-    MRM8CKLeF658I0XgF8D5EsYoKPsA+74Z+jDH
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIID/zCCAuegAwIBAgIRAPVSMfFitmM5PhmbaOFoGfUwDQYJKoZIhvcNAQELBQAw
-    gZcxCzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJ
-    bmMuMRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEwMC4GA1UEAwwn
-    QW1hem9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBSU0EyMDQ4IEcxMRAwDgYDVQQH
-    DAdTZWF0dGxlMCAXDTIxMDUyNTIyMzQ1N1oYDzIwNjEwNTI1MjMzNDU3WjCBlzEL
-    MAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIEluYy4x
-    EzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdBbWF6
-    b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTIwNDggRzExEDAOBgNVBAcMB1Nl
-    YXR0bGUwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDu9H7TBeGoDzMr
-    dxN6H8COntJX4IR6dbyhnj5qMD4xl/IWvp50lt0VpmMd+z2PNZzx8RazeGC5IniV
-    5nrLg0AKWRQ2A/lGGXbUrGXCSe09brMQCxWBSIYe1WZZ1iU1IJ/6Bp4D2YEHpXrW
-    bPkOq5x3YPcsoitgm1Xh8ygz6vb7PsvJvPbvRMnkDg5IqEThapPjmKb8ZJWyEFEE
-    QRrkCIRueB1EqQtJw0fvP4PKDlCJAKBEs/y049FoOqYpT3pRy0WKqPhWve+hScMd
-    6obq8kxTFy1IHACjHc51nrGII5Bt76/MpTWhnJIJrCnq1/Uc3Qs8IVeb+sLaFC8K
-    DI69Sw6bAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFE7PCopt
-    lyOgtXX0Y1lObBUxuKaCMA4GA1UdDwEB/wQEAwIBhjANBgkqhkiG9w0BAQsFAAOC
-    AQEAFj+bX8gLmMNefr5jRJfHjrL3iuZCjf7YEZgn89pS4z8408mjj9z6Q5D1H7yS
-    jNETVV8QaJip1qyhh5gRzRaArgGAYvi2/r0zPsy+Tgf7v1KGL5Lh8NT8iCEGGXwF
-    g3Ir+Nl3e+9XUp0eyyzBIjHtjLBm6yy8rGk9p6OtFDQnKF5OxwbAgip42CD75r/q
-    p421maEDDvvRFR4D+99JZxgAYDBGqRRceUoe16qDzbMvlz0A9paCZFclxeftAxv6
-    QlR5rItMz/XdzpBJUpYhdzM0gCzAzdQuVO5tjJxmXhkSMcDP+8Q+Uv6FA9k2VpUV
-    E/O5jgpqUJJ2Hc/5rs9VkAPXeA==
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIIF/jCCA+agAwIBAgIQaRHaEqqacXN20e8zZJtmDDANBgkqhkiG9w0BAQwFADCB
-    lzELMAkGA1UEBhMCVVMxIjAgBgNVBAoMGUFtYXpvbiBXZWIgU2VydmljZXMsIElu
-    Yy4xEzARBgNVBAsMCkFtYXpvbiBSRFMxCzAJBgNVBAgMAldBMTAwLgYDVQQDDCdB
-    bWF6b24gUkRTIHVzLWVhc3QtMSBSb290IENBIFJTQTQwOTYgRzExEDAOBgNVBAcM
-    B1NlYXR0bGUwIBcNMjEwNTI1MjIzODM1WhgPMjEyMTA1MjUyMzM4MzVaMIGXMQsw
-    CQYDVQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjET
-    MBEGA1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExMDAuBgNVBAMMJ0FtYXpv
-    biBSRFMgdXMtZWFzdC0xIFJvb3QgQ0EgUlNBNDA5NiBHMTEQMA4GA1UEBwwHU2Vh
-    dHRsZTCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAInfBCaHuvj6Rb5c
-    L5Wmn1jv2PHtEGMHm+7Z8dYosdwouG8VG2A+BCYCZfij9lIGszrTXkY4O7vnXgru
-    JUNdxh0Q3M83p4X+bg+gODUs3jf+Z3Oeq7nTOk/2UYvQLcxP4FEXILxDInbQFcIx
-    yen1ESHggGrjEodgn6nbKQNRfIhjhW+TKYaewfsVWH7EF2pfj+cjbJ6njjgZ0/M9
-    VZifJFBgat6XUTOf3jwHwkCBh7T6rDpgy19A61laImJCQhdTnHKvzTpxcxiLRh69
-    ZObypR7W04OAUmFS88V7IotlPmCL8xf7kwxG+gQfvx31+A9IDMsiTqJ1Cc4fYEKg
-    bL+Vo+2Ii4W2esCTGVYmHm73drznfeKwL+kmIC/Bq+DrZ+veTqKFYwSkpHRyJCEe
-    U4Zym6POqQ/4LBSKwDUhWLJIlq99bjKX+hNTJykB+Lbcx0ScOP4IAZQoxmDxGWxN
-    S+lQj+Cx2pwU3S/7+OxlRndZAX/FKgk7xSMkg88HykUZaZ/ozIiqJqSnGpgXCtED
-    oQ4OJw5ozAr+/wudOawaMwUWQl5asD8fuy/hl5S1nv9XxIc842QJOtJFxhyeMIXt
-    LVECVw/dPekhMjS3Zo3wwRgYbnKG7YXXT5WMxJEnHu8+cYpMiRClzq2BEP6/MtI2
-    AZQQUFu2yFjRGL2OZA6IYjxnXYiRAgMBAAGjQjBAMA8GA1UdEwEB/wQFMAMBAf8w
-    HQYDVR0OBBYEFADCcQCPX2HmkqQcmuHfiQ2jjqnrMA4GA1UdDwEB/wQEAwIBhjAN
-    BgkqhkiG9w0BAQwFAAOCAgEASXkGQ2eUmudIKPeOIF7RBryCoPmMOsqP0+1qxF8l
-    pGkwmrgNDGpmd9s0ArfIVBTc1jmpgB3oiRW9c6n2OmwBKL4UPuQ8O3KwSP0iD2sZ
-    KMXoMEyphCEzW1I2GRvYDugL3Z9MWrnHkoaoH2l8YyTYvszTvdgxBPpM2x4pSkp+
-    76d4/eRpJ5mVuQ93nC+YG0wXCxSq63hX4kyZgPxgCdAA+qgFfKIGyNqUIqWgeyTP
-    n5OgKaboYk2141Rf2hGMD3/hsGm0rrJh7g3C0ZirPws3eeJfulvAOIy2IZzqHUSY
-    jkFzraz6LEH3IlArT3jUPvWKqvh2lJWnnp56aqxBR7qHH5voD49UpJWY1K0BjGnS
-    OHcurpp0Yt/BIs4VZeWdCZwI7JaSeDcPMaMDBvND3Ia5Fga0thgYQTG6dE+N5fgF
-    z+hRaujXO2nb0LmddVyvE8prYlWRMuYFv+Co8hcMdJ0lEZlfVNu0jbm9/GmwAZ+l
-    9umeYO9yz/uC7edC8XJBglMAKUmVK9wNtOckUWAcCfnPWYLbYa/PqtXBYcxrso5j
-    iaS/A7iEW51uteHBGrViCy1afGG+hiUWwFlesli+Rq4dNstX3h6h2baWABaAxEVJ
-    y1RnTQSz6mROT1VmZSgSVO37rgIyY0Hf0872ogcTS+FfvXgBxCxsNWEbiQ/XXva4
-    0Ws=
-    -----END CERTIFICATE-----
-    -----BEGIN CERTIFICATE-----
-    MIICrjCCAjSgAwIBAgIRAPAlEk8VJPmEzVRRaWvTh2AwCgYIKoZIzj0EAwMwgZYx
-    CzAJBgNVBAYTAlVTMSIwIAYDVQQKDBlBbWF6b24gV2ViIFNlcnZpY2VzLCBJbmMu
-    MRMwEQYDVQQLDApBbWF6b24gUkRTMQswCQYDVQQIDAJXQTEvMC0GA1UEAwwmQW1h
-    em9uIFJEUyB1cy1lYXN0LTEgUm9vdCBDQSBFQ0MzODQgRzExEDAOBgNVBAcMB1Nl
-    YXR0bGUwIBcNMjEwNTI1MjI0MTU1WhgPMjEyMTA1MjUyMzQxNTVaMIGWMQswCQYD
-    VQQGEwJVUzEiMCAGA1UECgwZQW1hem9uIFdlYiBTZXJ2aWNlcywgSW5jLjETMBEG
-    A1UECwwKQW1hem9uIFJEUzELMAkGA1UECAwCV0ExLzAtBgNVBAMMJkFtYXpvbiBS
-    RFMgdXMtZWFzdC0xIFJvb3QgQ0EgRUNDMzg0IEcxMRAwDgYDVQQHDAdTZWF0dGxl
-    MHYwEAYHKoZIzj0CAQYFK4EEACIDYgAEx5xjrup8II4HOJw15NTnS3H5yMrQGlbj
-    EDA5MMGnE9DmHp5dACIxmPXPMe/99nO7wNdl7G71OYPCgEvWm0FhdvVUeTb3LVnV
-    BnaXt32Ek7/oxGk1T+Df03C+W0vmuJ+wo0IwQDAPBgNVHRMBAf8EBTADAQH/MB0G
-    A1UdDgQWBBTGXmqBWN/1tkSea4pNw0oHrjk2UDAOBgNVHQ8BAf8EBAMCAYYwCgYI
-    KoZIzj0EAwMDaAAwZQIxAIqqZWCSrIkZ7zsv/FygtAusW6yvlL935YAWYPVXU30m
-    jkMFLM+/RJ9GMvnO8jHfCgIwB+whlkcItzE9CRQ6CsMo/d5cEHDUu/QW6jSIh9BR
-    OGh9pTYPVkUbBiKPA7lVVhre
-    -----END CERTIFICATE-----
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  name: rds-root-crt
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  config.env: |
-    DB_USER=
-    DB_PASSWORD=
-    DB_HOST=
-    DB_PORT=5432
-    DB_NAME=
-    DB_SSLMODE=verify-full
-    DB_SSLROOTCERT=/etc/tls/db/tekton-results-db-ca.pem
-    DB_ENABLE_AUTO_MIGRATION=true
-    SERVER_PORT=8080
-    PROMETHEUS_PORT=9090
-    PROMETHEUS_HISTOGRAM=true
-    TLS_PATH=/etc/tls
-    AUTH_DISABLE=false
-    AUTH_IMPERSONATE=true
-    LOG_LEVEL=info
-    LOGS_API=false
-    LOGS_TYPE=File
-    LOGS_BUFFER_SIZE=5242880
-    LOGS_PATH=/logs
-    S3_BUCKET_NAME=
-    S3_ENDPOINT=
-    S3_HOSTNAME_IMMUTABLE=false
-    S3_REGION=
-    S3_ACCESS_KEY_ID=
-    S3_SECRET_ACCESS_KEY=
-    S3_MULTI_PART_SIZE=5242880
-    GCS_BUCKET_NAME=
-    STORAGE_EMULATOR_HOST=
-    K8S_QPS=50
-    K8S_BURST=100
-    PROFILING=true
-    PROFILING_PORT=6060
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api-config
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  _example: |
-    ################################
-    #                              #
-    #    EXAMPLE CONFIGURATION     #
-    #                              #
-    ################################
-    # This block is not actually functional configuration,
-    # but serves to illustrate the available configuration
-    # options and document them in a way that is accessible
-    # to users that `kubectl edit` this config map.
-    #
-    # These sample configuration options may be copied out of
-    # this example block and unindented to be in the data block
-    # to actually change the configuration.
-    # lease-duration is how long non-leaders will wait to try to acquire the
-    # lock; 15 seconds is the value used by core kubernetes controllers.
-    lease-duration: "60s"
-    # renew-deadline is how long a leader will try to renew the lease before
-    # giving up; 10 seconds is the value used by core kubernetes controllers.
-    renew-deadline: "40s"
-    # retry-period is how long the leader election client waits between tries of
-    # actions; 2 seconds is the value used by core kubernetes controllers.
-    retry-period: "10s"
-    # buckets is the number of buckets used to partition key space of each
-    # Reconciler. If this number is M and the replica number of the controller
-    # is N, the N replicas will compete for the M buckets. The owner of a
-    # bucket will take care of the reconciling for the keys partitioned into
-    # that bucket.
-    buckets: "1"
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-leader-election
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-leader-election
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  loglevel.controller: info
-  loglevel.watcher: info
-  zap-logger-config: |
-    {
-      "level": "info",
-      "development": false,
-      "outputPaths": ["stdout"],
-      "errorOutputPaths": ["stderr"],
-      "encoding": "json",
-      "encoderConfig": {
-        "timeKey": "ts",
-        "levelKey": "level",
-        "nameKey": "logger",
-        "callerKey": "caller",
-        "messageKey": "msg",
-        "stacktraceKey": "stacktrace",
-        "lineEnding": "",
-        "levelEncoder": "",
-        "timeEncoder": "iso8601",
-        "durationEncoder": "string",
-        "callerEncoder": ""
-      }
-    }
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  labels:
-    app.kubernetes.io/name: tekton-results-logging
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-logging
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  _example: |
-    ################################
-    #                              #
-    #    EXAMPLE CONFIGURATION     #
-    #                              #
-    ################################
-
-    # This block is not actually functional configuration,
-    # but serves to illustrate the available configuration
-    # options and document them in a way that is accessible
-    # to users that `kubectl edit` this config map.
-    #
-    # These sample configuration options may be copied out of
-    # this example block and unindented to be in the data block
-    # to actually change the configuration.
-
-    # metrics.backend-destination field specifies the system metrics destination.
-    # It supports either prometheus (the default) or stackdriver.
-    # Note: Using Stackdriver will incur additional charges.
-    metrics.backend-destination: prometheus
-
-    # metrics.stackdriver-project-id field specifies the Stackdriver project ID. This
-    # field is optional. When running on GCE, application default credentials will be
-    # used and metrics will be sent to the cluster's project if this field is
-    # not provided.
-    metrics.stackdriver-project-id: "<your stackdriver project id>"
-
-    # metrics.allow-stackdriver-custom-metrics indicates whether it is allowed
-    # to send metrics to Stackdriver using "global" resource type and custom
-    # metric type. Setting this flag to "true" could cause extra Stackdriver
-    # charge.  If metrics.backend-destination is not Stackdriver, this is
-    # ignored.
-    metrics.allow-stackdriver-custom-metrics: "false"
-    metrics.taskrun.level: "task"
-    metrics.taskrun.duration-type: "histogram"
-    metrics.pipelinerun.level: "pipeline"
-    metrics.pipelinerun.duration-type: "histogram"
-  profiling.enable: "true"
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-observability
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-config-observability
-  namespace: tekton-results
----
-apiVersion: v1
-data:
-  version: devel
-kind: ConfigMap
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-  labels:
-    app.kubernetes.io/name: tekton-results-info
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-info
-  namespace: tekton-results
----
-apiVersion: v1
-kind: Secret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    kubernetes.io/service-account.name: metrics-reader
-  name: metrics-reader
-  namespace: tekton-results
-type: kubernetes.io/service-account-token
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  labels:
-    app: pipeline-metrics-exporter
-  name: pipeline-metrics-exporter-service
-  namespace: openshift-pipelines
-spec:
-  ports:
-  - name: metrics
-    port: 9117
-    protocol: TCP
-    targetPort: 9117
-  selector:
-    app: pipeline-metrics-exporter
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
-      exposes metric for an OSP deployment
-  labels:
-    app: tekton-chains-controller
-    app.kubernetes.io/component: metrics
-    app.kubernetes.io/part-of: tekton-chains
-  name: tekton-chains
-  namespace: openshift-pipelines
-spec:
-  ports:
-  - name: metrics
-    port: 9090
-    protocol: TCP
-    targetPort: 9090
-  selector:
-    app.kubernetes.io/component: controller
-    app.kubernetes.io/instance: default
-    app.kubernetes.io/part-of: tekton-chains
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    service.beta.openshift.io/serving-cert-secret-name: tekton-results-tls
-  labels:
-    app.kubernetes.io/name: tekton-results-api
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api-service
-  namespace: tekton-results
-spec:
-  ports:
-  - name: server
-    port: 8080
-    protocol: TCP
-    targetPort: 8080
-  - name: metrics
-    port: 9443
-    protocol: TCP
-    targetPort: metrics
-  - name: profiling
-    port: 6060
-    protocol: TCP
-    targetPort: 6060
-  selector:
-    app.kubernetes.io/name: tekton-results-api
----
-apiVersion: v1
-kind: Service
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "2"
-  labels:
-    app.kubernetes.io/name: tekton-results-watcher
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  ports:
-  - name: watchermetrics
-    port: 8443
-    targetPort: watchermetrics
-  - name: profiling
-    port: 8008
-  selector:
-    app.kubernetes.io/name: tekton-results-watcher
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-metrics-exporter
-  namespace: openshift-pipelines
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app: pipeline-metrics-exporter
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-      labels:
-        app: pipeline-metrics-exporter
-    spec:
-      containers:
-      - args:
-        - -pprof-address
-        - "6060"
-        - -zap-log-level=6
-        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
-        name: pipeline-metrics-exporter
-        ports:
-        - containerPort: 9117
-          name: metrics
-        resources:
-          limits:
-            cpu: 500m
-            memory: 512Mi
-          requests:
-            cpu: 250m
-            memory: 128Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      restartPolicy: Always
-      serviceAccountName: pipeline-service-exporter
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  labels:
-    app.kubernetes.io/name: tekton-results-api
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-api
-  namespace: tekton-results
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-api
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
-      labels:
-        app.kubernetes.io/name: tekton-results-api
-        app.kubernetes.io/version: devel
-    spec:
-      containers:
-      - args:
-        - --secure-listen-address=0.0.0.0:9443
-        - --upstream=http://127.0.0.1:9090/
-        - --logtostderr=true
-        - --v=6
-        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
-        name: kube-rbac-proxy
-        ports:
-        - containerPort: 9443
-          name: metrics
-          protocol: TCP
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-      - env:
-        - name: LOGS_API
-          value: "true"
-        - name: LOGS_TYPE
-          value: S3
-        - name: S3_HOSTNAME_IMMUTABLE
-          value: "true"
-        - name: S3_ACCESS_KEY_ID
-          valueFrom:
-            secretKeyRef:
-              key: aws_access_key_id
-              name: tekton-results-s3
-        - name: S3_SECRET_ACCESS_KEY
-          valueFrom:
-            secretKeyRef:
-              key: aws_secret_access_key
-              name: tekton-results-s3
-        - name: S3_REGION
-          valueFrom:
-            secretKeyRef:
-              key: aws_region
-              name: tekton-results-s3
-        - name: S3_BUCKET_NAME
-          valueFrom:
-            secretKeyRef:
-              key: bucket
-              name: tekton-results-s3
-        - name: S3_ENDPOINT
-          valueFrom:
-            secretKeyRef:
-              key: endpoint
-              name: tekton-results-s3
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
-        livenessProbe:
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        name: api
-        readinessProbe:
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        resources:
-          limits:
-            cpu: 100m
-            memory: 512Mi
-          requests:
-            cpu: 100m
-            memory: 512Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        startupProbe:
-          failureThreshold: 10
-          httpGet:
-            path: /healthz
-            port: 8080
-            scheme: HTTPS
-          initialDelaySeconds: 5
-          periodSeconds: 10
-        volumeMounts:
-        - mountPath: /etc/tls/db
-          name: db-tls-ca
-          readOnly: true
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
-        - mountPath: /etc/tls
-          name: tls
-          readOnly: true
-      serviceAccountName: tekton-results-api
-      volumes:
-      - configMap:
-          name: rds-root-crt
-        name: db-tls-ca
-      - configMap:
-          name: tekton-results-api-config
-        name: config
-      - name: tls
-        secret:
-          secretName: tekton-results-tls
----
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "2"
-  labels:
-    app.kubernetes.io/name: tekton-results-watcher
-    app.kubernetes.io/part-of: tekton-results
-    app.kubernetes.io/version: devel
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  replicas: 1
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-watcher
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
-      labels:
-        app.kubernetes.io/name: tekton-results-watcher
-        app.kubernetes.io/version: devel
-    spec:
-      affinity:
-        nodeAffinity:
-          requiredDuringSchedulingIgnoredDuringExecution:
-            nodeSelectorTerms:
-            - matchExpressions:
-              - key: kubernetes.io/os
-                operator: NotIn
-                values:
-                - windows
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-          - podAffinityTerm:
-              labelSelector:
-                matchLabels:
-                  app.kubernetes.io/name: tekton-results-watcher
-              topologyKey: kubernetes.io/hostname
-            weight: 100
-      containers:
-      - args:
-        - --secure-listen-address=0.0.0.0:8443
-        - --upstream=http://127.0.0.1:9090/
-        - --logtostderr=true
-        - --v=6
-        image: registry.redhat.io/openshift4/ose-kube-rbac-proxy:v4.12
-        name: kube-rbac-proxy
-        ports:
-        - containerPort: 8443
-          name: watchermetrics
-          protocol: TCP
-        resources:
-          limits:
-            cpu: 500m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 64Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-      - args:
-        - -api_addr
-        - tekton-results-api-service.tekton-results.svc.cluster.local:8080
-        - -auth_mode
-        - token
-        - -check_owner=false
-        - -completed_run_grace_period
-        - 10m
-        env:
-        - name: SYSTEM_NAMESPACE
-          valueFrom:
-            fieldRef:
-              fieldPath: metadata.namespace
-        - name: CONFIG_LOGGING_NAME
-          value: tekton-results-config-logging
-        - name: CONFIG_LEADERELECTION_NAME
-          value: tekton-results-config-leader-election
-        - name: CONFIG_OBSERVABILITY_NAME
-          value: tekton-results-config-observability
-        - name: METRICS_DOMAIN
-          value: tekton.dev/results
-        - name: TEKTON_RESULTS_API_SERVICE
-          value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
-        - name: AUTH_MODE
-          value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
-        name: watcher
-        ports:
-        - containerPort: 9090
-          name: metrics
-        - containerPort: 8008
-          name: profiling
-        resources:
-          limits:
-            cpu: 250m
-            memory: 4Gi
-          requests:
-            cpu: 250m
-            memory: 4Gi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tls
-          name: tls
-          readOnly: true
-      serviceAccountName: tekton-results-watcher
-      volumes:
-      - name: tls
-        secret:
-          secretName: tekton-results-tls
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: pipelines-as-code-secret
-  namespace: openshift-pipelines
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/github-app
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: pipelines-as-code-secret
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-public-key
-  namespace: openshift-pipelines
-spec:
-  data:
-  - remoteRef:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-      property: cosign.pub
-    secretKey: cosign.pub
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Orphan
-    name: public-key
-    template:
-      metadata:
-        annotations:
-          argocd.argoproj.io/sync-options: Prune=false
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Orphan
-    name: signing-secrets
-    template:
-      metadata:
-        annotations:
-          argocd.argoproj.io/sync-options: Prune=false
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-results-database
-  namespace: tekton-results
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-database
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-results-s3
-  namespace: tekton-results
-spec:
-  dataFrom:
-  - extract:
-      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: tekton-results-s3
-    template:
-      data:
-        aws_access_key_id: '{{ .aws_access_key_id }}'
-        aws_region: '{{ .aws_region }}'
-        aws_secret_access_key: '{{ .aws_secret_access_key }}'
-        bucket: '{{ .bucket }}'
-        endpoint: https://{{ .endpoint }}
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: pipeline-service
-  namespace: openshift-pipelines
-spec:
-  endpoints:
-  - honorLabels: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-    scheme: http
-  jobLabel: app
-  namespaceSelector:
-    matchNames:
-    - openshift-pipelines
-  selector:
-    matchLabels:
-      app: pipeline-metrics-exporter
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-controller
-  namespace: openshift-pipelines
-spec:
-  endpoints:
-  - honorLabels: true
-    interval: 15s
-    path: /metrics
-    port: metrics
-    scheme: http
-  jobLabel: app.kubernetes.io/name
-  namespaceSelector:
-    matchNames:
-    - openshift-pipelines
-  selector:
-    matchLabels:
-      app: tekton-chains-controller
-      app.kubernetes.io/component: metrics
-      app.kubernetes.io/part-of: tekton-chains
-  targetLabels:
-  - app
-  - app.kubernetes.io/component
-  - app.kubernetes.io/part-of
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-api
-  namespace: tekton-results
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      key: token
-      name: metrics-reader
-    path: /metrics
-    port: metrics
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-  jobLabel: app.kubernetes.io/name
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-api
----
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-results-watcher
-  namespace: tekton-results
-spec:
-  endpoints:
-  - bearerTokenSecret:
-      key: token
-      name: metrics-reader
-    path: /metrics
-    port: watchermetrics
-    scheme: https
-    tlsConfig:
-      insecureSkipVerify: true
-  selector:
-    matchLabels:
-      app.kubernetes.io/name: tekton-results-watcher
----
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: config
-spec:
-  chain:
-    artifacts.oci.storage: oci
-    artifacts.pipelinerun.enable-deep-inspection: "true"
-    artifacts.pipelinerun.format: in-toto
-    artifacts.pipelinerun.storage: oci
-    artifacts.taskrun.format: in-toto
-    artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                - args:
-                  - --threads-per-controller=32
-                  - --kube-api-qps=50
-                  - --kube-api-burst=50
-                  name: tekton-chains-controller
-    transparency.enabled: "false"
-  params:
-  - name: createRbacResource
-    value: "false"
-  pipeline:
-    default-service-account: appstudio-pipeline
-    enable-api-fields: alpha
-    enable-bundles-resolver: true
-    enable-cluster-resolver: true
-    enable-git-resolver: true
-    enable-hub-resolver: true
-    enable-step-actions: true
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
-            default-timeout-minutes: "120"
-        config-logging:
-          data:
-            loglevel.controller: info
-            loglevel.webhook: info
-            zap-logger-config: |
-              {
-                "level": "info",
-                "development": false,
-                "sampling": {
-                  "initial": 100,
-                  "thereafter": 100
-                },
-                "outputPaths": ["stdout"],
-                "errorOutputPaths": ["stderr"],
-                "encoding": "json",
-                "encoderConfig": {
-                  "timeKey": "ts",
-                  "levelKey": "level",
-                  "nameKey": "logger",
-                  "callerKey": "caller",
-                  "messageKey": "msg",
-                  "stacktraceKey": "stacktrace",
-                  "lineEnding": "",
-                  "levelEncoder": "",
-                  "timeEncoder": "iso8601",
-                  "durationEncoder": "string",
-                  "callerEncoder": ""
-                }
-              }
-      deployments:
-        tekton-operator-proxy-webhook:
-          spec:
-            replicas: 2
-            template:
-              spec:
-                containers:
-                - name: proxy
-                  resources:
-                    limits:
-                      cpu: 500m
-                      memory: 500Mi
-                    requests:
-                      cpu: 100m
-                      memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: webhook
-                  resources:
-                    limits:
-                      cpu: "1"
-                      memory: 1Gi
-                    requests:
-                      cpu: 200m
-                      memory: 200Mi
-      disabled: false
-      horizontalPodAutoscalers:
-        tekton-operator-proxy-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 2
-        tekton-pipelines-webhook:
-          spec:
-            maxReplicas: 6
-            metrics:
-            - resource:
-                name: cpu
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            - resource:
-                name: memory
-                target:
-                  averageUtilization: 100
-                  type: Utilization
-              type: Resource
-            minReplicas: 6
-    performance:
-      buckets: 4
-      disable-ha: false
-      kube-api-burst: 50
-      kube-api-qps: 50
-      replicas: 2
-      threads-per-controller: 32
-  platforms:
-    openshift:
-      pipelinesAsCode:
-        enable: true
-        options:
-          deployments:
-            pipelines-as-code-watcher:
-              spec:
-                replicas: 2
-            pipelines-as-code-webhook:
-              spec:
-                replicas: 2
-        settings:
-          application-name: Konflux Staging
-          custom-console-name: Konflux Staging
-          custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
-            namespace }}/pipelinerun/{{ pr }}
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
-            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
-  profile: all
-  pruner:
-    disabled: true
-  targetNamespace: openshift-pipelines
-  trigger:
-    options:
-      configMaps:
-        config-logging-triggers:
-          data:
-            loglevel.controller: info
-            loglevel.eventlistener: info
-            loglevel.webhook: info
-            zap-logger-config: |
-              {
-                "level": "info",
-                "development": false,
-                "sampling": {
-                  "initial": 100,
-                  "thereafter": 100
-                },
-                "outputPaths": ["stdout"],
-                "errorOutputPaths": ["stderr"],
-                "encoding": "json",
-                "encoderConfig": {
-                  "timeKey": "ts",
-                  "levelKey": "level",
-                  "nameKey": "logger",
-                  "callerKey": "caller",
-                  "messageKey": "msg",
-                  "stacktraceKey": "stacktrace",
-                  "lineEnding": "",
-                  "levelEncoder": "",
-                  "timeEncoder": "iso8601",
-                  "durationEncoder": "string",
-                  "callerEncoder": ""
-                }
-              }
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: CatalogSource
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: custom-operators
-  namespace: openshift-marketplace
-spec:
-  displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
-  sourceType: grpc
-  updateStrategy:
-    registryPoll:
-      interval: 30m
----
-apiVersion: operators.coreos.com/v1alpha1
-kind: Subscription
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: openshift-pipelines-operator
-  namespace: openshift-operators
-spec:
-  channel: latest
-  config:
-    env:
-    - name: AUTOINSTALL_COMPONENTS
-      value: "false"
-  name: openshift-pipelines-operator-rh
-  source: custom-operators
-  sourceNamespace: openshift-marketplace
----
-apiVersion: route.openshift.io/v1
-kind: Route
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-    haproxy.router.openshift.io/hsts_header: max-age=63072000
-    haproxy.router.openshift.io/timeout: 86410s
-    openshift.io/host.generated: "true"
-    router.openshift.io/haproxy.health.check.interval: 86400s
-  labels:
-    app.kubernetes.io/part-of: tekton-results
-  name: tekton-results
-  namespace: tekton-results
-spec:
-  port:
-    targetPort: server
-  tls:
-    insecureEdgeTerminationPolicy: Redirect
-    termination: reencrypt
-  to:
-    kind: Service
-    name: tekton-results-api-service
-    weight: 100
-  wildcardPolicy: None
----
-allowHostDirVolumePlugin: false
-allowHostIPC: false
-allowHostNetwork: false
-allowHostPID: false
-allowHostPorts: false
-allowPrivilegeEscalation: false
-allowPrivilegedContainer: false
-allowedCapabilities:
-- SETFCAP
-apiVersion: security.openshift.io/v1
-defaultAddCapabilities: null
-fsGroup:
-  type: MustRunAs
-groups:
-- system:cluster-admins
-kind: SecurityContextConstraints
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: appstudio-pipelines-scc
-priority: 10
-readOnlyRootFilesystem: false
-requiredDropCapabilities:
-- MKNOD
-runAsUser:
-  type: RunAsAny
-seLinuxContext:
-  type: MustRunAs
-supplementalGroups:
-  type: RunAsAny
-users: []
-volumes:
-- configMap
-- downwardAPI
-- emptyDir
-- persistentVolumeClaim
-- projected
-- secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml
deleted file mode 100644
index ee2da5d8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - deploy.yaml
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
deleted file mode 100644
index 2bd243ef..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ /dev/null
@@ -1,29 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base
-patches:
-  - path: tekton-chains-public-key-path.yaml
-    target:
-      name: tekton-chains-public-key
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-chains-signing-secret-path.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-results-database-secret-path.yaml
-    target:
-      name: tekton-results-database
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
-  - path: tekton-results-s3-secret-path.yaml
-    target:
-      name: tekton-results-s3
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
deleted file mode 100644
index caf2f13c..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/data/0/remoteRef/key
-  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
deleted file mode 100644
index e8fefefe..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
deleted file mode 100644
index be62b7c8..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
deleted file mode 100644
index c2731fbd..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/sandbox/user-management/staging/kubesaw-admins.yaml b/components/sandbox/user-management/staging/kubesaw-admins.yaml
index 3d873917..d9d94c52 100644
--- a/components/sandbox/user-management/staging/kubesaw-admins.yaml
+++ b/components/sandbox/user-management/staging/kubesaw-admins.yaml
@@ -2,8 +2,6 @@ clusters:
   host:
     api: https://api.stone-stg-host.qc0p.p1.openshiftapps.com:6443
   members:
-  - api: https://api.stone-stg-m01.7ayg.p1.openshiftapps.com:6443
-    name: member-1
   - api: https://api.stone-stg-rh01.l2vh.p1.openshiftapps.com:6443
     name: member-rh-1
 
diff --git a/components/sprayproxy/staging/change-backends.yaml b/components/sprayproxy/staging/change-backends.yaml
index e025a004..1c98da6d 100644
--- a/components/sprayproxy/staging/change-backends.yaml
+++ b/components/sprayproxy/staging/change-backends.yaml
@@ -12,5 +12,4 @@ spec:
           env:
             - name: SPRAYPROXY_SERVER_BACKEND
               value: >
-                https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-m01.7ayg.p1.openshiftapps.com
                 https://pipelines-as-code-controller-openshift-pipelines.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-a39ca3a1/development/app-of-apps-development.yaml
777a778,779
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
927a930,931
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from fddeeac4 to a39ca3a1 on Fri Sep 13 10:16:08 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 55ec2c70..a277dcae 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
+    newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 43d1c5f0..0d264a78 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
+  newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
 
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

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from fddeeac4 to a39ca3a1 on Fri Sep 13 10:16:08 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 55ec2c70..a277dcae 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
+    newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 43d1c5f0..0d264a78 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
+  newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-fddeeac4/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
422d421
<       "inheritConfig": true,
671c670
<         image: quay.io/konflux-ci/mintmaker:e88dfd086908441c221d5e42a65c46f99fb24dfd
---
>         image: quay.io/konflux-ci/mintmaker:3e4242a75388470dc59de85f643ca322598e5a7e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from fddeeac4 to a39ca3a1 on Fri Sep 13 10:16:08 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 55ec2c70..a277dcae 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
+    newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 43d1c5f0..0d264a78 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=3e4242a75388470dc59de85f643ca322598e5a7e
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=3e4242a75388470dc59de85f643ca322598e5a7e
+- https://github.com/konflux-ci/mintmaker/config/default?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 3e4242a75388470dc59de85f643ca322598e5a7e
+  newTag: e88dfd086908441c221d5e42a65c46f99fb24dfd
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-fddeeac4/development/components/mintmaker/development/kustomize.out.yaml
422d421
<       "inheritConfig": true,
670c669
<         image: quay.io/konflux-ci/mintmaker:e88dfd086908441c221d5e42a65c46f99fb24dfd
---
>         image: quay.io/konflux-ci/mintmaker:3e4242a75388470dc59de85f643ca322598e5a7e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 8bfbfa9f to fddeeac4 on Thu Sep 12 19:14:57 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6d10d49f..79f5089a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=b46351b3c1d7eaff5aa0edf0331bb51a2380272e
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 957d99b9..5314c0da 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+  - https://github.com/konflux-ci/release-service/config/default?ref=b46351b3c1d7eaff5aa0edf0331bb51a2380272e
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+    newTag: b46351b3c1d7eaff5aa0edf0331bb51a2380272e
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 8bfbfa9f to fddeeac4 on Thu Sep 12 19:14:57 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6d10d49f..79f5089a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=b46351b3c1d7eaff5aa0edf0331bb51a2380272e
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 957d99b9..5314c0da 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+  - https://github.com/konflux-ci/release-service/config/default?ref=b46351b3c1d7eaff5aa0edf0331bb51a2380272e
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+    newTag: b46351b3c1d7eaff5aa0edf0331bb51a2380272e
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from 8bfbfa9f to fddeeac4 on Thu Sep 12 19:14:57 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 6d10d49f..79f5089a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=b46351b3c1d7eaff5aa0edf0331bb51a2380272e
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 957d99b9..5314c0da 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+  - https://github.com/konflux-ci/release-service/config/default?ref=b46351b3c1d7eaff5aa0edf0331bb51a2380272e
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: eb4b9aa10b2849d9efa0f4eca864ac99b992cccb
+    newTag: b46351b3c1d7eaff5aa0edf0331bb51a2380272e
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8bfbfa9f/development/components/release/development/kustomize.out.yaml
1935c1935
<         image: quay.io/konflux-ci/release-service:b46351b3c1d7eaff5aa0edf0331bb51a2380272e
---
>         image: quay.io/konflux-ci/release-service:eb4b9aa10b2849d9efa0f4eca864ac99b992cccb 
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
```
 
</details> 
<br> 


</div>
