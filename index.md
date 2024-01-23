# kustomize changes tracked by commits 
### This file generated at Tue Jan 23 08:02:31 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b4c68568 to a4c52d69 on Mon Jan 22 17:07:02 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
index aa354cf5..2c86d554 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
index cd699274..7670f5a7 100644
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5c98dce1..38fa5b22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
index 87a0e75e..be62b7c8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
index 43f9044f..c2731fbd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 095d015d..0081246e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
index aba262a3..265ff842 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
index 3f69d937..da0494f6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
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
<h3>1: Staging changes from b4c68568 to a4c52d69 on Mon Jan 22 17:07:02 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
index aa354cf5..2c86d554 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
index cd699274..7670f5a7 100644
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5c98dce1..38fa5b22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
index 87a0e75e..be62b7c8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
index 43f9044f..c2731fbd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 095d015d..0081246e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
index aba262a3..265ff842 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
index 3f69d937..da0494f6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-b4c68568/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml
3372c3372
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
./commit-b4c68568/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
./commit-b4c68568/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1714c1714
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
1735c1735
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
./commit-b4c68568/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1714c1714
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
1735c1735
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
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
<h3>1: Development changes from b4c68568 to a4c52d69 on Mon Jan 22 17:07:02 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
index aa354cf5..2c86d554 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
index cd699274..7670f5a7 100644
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5c98dce1..38fa5b22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
index 87a0e75e..be62b7c8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
index 43f9044f..c2731fbd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 095d015d..0081246e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
index aba262a3..265ff842 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
index 3f69d937..da0494f6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 0f8038a5 to b4c68568 on Mon Jan 22 16:05:14 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index 30a00816..cfbff6ed 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: RHTAP Staging
-    custom-console-name: RHTAP Staging
+    application-name: Konflux Staging
+    custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 8afccf78..5c98dce1 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1884,8 +1884,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
+          application-name: Konflux Staging
+          custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 63e92c88..095d015d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1884,8 +1884,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
+          application-name: Konflux Staging
+          custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline 
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
<h3>2: Staging changes from 0f8038a5 to b4c68568 on Mon Jan 22 16:05:14 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index 30a00816..cfbff6ed 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: RHTAP Staging
-    custom-console-name: RHTAP Staging
+    application-name: Konflux Staging
+    custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 8afccf78..5c98dce1 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1884,8 +1884,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
+          application-name: Konflux Staging
+          custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 63e92c88..095d015d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1884,8 +1884,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
+          application-name: Konflux Staging
+          custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-0f8038a5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1887,1888c1887,1888
<           application-name: Konflux Staging
<           custom-console-name: Konflux Staging
---
>           application-name: RHTAP Staging
>           custom-console-name: RHTAP Staging
./commit-0f8038a5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1887,1888c1887,1888
<           application-name: Konflux Staging
<           custom-console-name: Konflux Staging
---
>           application-name: RHTAP Staging
>           custom-console-name: RHTAP Staging 
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
<h3>2: Development changes from 0f8038a5 to b4c68568 on Mon Jan 22 16:05:14 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index 30a00816..cfbff6ed 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -2,8 +2,8 @@
 - op: add
   path: /spec/platforms/openshift/pipelinesAsCode/settings
   value:
-    application-name: RHTAP Staging
-    custom-console-name: RHTAP Staging
+    application-name: Konflux Staging
+    custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
     custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
     custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 8afccf78..5c98dce1 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1884,8 +1884,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
+          application-name: Konflux Staging
+          custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 63e92c88..095d015d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1884,8 +1884,8 @@ spec:
       pipelinesAsCode:
         enable: true
         settings:
-          application-name: RHTAP Staging
-          custom-console-name: RHTAP Staging
+          application-name: Konflux Staging
+          custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 5945319e to 0f8038a5 on Mon Jan 22 14:37:16 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 5cc8eaf6..1b041153 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+  newTag: bbec36bdeeb982960017fae072fa9e978014c080
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 02af01c9..73c40457 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+  newTag: bbec36bdeeb982960017fae072fa9e978014c080
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
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
<h3>3: Staging changes from 5945319e to 0f8038a5 on Mon Jan 22 14:37:16 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 5cc8eaf6..1b041153 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+  newTag: bbec36bdeeb982960017fae072fa9e978014c080
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 02af01c9..73c40457 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+  newTag: bbec36bdeeb982960017fae072fa9e978014c080
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5945319e/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
746c746
<         image: quay.io/redhat-appstudio/build-service:bbec36bdeeb982960017fae072fa9e978014c080
---
>         image: quay.io/redhat-appstudio/build-service:45e8fe7c3b036d1df3eee11c1d83e0633e451c07 
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
<h3>3: Development changes from 5945319e to 0f8038a5 on Mon Jan 22 14:37:16 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 5cc8eaf6..1b041153 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+  newTag: bbec36bdeeb982960017fae072fa9e978014c080
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 02af01c9..73c40457 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 45e8fe7c3b036d1df3eee11c1d83e0633e451c07
+  newTag: bbec36bdeeb982960017fae072fa9e978014c080
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5945319e/development/components/build-service/development/kustomize.out.yaml
753c753
<         image: quay.io/redhat-appstudio/build-service:bbec36bdeeb982960017fae072fa9e978014c080
---
>         image: quay.io/redhat-appstudio/build-service:45e8fe7c3b036d1df3eee11c1d83e0633e451c07 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from cc150b40 to 5945319e on Mon Jan 22 13:40:46 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index e6c3340d..a5e6e732 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -525,6 +525,7 @@ spec:
           - profile
           - roles
           - email
