# kustomize changes tracked by commits 
### This file generated at Fri Aug  2 12:09:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 856764e2 to ebfd9079 on Fri Aug 2 11:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index 0151ac7c..e4b9f956 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: rh-managed-workspaces-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index 48257fb4..71915803 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: tenants-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config 
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
<h3>1: Staging changes from 856764e2 to ebfd9079 on Fri Aug 2 11:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index 0151ac7c..e4b9f956 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: rh-managed-workspaces-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index 48257fb4..71915803 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: tenants-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 856764e2 to ebfd9079 on Fri Aug 2 11:58:29 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index 0151ac7c..e4b9f956 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: rh-managed-workspaces-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index 48257fb4..71915803 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -3,6 +3,8 @@ kind: ApplicationSet
 metadata:
   name: tenants-config
 spec:
+  syncPolicy:
+    preserveResourcesOnDeletion: true
   generators:
     - git:
         repoURL: https://github.com/redhat-appstudio/tenants-config 
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
<h3>2: Production changes from fbc6e42f to 856764e2 on Fri Aug 2 10:52:30 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 8741c2b4..eebef53a 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 926e4cdf..0015f34f 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 816e670e..dfae5d83 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index 5fa62d28..478a1584 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index 6853c6de..c849fdff 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f9c73951..d637d280 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1855,7 +1855,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1876,7 +1876,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index 6eba05bb..12c210fe 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 4dcfb140..633c83d5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager 
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
<h3>2: Staging changes from fbc6e42f to 856764e2 on Fri Aug 2 10:52:30 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 8741c2b4..eebef53a 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 926e4cdf..0015f34f 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 816e670e..dfae5d83 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index 5fa62d28..478a1584 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index 6853c6de..c849fdff 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f9c73951..d637d280 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1855,7 +1855,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1876,7 +1876,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index 6eba05bb..12c210fe 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 4dcfb140..633c83d5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-fbc6e42f/staging/components/backup/staging/stone-stage-p01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
./commit-fbc6e42f/staging/components/backup/staging/stone-stg-host/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
./commit-fbc6e42f/staging/components/backup/staging/stone-stg-m01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
./commit-fbc6e42f/staging/components/backup/staging/stone-stg-rh01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
---
>       key: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
./commit-fbc6e42f/staging/components/gitops/staging/stone-stage-p01/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
./commit-fbc6e42f/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1858c1858
<       key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
---
>       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
1879c1879
<       key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
---
>       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from fbc6e42f to 856764e2 on Fri Aug 2 10:52:30 2024 </h3>  
 
<details> 
<summary>Git Diff (172 lines)</summary>  

