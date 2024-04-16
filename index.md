# kustomize changes tracked by commits 
### This file generated at Tue Apr 16 12:02:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 31c2d838 to 37b979d9 on Tue Apr 16 03:07:06 2024 </h3>  
 
<details> 
<summary>Git Diff (105 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
index c4e3a25f..7723c73a 100644
--- a/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
diff --git a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
index 5a626c9b..554dd833 100644
--- a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
index 50f361fd..38896201 100644
--- a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
index d0ab2f88..22ab57ee 100644
--- a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml b/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
index b67df60a..e4ad87d2 100644
--- a/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
+++ b/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
@@ -9,7 +9,7 @@ spec:
   provider:
     vault:
       server: "https://vault.ci.ext.devshift.net"
-      path: app-sre/integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/rh-artifacts-bucket-writer
+      path: app-sre/integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/rh-artifacts-bucket-writer
       version: v1
       auth:
         # VaultAppRole authenticates with Vault using the
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-31c2d838/production/components/backup/production/stone-prd-host1/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
---
>       key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
./commit-31c2d838/production/components/backup/production/stone-prd-m01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
---
>       key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
./commit-31c2d838/production/components/backup/production/stone-prd-rh01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
---
>       key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
./commit-31c2d838/production/components/backup/production/stone-prod-p01/kustomize.out.yaml
18c18
<       key: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
---
>       key: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
./commit-31c2d838/production/components/cluster-secret-store-rh/production/kustomize.out.yaml
39c39
<       path: app-sre/integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/rh-artifacts-bucket-writer
---
>       path: app-sre/integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/rh-artifacts-bucket-writer 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 31c2d838 to 37b979d9 on Tue Apr 16 03:07:06 2024 </h3>  
 
<details> 
<summary>Git Diff (105 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
index c4e3a25f..7723c73a 100644
--- a/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
diff --git a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
index 5a626c9b..554dd833 100644
--- a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
index 50f361fd..38896201 100644
--- a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
index d0ab2f88..22ab57ee 100644
--- a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml b/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
index b67df60a..e4ad87d2 100644
--- a/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
+++ b/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
@@ -9,7 +9,7 @@ spec:
   provider:
     vault:
       server: "https://vault.ci.ext.devshift.net"
-      path: app-sre/integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/rh-artifacts-bucket-writer
+      path: app-sre/integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/rh-artifacts-bucket-writer
       version: v1
       auth:
         # VaultAppRole authenticates with Vault using the
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 31c2d838 to 37b979d9 on Tue Apr 16 03:07:06 2024 </h3>  
 
<details> 
<summary>Git Diff (105 lines)</summary>  

``` 
diff --git a/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
index c4e3a25f..7723c73a 100644
--- a/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-host1/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-host1
diff --git a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
index 5a626c9b..554dd833 100644
--- a/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-m01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-m01
diff --git a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
index 50f361fd..38896201 100644
--- a/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prd-rh01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prd-rh01
diff --git a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
index d0ab2f88..22ab57ee 100644
--- a/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
+++ b/components/backup/production/stone-prod-p01/backup-s3-credentials-patch.yaml
@@ -1,3 +1,3 @@
 - op: replace
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-prod-backup/backup-stone-prod-p01
diff --git a/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml b/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
index b67df60a..e4ad87d2 100644
--- a/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
+++ b/components/cluster-secret-store-rh/base/rh-artifacts-bucket-writer-secret-store.yml
@@ -9,7 +9,7 @@ spec:
   provider:
     vault:
       server: "https://vault.ci.ext.devshift.net"
-      path: app-sre/integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/rh-artifacts-bucket-writer
+      path: app-sre/integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/rh-artifacts-bucket-writer
       version: v1
       auth:
         # VaultAppRole authenticates with Vault using the
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prd-m01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prd-rh01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
index 318087fd..6c9f4229 100644
--- a/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/stonesoupp01ue1/stonesoup-infra-production/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep05ue1/stonesoup-infra-production/spi-secrets-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from a1513f0d to 31c2d838 on Mon Apr 15 18:12:14 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 504e63cc..617ab18e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,8 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-stg-host
-                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/components/authentication/staging/base/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
index eaa1ccc2..940d5937 100644
--- a/components/authentication/staging/base/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/github
+  - ../../base/rh-idp
diff --git a/components/authentication/staging/stone-stg-host/kustomization.yaml b/components/authentication/staging/stone-stg-host/kustomization.yaml
deleted file mode 100644
index 940d5937..00000000
--- a/components/authentication/staging/stone-stg-host/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/rh-idp 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a1513f0d to 31c2d838 on Mon Apr 15 18:12:14 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 504e63cc..617ab18e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,8 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-stg-host
-                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/components/authentication/staging/base/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
index eaa1ccc2..940d5937 100644
--- a/components/authentication/staging/base/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/github
+  - ../../base/rh-idp
diff --git a/components/authentication/staging/stone-stg-host/kustomization.yaml b/components/authentication/staging/stone-stg-host/kustomization.yaml
deleted file mode 100644
index 940d5937..00000000
--- a/components/authentication/staging/stone-stg-host/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/rh-idp 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-a1513f0d/staging/components/authentication/staging: stone-stg-host 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a1513f0d to 31c2d838 on Mon Apr 15 18:12:14 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 504e63cc..617ab18e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,8 +19,6 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
-                - nameNormalized: stone-stg-host
-                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/components/authentication/staging/base/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
index eaa1ccc2..940d5937 100644
--- a/components/authentication/staging/base/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../../base/github
+  - ../../base/rh-idp
diff --git a/components/authentication/staging/stone-stg-host/kustomization.yaml b/components/authentication/staging/stone-stg-host/kustomization.yaml
deleted file mode 100644
index 940d5937..00000000
--- a/components/authentication/staging/stone-stg-host/kustomization.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../../base/rh-idp 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 5b7d2164 to a1513f0d on Mon Apr 15 17:36:57 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 617ab18e..504e63cc 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml b/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
new file mode 100644
index 00000000..0cd25227
--- /dev/null
+++ b/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: konflux-ldap-sa
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/konflux-ldap-sa
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: konflux-ldap-sa
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
similarity index 80%
rename from components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
index 9637ff73..9e90c5af 100644
--- a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
@@ -1,4 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+  - konflux-ldap-sa.yaml
   - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
rename to components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/all/group-sync/kustomization.yaml
index c7c56631..22a78cdd 100644
--- a/components/authentication/base/all/group-sync/kustomization.yaml
+++ b/components/authentication/base/all/group-sync/kustomization.yaml
@@ -3,5 +3,6 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - group-sync.yaml
+- external-secrets
 - namespaces.yaml
 - subscription.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index f4f09109..ac6b50bb 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -12,6 +12,9 @@ spec:
           kind: Secret
           name: mtls-ca-validators
           namespace: group-sync-operator
+        credentialsSecret:
+          name: konflux-ldap-sa
+          namespace: group-sync-operator
         insecure: false
         prune: true
         rfc2307:
@@ -34,6 +37,6 @@ spec:
             filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
             scope: sub
           userUIDAttribute: dn
-        url: 'ldaps://ldap.corp.redhat.com'
+        url: 'ldaps://ldapfrac.corp.redhat.com'
       name: ldap-corp
   schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
index 9a9cf186..9453f06e 100644
--- a/components/authentication/base/rh-idp/group-sync/kustomization.yaml
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -2,5 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: group-sync-operator
 resources:
-- external-secrets
 - konflux-rover-groups.yaml
diff --git a/components/authentication/k-components/ldap-url-patch/kustomization.yaml b/components/authentication/k-components/ldap-url-patch/kustomization.yaml
new file mode 100644
index 00000000..fa6e8e5e
--- /dev/null
+++ b/components/authentication/k-components/ldap-url-patch/kustomization.yaml
@@ -0,0 +1,10 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: ldap-url-patch.yaml
+    target:
+      name: konflux-rover-groups
+      kind: GroupSync
+      group: redhatcop.redhat.io
+      version: v1alpha1
diff --git a/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml b/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml
new file mode 100644
index 00000000..20c5dbe6
--- /dev/null
+++ b/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/providers/0/ldap/url
+  value: ldaps://ldap.corp.redhat.com
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
index 2e53febf..8a8a2c1a 100644
--- a/components/authentication/production/stone-prod-p01/kustomization.yaml
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
   - ../../base/rh-idp
 components:
   - ../k-components/rhtap-infra-secrets-patch
+  - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
index 940d5937..2395e070 100644
--- a/components/authentication/staging/stone-stage-p01/kustomization.yaml
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base/rh-idp
+components:
+  - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/stone-stg-host/kustomization.yaml b/components/authentication/staging/stone-stg-host/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stg-host/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5b7d2164/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
789,811d788
<   name: konflux-ldap-sa
<   namespace: group-sync-operator
< spec:
<   dataFrom:
<   - extract:
<       conversionStrategy: Default
<       decodingStrategy: None
<       key: staging/group-sync/konflux-ldap-sa
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: konflux-ldap-sa
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
864,866d840
<         namespace: group-sync-operator
<       credentialsSecret:
<         name: konflux-ldap-sa 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 5b7d2164 to a1513f0d on Mon Apr 15 17:36:57 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 617ab18e..504e63cc 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml b/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
new file mode 100644
index 00000000..0cd25227
--- /dev/null
+++ b/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: konflux-ldap-sa
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/konflux-ldap-sa
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: konflux-ldap-sa
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
similarity index 80%
rename from components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
index 9637ff73..9e90c5af 100644
--- a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
@@ -1,4 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+  - konflux-ldap-sa.yaml
   - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
rename to components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/all/group-sync/kustomization.yaml
index c7c56631..22a78cdd 100644
--- a/components/authentication/base/all/group-sync/kustomization.yaml
+++ b/components/authentication/base/all/group-sync/kustomization.yaml
@@ -3,5 +3,6 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - group-sync.yaml
+- external-secrets
 - namespaces.yaml
 - subscription.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index f4f09109..ac6b50bb 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -12,6 +12,9 @@ spec:
           kind: Secret
           name: mtls-ca-validators
           namespace: group-sync-operator
+        credentialsSecret:
+          name: konflux-ldap-sa
+          namespace: group-sync-operator
         insecure: false
         prune: true
         rfc2307:
@@ -34,6 +37,6 @@ spec:
             filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
             scope: sub
           userUIDAttribute: dn
-        url: 'ldaps://ldap.corp.redhat.com'
+        url: 'ldaps://ldapfrac.corp.redhat.com'
       name: ldap-corp
   schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
index 9a9cf186..9453f06e 100644
--- a/components/authentication/base/rh-idp/group-sync/kustomization.yaml
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -2,5 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: group-sync-operator
 resources:
-- external-secrets
 - konflux-rover-groups.yaml
diff --git a/components/authentication/k-components/ldap-url-patch/kustomization.yaml b/components/authentication/k-components/ldap-url-patch/kustomization.yaml
new file mode 100644
index 00000000..fa6e8e5e
--- /dev/null
+++ b/components/authentication/k-components/ldap-url-patch/kustomization.yaml
@@ -0,0 +1,10 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: ldap-url-patch.yaml
+    target:
+      name: konflux-rover-groups
+      kind: GroupSync
+      group: redhatcop.redhat.io
+      version: v1alpha1
diff --git a/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml b/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml
new file mode 100644
index 00000000..20c5dbe6
--- /dev/null
+++ b/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/providers/0/ldap/url
+  value: ldaps://ldap.corp.redhat.com
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
index 2e53febf..8a8a2c1a 100644
--- a/components/authentication/production/stone-prod-p01/kustomization.yaml
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
   - ../../base/rh-idp
 components:
   - ../k-components/rhtap-infra-secrets-patch
+  - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
index 940d5937..2395e070 100644
--- a/components/authentication/staging/stone-stage-p01/kustomization.yaml
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base/rh-idp
+components:
+  - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/stone-stg-host/kustomization.yaml b/components/authentication/staging/stone-stg-host/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stg-host/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-5b7d2164/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
789,811d788
<   name: konflux-ldap-sa
<   namespace: group-sync-operator
< spec:
<   dataFrom:
<   - extract:
<       conversionStrategy: Default
<       decodingStrategy: None
<       key: staging/group-sync/konflux-ldap-sa
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: konflux-ldap-sa
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
864,866d840
<         namespace: group-sync-operator
<       credentialsSecret:
<         name: konflux-ldap-sa
./commit-a1513f0d/staging/components/authentication/staging: stone-stg-host 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 5b7d2164 to a1513f0d on Mon Apr 15 17:36:57 2024 </h3>  
 
<details> 
<summary>Git Diff (155 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 617ab18e..504e63cc 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -19,6 +19,8 @@ spec:
                   values.clusterDir: stone-stage-p01
                 - nameNormalized: stone-prod-p01
                   values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-stg-host
+                  values.clusterDir: stone-stg-host
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml b/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
new file mode 100644
index 00000000..0cd25227
--- /dev/null
+++ b/components/authentication/base/all/group-sync/external-secrets/konflux-ldap-sa.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: konflux-ldap-sa
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/konflux-ldap-sa
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: konflux-ldap-sa
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
similarity index 80%
rename from components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
rename to components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
index 9637ff73..9e90c5af 100644
--- a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/all/group-sync/external-secrets/kustomization.yaml
@@ -1,4 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+  - konflux-ldap-sa.yaml
   - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
rename to components/authentication/base/all/group-sync/external-secrets/mtls-ca-validators.yaml
diff --git a/components/authentication/base/all/group-sync/kustomization.yaml b/components/authentication/base/all/group-sync/kustomization.yaml
index c7c56631..22a78cdd 100644
--- a/components/authentication/base/all/group-sync/kustomization.yaml
+++ b/components/authentication/base/all/group-sync/kustomization.yaml
@@ -3,5 +3,6 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - group-sync.yaml
+- external-secrets
 - namespaces.yaml
 - subscription.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
index f4f09109..ac6b50bb 100644
--- a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -12,6 +12,9 @@ spec:
           kind: Secret
           name: mtls-ca-validators
           namespace: group-sync-operator
+        credentialsSecret:
+          name: konflux-ldap-sa
+          namespace: group-sync-operator
         insecure: false
         prune: true
         rfc2307:
@@ -34,6 +37,6 @@ spec:
             filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
             scope: sub
           userUIDAttribute: dn
-        url: 'ldaps://ldap.corp.redhat.com'
+        url: 'ldaps://ldapfrac.corp.redhat.com'
       name: ldap-corp
   schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
index 9a9cf186..9453f06e 100644
--- a/components/authentication/base/rh-idp/group-sync/kustomization.yaml
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -2,5 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 namespace: group-sync-operator
 resources:
-- external-secrets
 - konflux-rover-groups.yaml
diff --git a/components/authentication/k-components/ldap-url-patch/kustomization.yaml b/components/authentication/k-components/ldap-url-patch/kustomization.yaml
new file mode 100644
index 00000000..fa6e8e5e
--- /dev/null
+++ b/components/authentication/k-components/ldap-url-patch/kustomization.yaml
@@ -0,0 +1,10 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: ldap-url-patch.yaml
+    target:
+      name: konflux-rover-groups
+      kind: GroupSync
+      group: redhatcop.redhat.io
+      version: v1alpha1
diff --git a/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml b/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml
new file mode 100644
index 00000000..20c5dbe6
--- /dev/null
+++ b/components/authentication/k-components/ldap-url-patch/ldap-url-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/providers/0/ldap/url
+  value: ldaps://ldap.corp.redhat.com
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
index 2e53febf..8a8a2c1a 100644
--- a/components/authentication/production/stone-prod-p01/kustomization.yaml
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
   - ../../base/rh-idp
 components:
   - ../k-components/rhtap-infra-secrets-patch
+  - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
index 940d5937..2395e070 100644
--- a/components/authentication/staging/stone-stage-p01/kustomization.yaml
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -2,3 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base/rh-idp
+components:
+  - ../../k-components/ldap-url-patch
diff --git a/components/authentication/staging/stone-stg-host/kustomization.yaml b/components/authentication/staging/stone-stg-host/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stg-host/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 85945121 to 5b7d2164 on Mon Apr 15 13:38:57 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/all/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/everyone-can-view-patch.yaml
rename to components/authentication/base/all/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
index baa194e3..44bc73d8 100644
--- a/components/authentication/base/all/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,7 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -91,7 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -101,7 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
index a979ad78..c7380b60 100644
--- a/components/authentication/base/all/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -6,3 +6,23 @@ resources:
 - component-maintainer.yaml
 - everyone-can-view.yaml
 - konflux-admins.yaml
+
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
deleted file mode 100644
index 88414a0a..00000000
--- a/components/authentication/base/github/everyone-can-view-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: add
-  path: /subjects
-  value:
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'stage'
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 374420c0..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio-sre
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio-sre
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
index 391fe370..8e663f2b 100644
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - github-redhat-appstudio-sre.yaml
   - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 8fa2a692..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio-sre
-      credentialsSecret:
-        name: github-redhat-appstudio-sre
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
index 012ecfa8..81213fa4 100644
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - external-secrets
-- github-redhat-appstudio-sre.yaml
 - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/github/kustomization.yaml
+++ b/components/authentication/base/github/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
deleted file mode 100644
index 62e30f1f..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio-sre
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 6adbabef..91b9c215 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -11,9 +11,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: github-redhat-appstudio-sre-secret-patch.yaml
-    target:
-      name: github-redhat-appstudio-sre
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 85945121 to 5b7d2164 on Mon Apr 15 13:38:57 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/all/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/everyone-can-view-patch.yaml
rename to components/authentication/base/all/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
index baa194e3..44bc73d8 100644
--- a/components/authentication/base/all/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,7 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -91,7 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -101,7 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
index a979ad78..c7380b60 100644
--- a/components/authentication/base/all/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -6,3 +6,23 @@ resources:
 - component-maintainer.yaml
 - everyone-can-view.yaml
 - konflux-admins.yaml
+
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
deleted file mode 100644
index 88414a0a..00000000
--- a/components/authentication/base/github/everyone-can-view-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: add
-  path: /subjects
-  value:
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'stage'
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 374420c0..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio-sre
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio-sre
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
index 391fe370..8e663f2b 100644
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - github-redhat-appstudio-sre.yaml
   - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 8fa2a692..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio-sre
-      credentialsSecret:
-        name: github-redhat-appstudio-sre
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
index 012ecfa8..81213fa4 100644
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - external-secrets
-- github-redhat-appstudio-sre.yaml
 - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/github/kustomization.yaml
+++ b/components/authentication/base/github/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
deleted file mode 100644
index 62e30f1f..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio-sre
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 6adbabef..91b9c215 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -11,9 +11,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: github-redhat-appstudio-sre-secret-patch.yaml
-    target:
-      name: github-redhat-appstudio-sre
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 85945121 to 5b7d2164 on Mon Apr 15 13:38:57 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/all/everyone-can-view-patch.yaml
similarity index 100%
rename from components/authentication/base/rh-idp/everyone-can-view-patch.yaml
rename to components/authentication/base/all/everyone-can-view-patch.yaml
diff --git a/components/authentication/base/all/everyone-can-view.yaml b/components/authentication/base/all/everyone-can-view.yaml
index baa194e3..44bc73d8 100644
--- a/components/authentication/base/all/everyone-can-view.yaml
+++ b/components/authentication/base/all/everyone-can-view.yaml
@@ -81,7 +81,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -91,7 +91,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-appstudio
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -101,7 +101,7 @@ kind: ClusterRoleBinding
 apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: everyone-view-cluster-version
-subjects: [] # added by auth specific overlay, e.g. github
+subjects: [] # added by patch to avoid duplicating the groups
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/authentication/base/all/kustomization.yaml b/components/authentication/base/all/kustomization.yaml
index a979ad78..c7380b60 100644
--- a/components/authentication/base/all/kustomization.yaml
+++ b/components/authentication/base/all/kustomization.yaml
@@ -6,3 +6,23 @@ resources:
 - component-maintainer.yaml
 - everyone-can-view.yaml
 - konflux-admins.yaml
+
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/base/github/everyone-can-view-patch.yaml b/components/authentication/base/github/everyone-can-view-patch.yaml
deleted file mode 100644
index 88414a0a..00000000
--- a/components/authentication/base/github/everyone-can-view-patch.yaml
+++ /dev/null
@@ -1,7 +0,0 @@
----
-- op: add
-  path: /subjects
-  value:
-    - kind: Group
-      apiGroup: rbac.authorization.k8s.io
-      name: 'stage'
diff --git a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 374420c0..00000000
--- a/components/authentication/base/github/group-sync/external-secrets/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,21 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        conversionStrategy: Default
-        decodingStrategy: None
-        key: staging/group-sync/github-redhat-appstudio-sre
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: github-redhat-appstudio-sre
diff --git a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
index 391fe370..8e663f2b 100644
--- a/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/external-secrets/kustomization.yaml
@@ -1,5 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - github-redhat-appstudio-sre.yaml
   - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml b/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
deleted file mode 100644
index 8fa2a692..00000000
--- a/components/authentication/base/github/group-sync/github-redhat-appstudio-sre.yaml
+++ /dev/null
@@ -1,15 +0,0 @@
-apiVersion: redhatcop.redhat.io/v1alpha1
-kind: GroupSync
-metadata:
-  name: github-redhat-appstudio-sre
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  schedule: "*/15 * * * *"
-  providers:
-  - name: github
-    github:
-      organization: redhat-appstudio-sre
-      credentialsSecret:
-        name: github-redhat-appstudio-sre
-        namespace: group-sync-operator
diff --git a/components/authentication/base/github/group-sync/kustomization.yaml b/components/authentication/base/github/group-sync/kustomization.yaml
index 012ecfa8..81213fa4 100644
--- a/components/authentication/base/github/group-sync/kustomization.yaml
+++ b/components/authentication/base/github/group-sync/kustomization.yaml
@@ -3,5 +3,4 @@ kind: Kustomization
 namespace: group-sync-operator
 resources:
 - external-secrets
-- github-redhat-appstudio-sre.yaml
 - github-redhat-appstudio.yaml
diff --git a/components/authentication/base/github/kustomization.yaml b/components/authentication/base/github/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/github/kustomization.yaml
+++ b/components/authentication/base/github/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
index 17f11d84..6fb7c23c 100644
--- a/components/authentication/base/rh-idp/kustomization.yaml
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -3,22 +3,3 @@ kind: Kustomization
 resources:
 - ../all
 - group-sync
-patches:
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-appstudio
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
-  - path: everyone-can-view-patch.yaml
-    target:
-      name: everyone-view-cluster-version
-      kind: ClusterRoleBinding
-      group: rbac.authorization.k8s.io
-      version: v1
diff --git a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
deleted file mode 100644
index 62e30f1f..00000000
--- a/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/group-sync/github-redhat-appstudio-sre
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index 6adbabef..91b9c215 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -11,9 +11,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: github-redhat-appstudio-sre-secret-patch.yaml
-    target:
-      name: github-redhat-appstudio-sre
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1 
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
```
 
</details> 
<br> 


</div>