+          - api.console
         optionalClientScopes:
           - address
           - phone
@@ -992,6 +993,12 @@ spec:
         attributes:
           include.in.token.scope: "true"
           display.on.consent.screen: "true"
+      - id: 1d8a366c-3fae-4134-b58a-4ed5dc3b0022
+        name: api.console
+        protocol: openid-connect
+        attributes: 
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
       - id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
         name: address
         description: 'OpenID Connect built-in scope: address'
@@ -1023,6 +1030,7 @@ spec:
       - roles
       - web-origins
       - acr
+      - api.console
     smtpServer: {}
     loginTheme: rh-sso
     eventsEnabled: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-cc150b40/production/components/dev-sso/kustomize.out.yaml
807,812d806
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 1d8a366c-3fae-4134-b58a-4ed5dc3b0022
<       name: api.console
<       protocol: openid-connect
<     - attributes:
1022d1015
<       - api.console
1138d1130
<     - api.console 
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
<h3>4: Staging changes from cc150b40 to 5945319e on Mon Jan 22 13:40:46 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index e6c3340d..a5e6e732 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -525,6 +525,7 @@ spec:
           - profile
           - roles
           - email
+          - api.console
         optionalClientScopes:
           - address
           - phone
@@ -992,6 +993,12 @@ spec:
         attributes:
           include.in.token.scope: "true"
           display.on.consent.screen: "true"
+      - id: 1d8a366c-3fae-4134-b58a-4ed5dc3b0022
+        name: api.console
+        protocol: openid-connect
+        attributes: 
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
       - id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
         name: address
         description: 'OpenID Connect built-in scope: address'
@@ -1023,6 +1030,7 @@ spec:
       - roles
       - web-origins
       - acr
+      - api.console
     smtpServer: {}
     loginTheme: rh-sso
     eventsEnabled: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-cc150b40/staging/components/dev-sso/kustomize.out.yaml
807,812d806
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 1d8a366c-3fae-4134-b58a-4ed5dc3b0022
<       name: api.console
<       protocol: openid-connect
<     - attributes:
1022d1015
<       - api.console
1138d1130
<     - api.console 
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
<h3>4: Development changes from cc150b40 to 5945319e on Mon Jan 22 13:40:46 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/dev-sso/keycloak-realm.yaml b/components/dev-sso/keycloak-realm.yaml
index e6c3340d..a5e6e732 100644
--- a/components/dev-sso/keycloak-realm.yaml
+++ b/components/dev-sso/keycloak-realm.yaml
@@ -525,6 +525,7 @@ spec:
           - profile
           - roles
           - email
+          - api.console
         optionalClientScopes:
           - address
           - phone
@@ -992,6 +993,12 @@ spec:
         attributes:
           include.in.token.scope: "true"
           display.on.consent.screen: "true"
+      - id: 1d8a366c-3fae-4134-b58a-4ed5dc3b0022
+        name: api.console
+        protocol: openid-connect
+        attributes: 
+          include.in.token.scope: "true"
+          display.on.consent.screen: "true"
       - id: b4120472-4f73-4659-ae6b-d24bd45c4fa3
         name: address
         description: 'OpenID Connect built-in scope: address'
@@ -1023,6 +1030,7 @@ spec:
       - roles
       - web-origins
       - acr
+      - api.console
     smtpServer: {}
     loginTheme: rh-sso
     eventsEnabled: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-cc150b40/development/components/dev-sso/kustomize.out.yaml
807,812d806
<         display.on.consent.screen: "true"
<         include.in.token.scope: "true"
<       id: 1d8a366c-3fae-4134-b58a-4ed5dc3b0022
<       name: api.console
<       protocol: openid-connect
<     - attributes:
1022d1015
<       - api.console
1138d1130
<     - api.console 
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
```
 
</details> 
<br> 


</div>