``` 
diff --git a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
index 8741c2b4..eebef53a 100644
--- a/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stage-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stage-p01
diff --git a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
index 926e4cdf..0015f34f 100644
--- a/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-host/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-host
diff --git a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
index 816e670e..dfae5d83 100644
--- a/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-m01
diff --git a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
index 5fa62d28..478a1584 100644
--- a/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/staging/stone-stg-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage-backup/backup-stone-stg-rh01
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index 6853c6de..c849fdff 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f9c73951..d637d280 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1855,7 +1855,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1876,7 +1876,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index 6eba05bb..12c210fe 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 4dcfb140..633c83d5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 6f46a645..2511dca8 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
diff --git a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
index 548e1267..1c32a3b0 100644
--- a/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stg-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsres05ue1/stonesoup-infra-stage/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres09ue1/stonesoup-infra-stage/spi-secrets-manager 
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
<h3>3: Production changes from 1b078bab to fbc6e42f on Fri Aug 2 09:32:46 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2974570a..54802a41 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c790e772..a956cc55 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
+      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-1b078bab/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
388c388
<   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
---
>   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb 
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
<h3>3: Staging changes from 1b078bab to fbc6e42f on Fri Aug 2 09:32:46 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2974570a..54802a41 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c790e772..a956cc55 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
+      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-1b078bab/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
388c388
<   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
---
>   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 1b078bab to fbc6e42f on Fri Aug 2 09:32:46 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 2974570a..54802a41 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c790e772..a956cc55 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
+      - verify_ec_task_git_revision=754145cec6c27a0f0cbad2d77f465e2c3f30e062
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-1b078bab/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:754145cec6c27a0f0cbad2d77f465e2c3f30e062@sha256:7a8e4c27716c1c5653cf4338f58cb2838e2712984c6c29204a28a9bee730df07
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
388c388
<   verify_ec_task_git_revision: 754145cec6c27a0f0cbad2d77f465e2c3f30e062
---
>   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a492ec9@sha256:0b5255fa6581809331c5dd5be00f2210d2bb20681bb6a65b2043421f50e50593
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f8b16fc@sha256:34feffe0de62bbce2c2d804bb91630736ff08254a111299d58e7a3ccb444b3a1
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-cd29f49@sha256:6817c74e8cf290e3812790df26ffaa1e0efa4e0f3490e39259fc61a6d3688fdb 
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
<h3>4: Production changes from c228c4a0 to 1b078bab on Thu Aug 1 18:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (731 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml b/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml
new file mode 100644
index 00000000..ae70b55b
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-konflux-eaas.yaml
+- tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
+- tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
+- tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml b/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml
new file mode 100644
index 00000000..7c6beeeb
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: konflux-eaas
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: konflux-eaas-clusterresources-885501723-885501723
+  namespaces:
+  - templateRef: konflux-eaas-eaas-3975606140-3975606140
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: konflux-eaas-admin-37575401-37575401
+    contributor:
+      templateRef: konflux-eaas-contributor-37575401-37575401
+    maintainer:
+      templateRef: konflux-eaas-maintainer-37575401-37575401
+    viewer:
+      templateRef: konflux-eaas-viewer-37575401-37575401
+status: {}
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
new file mode 100644
index 00000000..6166b360
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-admin-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: admin
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
new file mode 100644
index 00000000..c6b3a4f8
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-clusterresources-885501723-885501723
+  namespace: toolchain-host-operator
+spec:
+  revision: 885501723-885501723
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-eaas
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: konflux-eaas
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
new file mode 100644
index 00000000..b5f8feb2
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-contributor-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: contributor
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
new file mode 100644
index 00000000..7e680764
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
@@ -0,0 +1,76 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-eaas-3975606140-3975606140
+  namespace: toolchain-host-operator
+spec:
+  revision: 3975606140-3975606140
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          name: ${SPACE_NAME}-eaas
+        name: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: cluster-provisioner-rb
+        namespace: ${SPACE_NAME}-eaas
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: cluster-provisioner
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: quota
+        namespace: ${SPACE_NAME}-eaas
+      spec:
+        hard:
+          count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+          count/configmaps: "0"
+          count/cronjobs: "0"
+          count/deployments.apps: "0"
+          count/jobs: "0"
+          count/persistentvolumeclaims: "0"
+          count/pods: "0"
+          count/replicasets.apps: "0"
+          count/replicationcontrollers: "0"
+          count/routes: "0"
+          count/secrets: "100"
+          count/services: "0"
+          count/statefulsets.apps: "0"
+          limits.cpu: "0"
+          limits.ephemeral-storage: "0"
+          limits.memory: "0"
+          requests.cpu: "0"
+          requests.ephemeral-storage: "0"
+          requests.memory: "0"
+          requests.storage: "0"
+    parameters:
+    - name: SPACE_NAME
+      required: true
+  tierName: konflux-eaas
+  type: eaas
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
new file mode 100644
index 00000000..b54fcaa6
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-maintainer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: maintainer
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
new file mode 100644
index 00000000..3d36c8cf
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-viewer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
index 1b4cff51..fbfec5f3 100644
--- a/components/sandbox/tiers/production/kustomization.yaml
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -8,3 +8,4 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- konflux-eaas
diff --git a/components/sandbox/tiers/src/konflux-eaas/cluster.yaml b/components/sandbox/tiers/src/konflux-eaas/cluster.yaml
new file mode 100644
index 00000000..34d70b41
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/cluster.yaml
@@ -0,0 +1,17 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects:
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}-eaas
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
diff --git a/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml b/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml
new file mode 100644
index 00000000..07220353
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml
@@ -0,0 +1,70 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-eaas
+    name: ${SPACE_NAME}-eaas
+
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    namespace: ${SPACE_NAME}-eaas
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: cluster-provisioner-rb
+    namespace: ${SPACE_NAME}-eaas
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+    namespace: ${SPACE_NAME}-eaas
+  roleRef:
+    kind: ClusterRole
+    name: cluster-provisioner
+    apiGroup: rbac.authorization.k8s.io
+
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: quota
+    namespace: ${SPACE_NAME}-eaas
+  spec:
+    hard:
+      # compute
+      limits.cpu: "0"
+      limits.memory: "0"
+      requests.cpu: "0"
+      requests.memory: "0"
+      # storage
+      requests.storage: "0"
+      limits.ephemeral-storage: "0"
+      requests.ephemeral-storage: "0"
+      # disallowed resource counts
+      count/configmaps: "0"
+      count/cronjobs: "0"
+      count/deployments.apps: "0"
+      count/jobs: "0"
+      count/persistentvolumeclaims: "0"
+      count/pods: "0"
+      count/replicasets.apps: "0"
+      count/replicationcontrollers: "0"
+      count/routes: "0"
+      count/services: "0"
+      count/statefulsets.apps: "0"
+      # allowed resource counts
+      count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+      count/secrets: "100"
+
+parameters:
+- name: SPACE_NAME
+  required: true
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/tier.yaml b/components/sandbox/tiers/src/konflux-eaas/tier.yaml
new file mode 100644
index 00000000..aca71497
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/tier.yaml
@@ -0,0 +1,34 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: konflux-eaas-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: konflux-eaas
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${EAAS_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+    spaceRequestConfig:
+      serviceAccountName: namespace-manager
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: EAAS_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml b/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml
new file mode 100644
index 00000000..ae70b55b
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-konflux-eaas.yaml
+- tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
+- tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
+- tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml b/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml
new file mode 100644
index 00000000..7c6beeeb
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: konflux-eaas
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: konflux-eaas-clusterresources-885501723-885501723
+  namespaces:
+  - templateRef: konflux-eaas-eaas-3975606140-3975606140
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: konflux-eaas-admin-37575401-37575401
+    contributor:
+      templateRef: konflux-eaas-contributor-37575401-37575401
+    maintainer:
+      templateRef: konflux-eaas-maintainer-37575401-37575401
+    viewer:
+      templateRef: konflux-eaas-viewer-37575401-37575401
+status: {}
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
new file mode 100644
index 00000000..6166b360
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-admin-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: admin
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
new file mode 100644
index 00000000..c6b3a4f8
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-clusterresources-885501723-885501723
+  namespace: toolchain-host-operator
+spec:
+  revision: 885501723-885501723
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-eaas
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: konflux-eaas
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
new file mode 100644
index 00000000..b5f8feb2
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-contributor-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: contributor
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
new file mode 100644
index 00000000..7e680764
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
@@ -0,0 +1,76 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-eaas-3975606140-3975606140
+  namespace: toolchain-host-operator
+spec:
+  revision: 3975606140-3975606140
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          name: ${SPACE_NAME}-eaas
+        name: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: cluster-provisioner-rb
+        namespace: ${SPACE_NAME}-eaas
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: cluster-provisioner
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: quota
+        namespace: ${SPACE_NAME}-eaas
+      spec:
+        hard:
+          count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+          count/configmaps: "0"
+          count/cronjobs: "0"
+          count/deployments.apps: "0"
+          count/jobs: "0"
+          count/persistentvolumeclaims: "0"
+          count/pods: "0"
+          count/replicasets.apps: "0"
+          count/replicationcontrollers: "0"
+          count/routes: "0"
+          count/secrets: "100"
+          count/services: "0"
+          count/statefulsets.apps: "0"
+          limits.cpu: "0"
+          limits.ephemeral-storage: "0"
+          limits.memory: "0"
+          requests.cpu: "0"
+          requests.ephemeral-storage: "0"
+          requests.memory: "0"
+          requests.storage: "0"
+    parameters:
+    - name: SPACE_NAME
+      required: true
+  tierName: konflux-eaas
+  type: eaas
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
new file mode 100644
index 00000000..b54fcaa6
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-maintainer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
new file mode 100644
index 00000000..3d36c8cf
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-viewer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
index 1b4cff51..fbfec5f3 100644
--- a/components/sandbox/tiers/staging/kustomization.yaml
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -8,3 +8,4 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- konflux-eaas 
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
<h3>4: Staging changes from c228c4a0 to 1b078bab on Thu Aug 1 18:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (731 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml b/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml
new file mode 100644
index 00000000..ae70b55b
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-konflux-eaas.yaml
+- tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
+- tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
+- tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml b/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml
new file mode 100644
index 00000000..7c6beeeb
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: konflux-eaas
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: konflux-eaas-clusterresources-885501723-885501723
+  namespaces:
+  - templateRef: konflux-eaas-eaas-3975606140-3975606140
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: konflux-eaas-admin-37575401-37575401
+    contributor:
+      templateRef: konflux-eaas-contributor-37575401-37575401
+    maintainer:
+      templateRef: konflux-eaas-maintainer-37575401-37575401
+    viewer:
+      templateRef: konflux-eaas-viewer-37575401-37575401
+status: {}
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
new file mode 100644
index 00000000..6166b360
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-admin-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: admin
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
new file mode 100644
index 00000000..c6b3a4f8
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-clusterresources-885501723-885501723
+  namespace: toolchain-host-operator
+spec:
+  revision: 885501723-885501723
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-eaas
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: konflux-eaas
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
new file mode 100644
index 00000000..b5f8feb2
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-contributor-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: contributor
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
new file mode 100644
index 00000000..7e680764
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
@@ -0,0 +1,76 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-eaas-3975606140-3975606140
+  namespace: toolchain-host-operator
+spec:
+  revision: 3975606140-3975606140
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          name: ${SPACE_NAME}-eaas
+        name: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: cluster-provisioner-rb
+        namespace: ${SPACE_NAME}-eaas
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: cluster-provisioner
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: quota
+        namespace: ${SPACE_NAME}-eaas
+      spec:
+        hard:
+          count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+          count/configmaps: "0"
+          count/cronjobs: "0"
+          count/deployments.apps: "0"
+          count/jobs: "0"
+          count/persistentvolumeclaims: "0"
+          count/pods: "0"
+          count/replicasets.apps: "0"
+          count/replicationcontrollers: "0"
+          count/routes: "0"
+          count/secrets: "100"
+          count/services: "0"
+          count/statefulsets.apps: "0"
+          limits.cpu: "0"
+          limits.ephemeral-storage: "0"
+          limits.memory: "0"
+          requests.cpu: "0"
+          requests.ephemeral-storage: "0"
+          requests.memory: "0"
+          requests.storage: "0"
+    parameters:
+    - name: SPACE_NAME
+      required: true
+  tierName: konflux-eaas
+  type: eaas
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
new file mode 100644
index 00000000..b54fcaa6
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-maintainer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: maintainer
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
new file mode 100644
index 00000000..3d36c8cf
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-viewer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
index 1b4cff51..fbfec5f3 100644
--- a/components/sandbox/tiers/production/kustomization.yaml
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -8,3 +8,4 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- konflux-eaas
diff --git a/components/sandbox/tiers/src/konflux-eaas/cluster.yaml b/components/sandbox/tiers/src/konflux-eaas/cluster.yaml
new file mode 100644
index 00000000..34d70b41
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/cluster.yaml
@@ -0,0 +1,17 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects:
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}-eaas
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
diff --git a/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml b/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml
new file mode 100644
index 00000000..07220353
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml
@@ -0,0 +1,70 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-eaas
+    name: ${SPACE_NAME}-eaas
+
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    namespace: ${SPACE_NAME}-eaas
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: cluster-provisioner-rb
+    namespace: ${SPACE_NAME}-eaas
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+    namespace: ${SPACE_NAME}-eaas
+  roleRef:
+    kind: ClusterRole
+    name: cluster-provisioner
+    apiGroup: rbac.authorization.k8s.io
+
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: quota
+    namespace: ${SPACE_NAME}-eaas
+  spec:
+    hard:
+      # compute
+      limits.cpu: "0"
+      limits.memory: "0"
+      requests.cpu: "0"
+      requests.memory: "0"
+      # storage
+      requests.storage: "0"
+      limits.ephemeral-storage: "0"
+      requests.ephemeral-storage: "0"
+      # disallowed resource counts
+      count/configmaps: "0"
+      count/cronjobs: "0"
+      count/deployments.apps: "0"
+      count/jobs: "0"
+      count/persistentvolumeclaims: "0"
+      count/pods: "0"
+      count/replicasets.apps: "0"
+      count/replicationcontrollers: "0"
+      count/routes: "0"
+      count/services: "0"
+      count/statefulsets.apps: "0"
+      # allowed resource counts
+      count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+      count/secrets: "100"
+
+parameters:
+- name: SPACE_NAME
+  required: true
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/tier.yaml b/components/sandbox/tiers/src/konflux-eaas/tier.yaml
new file mode 100644
index 00000000..aca71497
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/tier.yaml
@@ -0,0 +1,34 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: konflux-eaas-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: konflux-eaas
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${EAAS_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+    spaceRequestConfig:
+      serviceAccountName: namespace-manager
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: EAAS_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml b/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml
new file mode 100644
index 00000000..ae70b55b
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-konflux-eaas.yaml
+- tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
+- tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
+- tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml b/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml
new file mode 100644
index 00000000..7c6beeeb
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: konflux-eaas
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: konflux-eaas-clusterresources-885501723-885501723
+  namespaces:
+  - templateRef: konflux-eaas-eaas-3975606140-3975606140
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: konflux-eaas-admin-37575401-37575401
+    contributor:
+      templateRef: konflux-eaas-contributor-37575401-37575401
+    maintainer:
+      templateRef: konflux-eaas-maintainer-37575401-37575401
+    viewer:
+      templateRef: konflux-eaas-viewer-37575401-37575401
+status: {}
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
new file mode 100644
index 00000000..6166b360
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-admin-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: admin
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
new file mode 100644
index 00000000..c6b3a4f8
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-clusterresources-885501723-885501723
+  namespace: toolchain-host-operator
+spec:
+  revision: 885501723-885501723
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-eaas
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: konflux-eaas
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
new file mode 100644
index 00000000..b5f8feb2
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-contributor-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: contributor
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
new file mode 100644
index 00000000..7e680764
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
@@ -0,0 +1,76 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-eaas-3975606140-3975606140
+  namespace: toolchain-host-operator
+spec:
+  revision: 3975606140-3975606140
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          name: ${SPACE_NAME}-eaas
+        name: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: cluster-provisioner-rb
+        namespace: ${SPACE_NAME}-eaas
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: cluster-provisioner
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: quota
+        namespace: ${SPACE_NAME}-eaas
+      spec:
+        hard:
+          count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+          count/configmaps: "0"
+          count/cronjobs: "0"
+          count/deployments.apps: "0"
+          count/jobs: "0"
+          count/persistentvolumeclaims: "0"
+          count/pods: "0"
+          count/replicasets.apps: "0"
+          count/replicationcontrollers: "0"
+          count/routes: "0"
+          count/secrets: "100"
+          count/services: "0"
+          count/statefulsets.apps: "0"
+          limits.cpu: "0"
+          limits.ephemeral-storage: "0"
+          limits.memory: "0"
+          requests.cpu: "0"
+          requests.ephemeral-storage: "0"
+          requests.memory: "0"
+          requests.storage: "0"
+    parameters:
+    - name: SPACE_NAME
+      required: true
+  tierName: konflux-eaas
+  type: eaas
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
new file mode 100644
index 00000000..b54fcaa6
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-maintainer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
new file mode 100644
index 00000000..3d36c8cf
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-viewer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
index 1b4cff51..fbfec5f3 100644
--- a/components/sandbox/tiers/staging/kustomization.yaml
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -8,3 +8,4 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- konflux-eaas 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from c228c4a0 to 1b078bab on Thu Aug 1 18:58:17 2024 </h3>  
 
<details> 
<summary>Git Diff (731 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml b/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml
new file mode 100644
index 00000000..ae70b55b
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-konflux-eaas.yaml
+- tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
+- tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
+- tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml b/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml
new file mode 100644
index 00000000..7c6beeeb
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/nstemplatetier-konflux-eaas.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: konflux-eaas
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: konflux-eaas-clusterresources-885501723-885501723
+  namespaces:
+  - templateRef: konflux-eaas-eaas-3975606140-3975606140
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: konflux-eaas-admin-37575401-37575401
+    contributor:
+      templateRef: konflux-eaas-contributor-37575401-37575401
+    maintainer:
+      templateRef: konflux-eaas-maintainer-37575401-37575401
+    viewer:
+      templateRef: konflux-eaas-viewer-37575401-37575401
+status: {}
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
new file mode 100644
index 00000000..6166b360
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-admin-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: admin
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
new file mode 100644
index 00000000..c6b3a4f8
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-clusterresources-885501723-885501723
+  namespace: toolchain-host-operator
+spec:
+  revision: 885501723-885501723
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-eaas
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: konflux-eaas
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
new file mode 100644
index 00000000..b5f8feb2
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-contributor-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: contributor
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
new file mode 100644
index 00000000..7e680764
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
@@ -0,0 +1,76 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-eaas-3975606140-3975606140
+  namespace: toolchain-host-operator
+spec:
+  revision: 3975606140-3975606140
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          name: ${SPACE_NAME}-eaas
+        name: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: cluster-provisioner-rb
+        namespace: ${SPACE_NAME}-eaas
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: cluster-provisioner
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: quota
+        namespace: ${SPACE_NAME}-eaas
+      spec:
+        hard:
+          count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+          count/configmaps: "0"
+          count/cronjobs: "0"
+          count/deployments.apps: "0"
+          count/jobs: "0"
+          count/persistentvolumeclaims: "0"
+          count/pods: "0"
+          count/replicasets.apps: "0"
+          count/replicationcontrollers: "0"
+          count/routes: "0"
+          count/secrets: "100"
+          count/services: "0"
+          count/statefulsets.apps: "0"
+          limits.cpu: "0"
+          limits.ephemeral-storage: "0"
+          limits.memory: "0"
+          requests.cpu: "0"
+          requests.ephemeral-storage: "0"
+          requests.memory: "0"
+          requests.storage: "0"
+    parameters:
+    - name: SPACE_NAME
+      required: true
+  tierName: konflux-eaas
+  type: eaas
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
new file mode 100644
index 00000000..b54fcaa6
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-maintainer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: maintainer
diff --git a/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
new file mode 100644
index 00000000..3d36c8cf
--- /dev/null
+++ b/components/sandbox/tiers/production/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-viewer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
index 1b4cff51..fbfec5f3 100644
--- a/components/sandbox/tiers/production/kustomization.yaml
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -8,3 +8,4 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- konflux-eaas
diff --git a/components/sandbox/tiers/src/konflux-eaas/cluster.yaml b/components/sandbox/tiers/src/konflux-eaas/cluster.yaml
new file mode 100644
index 00000000..34d70b41
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/cluster.yaml
@@ -0,0 +1,17 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects:
+- apiVersion: toolchain.dev.openshift.com/v1alpha1
+  kind: Idler
+  metadata:
+    name: ${SPACE_NAME}-eaas
+  spec:
+    timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+
+parameters:
+- name: SPACE_NAME
+  required: true
+- name: IDLER_TIMEOUT_SECONDS
+  # No Idling
+  value: "0"
diff --git a/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml b/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml
new file mode 100644
index 00000000..07220353
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/ns_eaas.yaml
@@ -0,0 +1,70 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects:
+- apiVersion: v1
+  kind: Namespace
+  metadata:
+    annotations:
+      openshift.io/description: ${SPACE_NAME}
+      openshift.io/display-name: ${SPACE_NAME}
+      openshift.io/requester: ${SPACE_NAME}
+    labels:
+      name: ${SPACE_NAME}-eaas
+    name: ${SPACE_NAME}-eaas
+
+- apiVersion: v1
+  kind: ServiceAccount
+  metadata:
+    namespace: ${SPACE_NAME}-eaas
+    name: namespace-manager
+
+- apiVersion: rbac.authorization.k8s.io/v1
+  kind: RoleBinding
+  metadata:
+    name: cluster-provisioner-rb
+    namespace: ${SPACE_NAME}-eaas
+  subjects:
+  - kind: ServiceAccount
+    name: namespace-manager
+    namespace: ${SPACE_NAME}-eaas
+  roleRef:
+    kind: ClusterRole
+    name: cluster-provisioner
+    apiGroup: rbac.authorization.k8s.io
+
+- apiVersion: v1
+  kind: ResourceQuota
+  metadata:
+    name: quota
+    namespace: ${SPACE_NAME}-eaas
+  spec:
+    hard:
+      # compute
+      limits.cpu: "0"
+      limits.memory: "0"
+      requests.cpu: "0"
+      requests.memory: "0"
+      # storage
+      requests.storage: "0"
+      limits.ephemeral-storage: "0"
+      requests.ephemeral-storage: "0"
+      # disallowed resource counts
+      count/configmaps: "0"
+      count/cronjobs: "0"
+      count/deployments.apps: "0"
+      count/jobs: "0"
+      count/persistentvolumeclaims: "0"
+      count/pods: "0"
+      count/replicasets.apps: "0"
+      count/replicationcontrollers: "0"
+      count/routes: "0"
+      count/services: "0"
+      count/statefulsets.apps: "0"
+      # allowed resource counts
+      count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+      count/secrets: "100"
+
+parameters:
+- name: SPACE_NAME
+  required: true
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_admin.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_contributor.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_maintainer.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml b/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml
new file mode 100644
index 00000000..359a2355
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/spacerole_viewer.yaml
@@ -0,0 +1,5 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata: {}
+objects: []
+# The user doesn't have any permissions in the namespace
diff --git a/components/sandbox/tiers/src/konflux-eaas/tier.yaml b/components/sandbox/tiers/src/konflux-eaas/tier.yaml
new file mode 100644
index 00000000..aca71497
--- /dev/null
+++ b/components/sandbox/tiers/src/konflux-eaas/tier.yaml
@@ -0,0 +1,34 @@
+apiVersion: template.openshift.io/v1
+kind: Template
+metadata:
+  name: konflux-eaas-tier
+objects:
+- kind: NSTemplateTier
+  apiVersion: toolchain.dev.openshift.com/v1alpha1
+  metadata:
+    name: konflux-eaas
+    namespace: ${NAMESPACE}
+  spec:
+    clusterResources:
+      templateRef: ${CLUSTER_TEMPL_REF}
+    namespaces:
+    - templateRef: ${EAAS_TEMPL_REF}
+    spaceRoles:
+      admin:
+        templateRef: ${ADMIN_TEMPL_REF}
+      maintainer:
+        templateRef: ${MAINTAINER_TEMPL_REF}
+      contributor:
+        templateRef: ${CONTRIBUTOR_TEMPL_REF}
+      viewer:
+        templateRef: ${VIEWER_TEMPL_REF}
+    spaceRequestConfig:
+      serviceAccountName: namespace-manager
+parameters:
+- name: NAMESPACE
+- name: CLUSTER_TEMPL_REF
+- name: EAAS_TEMPL_REF
+- name: ADMIN_TEMPL_REF
+- name: MAINTAINER_TEMPL_REF
+- name: CONTRIBUTOR_TEMPL_REF
+- name: VIEWER_TEMPL_REF
diff --git a/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml b/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml
new file mode 100644
index 00000000..ae70b55b
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-konflux-eaas.yaml
+- tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
+- tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
+- tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
+- tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
diff --git a/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml b/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml
new file mode 100644
index 00000000..7c6beeeb
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/nstemplatetier-konflux-eaas.yaml
@@ -0,0 +1,26 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: konflux-eaas
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: konflux-eaas-clusterresources-885501723-885501723
+  namespaces:
+  - templateRef: konflux-eaas-eaas-3975606140-3975606140
+  spaceRequestConfig:
+    serviceAccountName: namespace-manager
+  spaceRoles:
+    admin:
+      templateRef: konflux-eaas-admin-37575401-37575401
+    contributor:
+      templateRef: konflux-eaas-contributor-37575401-37575401
+    maintainer:
+      templateRef: konflux-eaas-maintainer-37575401-37575401
+    viewer:
+      templateRef: konflux-eaas-viewer-37575401-37575401
+status: {}
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
new file mode 100644
index 00000000..6166b360
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-admin-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-admin-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: admin
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
new file mode 100644
index 00000000..c6b3a4f8
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-clusterresources-885501723-885501723.yaml
@@ -0,0 +1,29 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-clusterresources-885501723-885501723
+  namespace: toolchain-host-operator
+spec:
+  revision: 885501723-885501723
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-eaas
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: konflux-eaas
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
new file mode 100644
index 00000000..b5f8feb2
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-contributor-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-contributor-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: contributor
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
new file mode 100644
index 00000000..7e680764
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-eaas-3975606140-3975606140.yaml
@@ -0,0 +1,76 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-eaas-3975606140-3975606140
+  namespace: toolchain-host-operator
+spec:
+  revision: 3975606140-3975606140
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          name: ${SPACE_NAME}-eaas
+        name: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: cluster-provisioner-rb
+        namespace: ${SPACE_NAME}-eaas
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: cluster-provisioner
+      subjects:
+      - kind: ServiceAccount
+        name: namespace-manager
+        namespace: ${SPACE_NAME}-eaas
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: quota
+        namespace: ${SPACE_NAME}-eaas
+      spec:
+        hard:
+          count/clustertemplateinstances.clustertemplate.openshift.io: "5"
+          count/configmaps: "0"
+          count/cronjobs: "0"
+          count/deployments.apps: "0"
+          count/jobs: "0"
+          count/persistentvolumeclaims: "0"
+          count/pods: "0"
+          count/replicasets.apps: "0"
+          count/replicationcontrollers: "0"
+          count/routes: "0"
+          count/secrets: "100"
+          count/services: "0"
+          count/statefulsets.apps: "0"
+          limits.cpu: "0"
+          limits.ephemeral-storage: "0"
+          limits.memory: "0"
+          requests.cpu: "0"
+          requests.ephemeral-storage: "0"
+          requests.memory: "0"
+          requests.storage: "0"
+    parameters:
+    - name: SPACE_NAME
+      required: true
+  tierName: konflux-eaas
+  type: eaas
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
new file mode 100644
index 00000000..b54fcaa6
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-maintainer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-maintainer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
new file mode 100644
index 00000000..3d36c8cf
--- /dev/null
+++ b/components/sandbox/tiers/staging/konflux-eaas/tiertemplate-konflux-eaas-viewer-37575401-37575401.yaml
@@ -0,0 +1,18 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: konflux-eaas-viewer-37575401-37575401
+  namespace: toolchain-host-operator
+spec:
+  revision: 37575401-37575401
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects: []
+  tierName: konflux-eaas
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
index 1b4cff51..fbfec5f3 100644
--- a/components/sandbox/tiers/staging/kustomization.yaml
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -8,3 +8,4 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- konflux-eaas 
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
