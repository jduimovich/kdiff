# kustomize changes tracked by commits 
### This file generated at Fri Mar 17 18:04:27 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 20 commits


<div>
<h3>1: Staging changes from f436256 to cefa8a6 on Fri Mar 17 15:13:53 2023 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index a642944..1f20a2f 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -20,7 +20,7 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -39,4 +39,4 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/enterprise-contract/kustomize.out
264c264
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
285c285
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 16:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 12:05:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 16:04:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 12:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from f436256 to cefa8a6 on Fri Mar 17 15:13:53 2023 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index a642944..1f20a2f 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -20,7 +20,7 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -39,4 +39,4 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/development/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/development/components/enterprise-contract/kustomize.out
264c264
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
285c285
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 16:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 16:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 12:06:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 12:06:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 84522ea to f436256 on Fri Mar 17 11:14:42 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index 909063e..2a79d16 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -47,7 +47,7 @@ setup-pac-app() (
         webhook_secret=$(openssl rand -hex 20)
 
         if ! oc get -n pipelines-as-code secret pipelines-as-code-secret &>/dev/null; then         
-                token=$(sign rs256 "$payload" "$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)")
+                token=$(sign rs256 "$payload" "$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)")
                 webhook_url=$(oc whoami --show-console | sed 's/console-openshift-console/pipelines-as-code-controller-pipelines-as-code/')
                 curl \
                 -X PATCH \
@@ -62,7 +62,7 @@ setup-pac-app() (
 
 if [ -n "${PAC_GITHUB_APP_ID}" ] && [ -n "${PAC_GITHUB_APP_PRIVATE_KEY}" ]; then
         WEBHOOK_SECRET=$(setup-pac-app)
-        GITHUB_APP_PRIVATE_KEY=$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)
+        GITHUB_APP_PRIVATE_KEY=$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)
         GITHUB_APP_DATA="--from-literal github-private-key='$GITHUB_APP_PRIVATE_KEY' --from-literal github-application-id='${PAC_GITHUB_APP_ID}' --from-literal webhook.secret='$WEBHOOK_SECRET'"                
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 12:05:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 10:04:28 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 12:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 10:04:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 84522ea to f436256 on Fri Mar 17 11:14:42 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index 909063e..2a79d16 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -47,7 +47,7 @@ setup-pac-app() (
         webhook_secret=$(openssl rand -hex 20)
 
         if ! oc get -n pipelines-as-code secret pipelines-as-code-secret &>/dev/null; then         
-                token=$(sign rs256 "$payload" "$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)")
+                token=$(sign rs256 "$payload" "$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)")
                 webhook_url=$(oc whoami --show-console | sed 's/console-openshift-console/pipelines-as-code-controller-pipelines-as-code/')
                 curl \
                 -X PATCH \
@@ -62,7 +62,7 @@ setup-pac-app() (
 
 if [ -n "${PAC_GITHUB_APP_ID}" ] && [ -n "${PAC_GITHUB_APP_PRIVATE_KEY}" ]; then
         WEBHOOK_SECRET=$(setup-pac-app)
-        GITHUB_APP_PRIVATE_KEY=$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)
+        GITHUB_APP_PRIVATE_KEY=$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)
         GITHUB_APP_DATA="--from-literal github-private-key='$GITHUB_APP_PRIVATE_KEY' --from-literal github-application-id='${PAC_GITHUB_APP_ID}' --from-literal webhook.secret='$WEBHOOK_SECRET'"                
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 12:06:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 12:06:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 10:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 10:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from cafc39e to 84522ea on Fri Mar 17 08:58:56 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 8a61a3e..3c64c8a 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 68c9506..e3cc20f 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index c02d244..57ae239 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 10:04:28 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 10:04:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from cafc39e to 84522ea on Fri Mar 17 08:58:56 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 8a61a3e..3c64c8a 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 68c9506..e3cc20f 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index c02d244..57ae239 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 10:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 10:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 08:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 3e6b681 to cafc39e on Fri Mar 17 07:30:29 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5c1c6f0..7eb1bf3 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
 
 components:
   - ../components/tekton-chains
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index b9c98ad..8f25c62 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8d1ec02..93b9653 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/hack/secret-creator/create-plnsvc-secrets.sh b/hack/secret-creator/create-plnsvc-secrets.sh
index c89a48b..bbcc1fa 100755
--- a/hack/secret-creator/create-plnsvc-secrets.sh
+++ b/hack/secret-creator/create-plnsvc-secrets.sh
@@ -37,8 +37,11 @@ create_s3_secret() {
     USER=minio
     PASS="$(openssl rand -base64 20)"
     kubectl create secret generic -n tekton-results tekton-results-s3 \
-      --from-literal=S3_ACCESS_KEY_ID="$USER" \
-      --from-literal=S3_SECRET_ACCESS_KEY="$PASS"
+      --from-literal=aws_access_key_id="$USER" \
+      --from-literal=aws_secret_access_key="$PASS" \
+      --from-literal=aws_region='not-applicable' \
+      --from-literal=bucket=tekton-results \
+      --from-literal=endpoint='https://minio.tekton-results.svc.cluster.local'
 
     echo "Creating MinIO config" >&2
     if kubectl get secret -n tekton-results minio-storage-configuration &>/dev/null; then 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (466 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 08:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
44c44
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
191c191
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
203c203
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
215c215
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
292c292
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
313c313
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
355c355
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
388c388
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
523c523
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
579c579
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
611,617d610
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - get
<   - list
< - apiGroups:
646c639
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
765c758
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1093c1086
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1112c1105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1150c1143
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1169c1162
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1295c1288
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1315c1308
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1335c1328
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1484,1498d1476
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-results-watcher-logs
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - kind: ServiceAccount
<   name: tekton-results-watcher
<   namespace: tekton-results
< ---
1518c1496
<   secret-github-app-token-scoped: "true"
---
>   secret-github-app-token-scopped: "true"
1527c1505
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1569c1547
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1577c1555
<   version: v0.16.0
---
>   version: v0.15.0
1585c1563
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1846c1824
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1885c1863
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1909c1887
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1932c1910
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2035c2013
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2055c2033
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2075c2053
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.15.0
2127c2105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2148c2126
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2160c2138
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.15.0
2203c2181
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2223c2201
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2237c2215
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.15.0
2380,2410d2357
<         - name: LOGS_API
<           value: "true"
<         - name: LOGS_TYPE
<           value: S3
<         - name: S3_HOSTNAME_IMMUTABLE
<           value: "true"
<         - name: S3_ACCESS_KEY_ID
<           valueFrom:
<             secretKeyRef:
<               key: aws_access_key_id
<               name: tekton-results-s3
<         - name: S3_SECRET_ACCESS_KEY
<           valueFrom:
<             secretKeyRef:
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
<               name: tekton-results-s3
<         - name: S3_BUCKET_NAME
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
<         - name: S3_ENDPOINT
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
<               name: tekton-results-s3
2431c2378
<         image: quay.io/redhat-appstudio/tekton-results-api:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-api:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2503c2450
<         image: quay.io/redhat-appstudio/tekton-results-watcher:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2513,2514d2459
<             add:
<             - NET_BIND_SERVICE
2701c2646
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2726,2729d2670
<     enable-bundles-resolver: true
<     enable-cluster-resolver: true
<     enable-git-resolver: true
<     enable-hub-resolver: true
2765c2706
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 08:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
44c44
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
191c191
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
203c203
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
215c215
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
292c292
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
313c313
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
355c355
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
388c388
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
523c523
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
579c579
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
611,617d610
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - get
<   - list
< - apiGroups:
646c639
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
765c758
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1093c1086
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1112c1105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1150c1143
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1169c1162
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1295c1288
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1315c1308
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1335c1328
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1484,1498d1476
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-results-watcher-logs
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - kind: ServiceAccount
<   name: tekton-results-watcher
<   namespace: tekton-results
< ---
1518c1496
<   secret-github-app-token-scoped: "true"
---
>   secret-github-app-token-scopped: "true"
1527c1505
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1569c1547
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1577c1555
<   version: v0.16.0
---
>   version: v0.15.0
1585c1563
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1846c1824
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1885c1863
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1909c1887
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1932c1910
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2035c2013
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2055c2033
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2075c2053
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.15.0
2127c2105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2148c2126
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2160c2138
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.15.0
2203c2181
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2223c2201
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2237c2215
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.15.0
2380,2410d2357
<         - name: LOGS_API
<           value: "true"
<         - name: LOGS_TYPE
<           value: S3
<         - name: S3_HOSTNAME_IMMUTABLE
<           value: "true"
<         - name: S3_ACCESS_KEY_ID
<           valueFrom:
<             secretKeyRef:
<               key: aws_access_key_id
<               name: tekton-results-s3
<         - name: S3_SECRET_ACCESS_KEY
<           valueFrom:
<             secretKeyRef:
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
<               name: tekton-results-s3
<         - name: S3_BUCKET_NAME
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
<         - name: S3_ENDPOINT
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
<               name: tekton-results-s3
2431c2378
<         image: quay.io/redhat-appstudio/tekton-results-api:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-api:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2503c2450
<         image: quay.io/redhat-appstudio/tekton-results-watcher:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2513,2514d2459
<             add:
<             - NET_BIND_SERVICE
2701c2646
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2726,2729d2670
<     enable-bundles-resolver: true
<     enable-cluster-resolver: true
<     enable-git-resolver: true
<     enable-hub-resolver: true
2765c2706
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 3e6b681 to cafc39e on Fri Mar 17 07:30:29 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5c1c6f0..7eb1bf3 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
 
 components:
   - ../components/tekton-chains
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index b9c98ad..8f25c62 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8d1ec02..93b9653 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/hack/secret-creator/create-plnsvc-secrets.sh b/hack/secret-creator/create-plnsvc-secrets.sh
index c89a48b..bbcc1fa 100755
--- a/hack/secret-creator/create-plnsvc-secrets.sh
+++ b/hack/secret-creator/create-plnsvc-secrets.sh
@@ -37,8 +37,11 @@ create_s3_secret() {
     USER=minio
     PASS="$(openssl rand -base64 20)"
     kubectl create secret generic -n tekton-results tekton-results-s3 \
-      --from-literal=S3_ACCESS_KEY_ID="$USER" \
-      --from-literal=S3_SECRET_ACCESS_KEY="$PASS"
+      --from-literal=aws_access_key_id="$USER" \
+      --from-literal=aws_secret_access_key="$PASS" \
+      --from-literal=aws_region='not-applicable' \
+      --from-literal=bucket=tekton-results \
+      --from-literal=endpoint='https://minio.tekton-results.svc.cluster.local'
 
     echo "Creating MinIO config" >&2
     if kubectl get secret -n tekton-results minio-storage-configuration &>/dev/null; then 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (380 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 08:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 08:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 08:05:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
38c38
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
174,181d173
<   name: pipeline-service-exporter
<   namespace: openshift-pipelines
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
185c177
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
197c189
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
209c201
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
278c270
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
299c291
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
341c333
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
374c366
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
509c501
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
565c557
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
597,603d588
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - get
<   - list
< - apiGroups:
632c617
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
748,778d732
<   name: pipeline-service-exporter-reader
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   - services
<   - namespaces
<   - endpoints
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   - taskruns
<   verbs:
<   - get
<   - list
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
782c736
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1110c1064
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1129c1083
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1167c1121
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1186c1140
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1312c1266
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1332c1286
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1352c1306
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1416,1430d1369
<   name: pipeline-service-exporter-reader-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pipeline-service-exporter-reader
< subjects:
< - kind: ServiceAccount
<   name: pipeline-service-exporter
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1534c1473
<   secret-github-app-token-scoped: "true"
---
>   secret-github-app-token-scopped: "true"
1543c1482
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1585c1524
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1593c1532
<   version: v0.16.0
---
>   version: v0.15.0
1601c1540
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1862c1801
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1881,1898d1819
<     app: pipeline-metrics-exporter
<   name: pipeline-metrics-exporter-service
<   namespace: openshift-pipelines
< spec:
<   ports:
<   - name: metrics
<     port: 9117
<     protocol: TCP
<     targetPort: 9117
<   selector:
<     app: pipeline-metrics-exporter
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
1901c1822
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1925c1846
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1948c1869
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2033,2066d1953
<   name: pipeline-metrics-exporter
<   namespace: openshift-pipelines
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: pipeline-metrics-exporter
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         app: pipeline-metrics-exporter
<     spec:
<       containers:
<       - image: quay.io/redhat-pipeline-service/metrics-exporter:45db641
<         name: pipeline-metrics-exporter
<         ports:
<         - containerPort: 9117
<         resources:
<           limits:
<             cpu: 500m
<             memory: 256Mi
<           requests:
<             cpu: 250m
<             memory: 128Mi
<       restartPolicy: Always
<       serviceAccountName: pipeline-service-exporter
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2070c1957
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2090c1977
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2110c1997
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.15.0
2162c2049
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2183c2070
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2195c2082
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.15.0
2238c2125
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2258c2145
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2272c2159
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.15.0
2418a2306,2309
>         - name: S3_BUCKET_NAME
>           value: tekton-results
>         - name: S3_ENDPOINT
>           value: https://minio.tekton-results.svc.cluster.local
2420a2312,2313
>         - name: S3_REGION
>           value: us-east-1
2424c2317
<               key: aws_access_key_id
---
>               key: S3_ACCESS_KEY_ID
2429,2444c2322
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
<               name: tekton-results-s3
<         - name: S3_BUCKET_NAME
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
<         - name: S3_ENDPOINT
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
---
>               key: S3_SECRET_ACCESS_KEY
2466c2344
<         image: quay.io/redhat-appstudio/tekton-results-api:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-api:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2478a2357,2359
>         - mountPath: /etc/ssl/certs/s3-cert.crt
>           name: ca-s3
>           subPath: s3-cert.crt
2500c2381
<               key: aws_access_key_id
---
>               key: S3_ACCESS_KEY_ID
2505,2510c2386
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
---
>               key: S3_SECRET_ACCESS_KEY
2513,2516c2389
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
---
>           value: tekton-results
2518,2522c2391,2394
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
<               name: tekton-results-s3
<         image: quay.io/minio/mc:RELEASE.2023-01-28T20-29-38Z
---
>           value: https://minio.tekton-results.svc.cluster.local
>         - name: S3_REGION
>           value: us-east-1
>         image: docker.io/minio/mc:RELEASE.2023-01-28T20-29-38Z
2524a2397,2400
>         volumeMounts:
>         - mountPath: /etc/ssl/certs/s3-cert.crt
>           name: ca-s3
>           subPath: s3-cert.crt
2526a2403,2408
>       - name: ca-s3
>         secret:
>           items:
>           - key: public.crt
>             path: s3-cert.crt
>           secretName: storage-tls
2578c2460
<         image: quay.io/redhat-appstudio/tekton-results-watcher:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2588,2589d2469
<             add:
<             - NET_BIND_SERVICE
2647c2527
<         image: bitnami/postgresql@sha256:78ef3a36dd814e5f6dfbd8bb7c2e16086f7ea3cc68108714883671523168d4d5
---
>         image: bitnami/postgresql@sha256:23b9a21460fefdd83accd0f864e734c88bebc67c86ee752a97b77dd4843907f0
2844c2724
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2869,2872d2748
<     enable-bundles-resolver: true
<     enable-cluster-resolver: true
<     enable-git-resolver: true
<     enable-hub-resolver: true
2922c2798
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Staging changes from c56e936 to 3e6b681 on Fri Mar 17 06:54:59 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/quicklab/templates/deployment.yaml b/hack/quicklab/templates/deployment.yaml
index ba13e90..ab4d495 100644
--- a/hack/quicklab/templates/deployment.yaml
+++ b/hack/quicklab/templates/deployment.yaml
@@ -21,7 +21,7 @@ spec:
       serviceAccountName: nfs-client-provisioner
       containers:
         - name: nfs-client-provisioner
-          image: k8s.gcr.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
+          image: registry.k8s.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
           volumeMounts:
             - name: nfs-client-root
               mountPath: /persistentvolumes 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 08:05:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 08:05:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Development changes from c56e936 to 3e6b681 on Fri Mar 17 06:54:59 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/quicklab/templates/deployment.yaml b/hack/quicklab/templates/deployment.yaml
index ba13e90..ab4d495 100644
--- a/hack/quicklab/templates/deployment.yaml
+++ b/hack/quicklab/templates/deployment.yaml
@@ -21,7 +21,7 @@ spec:
       serviceAccountName: nfs-client-provisioner
       containers:
         - name: nfs-client-provisioner
-          image: k8s.gcr.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
+          image: registry.k8s.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
           volumeMounts:
             - name: nfs-client-root
               mountPath: /persistentvolumes 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 08:05:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 08:05:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:06:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 08:06:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Staging changes from 7012d1d to c56e936 on Fri Mar 17 06:54:11 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 0af3960..fa3e1f3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 638248765110c60c75c62c00031f1968de44d647
+  newTag: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 21a36fc..cfe883b 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 638248765110c60c75c62c00031f1968de44d647
\ No newline at end of file
+    value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 00dc422..8cd68e5 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
---
>           value: 638248765110c60c75c62c00031f1968de44d647
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:638248765110c60c75c62c00031f1968de44d647
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 08:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 20:04:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 08:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 20:04:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Development changes from 7012d1d to c56e936 on Fri Mar 17 06:54:11 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 0af3960..fa3e1f3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 638248765110c60c75c62c00031f1968de44d647
+  newTag: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 21a36fc..cfe883b 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 638248765110c60c75c62c00031f1968de44d647
\ No newline at end of file
+    value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 00dc422..8cd68e5 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
---
>           value: 638248765110c60c75c62c00031f1968de44d647
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:638248765110c60c75c62c00031f1968de44d647
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 08:06:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 08:06:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 20:04:46 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 20:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Staging changes from a188244 to 7012d1d on Thu Mar 16 19:05:49 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 86d2a25..a642944 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -18,9 +18,9 @@ spec:
   sources:
     - name: Release Policies
       data:
-        - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
+        - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -37,6 +37,6 @@ spec:
   sources:
     - name: Release Policies
       data:
-        - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
+        - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 8c9b61c..dd16771 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,13 +1,13 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/hacbs-contract/enterprise-contract-controller/config/crd?ref=1e971bd09081c287854ce44432b3a6de0ca7785f
+  - https://github.com/hacbs-contract/enterprise-contract-controller/config/crd?ref=030be8a58953268dbe71cc42287e2820d65f6777
   # Kustomize does not allow github.com urls that reference a single-file. They must always reference
   # a directory that contains a kustomization.yaml file. The directory /config/rbac does include a
   # kustomization.yaml file but it includes many other RBAC changes that are not desirable here. Use
   # a URL to the "raw" version of the file instead.
-  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_viewer_role.yaml
-  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_editor_role.yaml
+  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/030be8a58953268dbe71cc42287e2820d65f6777/config/rbac/enterprisecontractpolicy_viewer_role.yaml
+  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/030be8a58953268dbe71cc42287e2820d65f6777/config/rbac/enterprisecontractpolicy_editor_role.yaml
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -17,10 +17,10 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:6d28b973ea96c4d65b64244212b69f85030e7dbfa5f2363ac6470f825b3fa95f
+      - verify_ec_task_bundle=quay.io/hacbs-contract/ec-task-bundle:0fd4c7333ac560ab9cf93ab37a52019a5cfb3aa4@sha256:2dc90e46f14d3537946d39dae6e9c7057e14f4c9de794010f4f1f7c6bac328b7
       - ec_policy_source=oci::https://quay.io/hacbs-contract/ec-release-policy:git-8ca675b@sha256:caf2a8991ca3feb80edfc8ff7c1930ed09481a7c8d934bb719007bffc1153ecc
       - ec_data_source=oci::https://quay.io/hacbs-contract/ec-policy-data:git-a3ca9be@sha256:d548e0808348c017782ae87920c94d45ad7117e0e630b5b991c8df557c22a844
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 1e971bd09081c287854ce44432b3a6de0ca7785f
+    newTag: 030be8a58953268dbe71cc42287e2820d65f6777 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/staging/components/enterprise-contract/kustomize.out
243c243
<   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:0fd4c7333ac560ab9cf93ab37a52019a5cfb3aa4@sha256:2dc90e46f14d3537946d39dae6e9c7057e14f4c9de794010f4f1f7c6bac328b7
---
>   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:6d28b973ea96c4d65b64244212b69f85030e7dbfa5f2363ac6470f825b3fa95f
261c261
<     - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
---
>     - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
264c264
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
282c282
<     - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
---
>     - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
285c285
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 20:04:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 14:04:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 20:04:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 14:04:27 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Development changes from a188244 to 7012d1d on Thu Mar 16 19:05:49 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 86d2a25..a642944 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -18,9 +18,9 @@ spec:
   sources:
     - name: Release Policies
       data:
-        - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
+        - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -37,6 +37,6 @@ spec:
   sources:
     - name: Release Policies
       data:
-        - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
+        - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 8c9b61c..dd16771 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,13 +1,13 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/hacbs-contract/enterprise-contract-controller/config/crd?ref=1e971bd09081c287854ce44432b3a6de0ca7785f
+  - https://github.com/hacbs-contract/enterprise-contract-controller/config/crd?ref=030be8a58953268dbe71cc42287e2820d65f6777
   # Kustomize does not allow github.com urls that reference a single-file. They must always reference
   # a directory that contains a kustomization.yaml file. The directory /config/rbac does include a
   # kustomization.yaml file but it includes many other RBAC changes that are not desirable here. Use
   # a URL to the "raw" version of the file instead.
-  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_viewer_role.yaml
-  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_editor_role.yaml
+  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/030be8a58953268dbe71cc42287e2820d65f6777/config/rbac/enterprisecontractpolicy_viewer_role.yaml
+  - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/030be8a58953268dbe71cc42287e2820d65f6777/config/rbac/enterprisecontractpolicy_editor_role.yaml
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -17,10 +17,10 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:6d28b973ea96c4d65b64244212b69f85030e7dbfa5f2363ac6470f825b3fa95f
+      - verify_ec_task_bundle=quay.io/hacbs-contract/ec-task-bundle:0fd4c7333ac560ab9cf93ab37a52019a5cfb3aa4@sha256:2dc90e46f14d3537946d39dae6e9c7057e14f4c9de794010f4f1f7c6bac328b7
       - ec_policy_source=oci::https://quay.io/hacbs-contract/ec-release-policy:git-8ca675b@sha256:caf2a8991ca3feb80edfc8ff7c1930ed09481a7c8d934bb719007bffc1153ecc
       - ec_data_source=oci::https://quay.io/hacbs-contract/ec-policy-data:git-a3ca9be@sha256:d548e0808348c017782ae87920c94d45ad7117e0e630b5b991c8df557c22a844
 images:
   - name: quay.io/redhat-appstudio/enterprise-contract-controller
     newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 1e971bd09081c287854ce44432b3a6de0ca7785f
+    newTag: 030be8a58953268dbe71cc42287e2820d65f6777 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/development/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/development/components/enterprise-contract/kustomize.out
243c243
<   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:0fd4c7333ac560ab9cf93ab37a52019a5cfb3aa4@sha256:2dc90e46f14d3537946d39dae6e9c7057e14f4c9de794010f4f1f7c6bac328b7
---
>   verify_ec_task_bundle: quay.io/hacbs-contract/ec-task-bundle:snapshot@sha256:6d28b973ea96c4d65b64244212b69f85030e7dbfa5f2363ac6470f825b3fa95f
261c261
<     - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
---
>     - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
264c264
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
282c282
<     - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
---
>     - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
285c285
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 20:04:46 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 20:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 14:04:48 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 14:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Staging changes from b75b854 to a188244 on Thu Mar 16 13:36:13 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 9b2ec79..e7744a8 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -203,9 +203,11 @@ while [ "$(oc get applications.argoproj.io all-application-sets -n openshift-git
   sleep 5
 done
 
-APPS=$(kubectl get apps -n openshift-gitops -o name)
-
-if echo $APPS | grep -q spi; then
+if ! timeout 100s bash -c "while ! kubectl get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-in-cluster-local; do printf '.'; sleep 5; done"; then
+  printf "Application spi-in-cluster-local not found (timeout)\n" 
+  kubectl get apps -n openshift-gitops -o name
+  exit 1
+else
   if [ "$(oc get applications.argoproj.io spi-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
     echo Initializing SPI
     curl https://raw.githubusercontent.com/redhat-appstudio/e2e-tests/${E2E_TESTS_COMMIT_SHA:-main}/scripts/spi-e2e-setup.sh | VAULT_PODNAME='vault-0' VAULT_NAMESPACE='spi-vault' bash -s
@@ -220,9 +222,11 @@ if echo $APPS | grep -q spi; then
   fi
 fi
 
+
 # Configure Pipelines as Code and required credentials
 $ROOT/hack/build/setup-pac-integration.sh
 
+APPS=$(kubectl get apps -n openshift-gitops -o name)
 # trigger refresh of apps
 for APP in $APPS; do
   kubectl patch $APP -n openshift-gitops --type merge -p='{"metadata": {"annotations":{"argocd.argoproj.io/refresh": "hard"}}}' & 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 14:04:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 12:05:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 14:04:27 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 12:05:48 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Development changes from b75b854 to a188244 on Thu Mar 16 13:36:13 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index 9b2ec79..e7744a8 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -203,9 +203,11 @@ while [ "$(oc get applications.argoproj.io all-application-sets -n openshift-git
   sleep 5
 done
 
-APPS=$(kubectl get apps -n openshift-gitops -o name)
-
-if echo $APPS | grep -q spi; then
+if ! timeout 100s bash -c "while ! kubectl get applications.argoproj.io -n openshift-gitops -o name | grep -q spi-in-cluster-local; do printf '.'; sleep 5; done"; then
+  printf "Application spi-in-cluster-local not found (timeout)\n" 
+  kubectl get apps -n openshift-gitops -o name
+  exit 1
+else
   if [ "$(oc get applications.argoproj.io spi-in-cluster-local -n openshift-gitops -o jsonpath='{.status.health.status} {.status.sync.status}')" != "Healthy Synced" ]; then
     echo Initializing SPI
     curl https://raw.githubusercontent.com/redhat-appstudio/e2e-tests/${E2E_TESTS_COMMIT_SHA:-main}/scripts/spi-e2e-setup.sh | VAULT_PODNAME='vault-0' VAULT_NAMESPACE='spi-vault' bash -s
@@ -220,9 +222,11 @@ if echo $APPS | grep -q spi; then
   fi
 fi
 
+
 # Configure Pipelines as Code and required credentials
 $ROOT/hack/build/setup-pac-integration.sh
 
+APPS=$(kubectl get apps -n openshift-gitops -o name)
 # trigger refresh of apps
 for APP in $APPS; do
   kubectl patch $APP -n openshift-gitops --type merge -p='{"metadata": {"annotations":{"argocd.argoproj.io/refresh": "hard"}}}' & 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-a188244/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 14:04:48 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 14:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 12:06:16 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 12:06:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Staging changes from 62939f0 to b75b854 on Thu Mar 16 11:48:22 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index fefdb5f..0af3960 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=638248765110c60c75c62c00031f1968de44d647
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+  newTag: 638248765110c60c75c62c00031f1968de44d647
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 915ebf8..21a36fc 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
\ No newline at end of file
+    value: 638248765110c60c75c62c00031f1968de44d647
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index d10bb3c..00dc422 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=638248765110c60c75c62c00031f1968de44d647 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 638248765110c60c75c62c00031f1968de44d647
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:638248765110c60c75c62c00031f1968de44d647
---
>           value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:d2c01c897abc3dafaf123ecd6a246bd029a5dccc
1098c1098
<             memory: 512Mi
---
>             memory: 256Mi
1101c1101
<             memory: 512Mi
---
>             memory: 256Mi
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 12:05:42 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 10:04:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 12:05:48 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 10:04:28 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Development changes from 62939f0 to b75b854 on Thu Mar 16 11:48:22 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index fefdb5f..0af3960 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=638248765110c60c75c62c00031f1968de44d647
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+  newTag: 638248765110c60c75c62c00031f1968de44d647
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 915ebf8..21a36fc 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
\ No newline at end of file
+    value: 638248765110c60c75c62c00031f1968de44d647
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index d10bb3c..00dc422 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=638248765110c60c75c62c00031f1968de44d647 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 638248765110c60c75c62c00031f1968de44d647
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:638248765110c60c75c62c00031f1968de44d647
---
>           value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:d2c01c897abc3dafaf123ecd6a246bd029a5dccc
1098c1098
<             memory: 512Mi
---
>             memory: 256Mi
1101c1101
<             memory: 512Mi
---
>             memory: 256Mi
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-b75b854/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 12:06:16 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 12:06:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 10:04:57 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 10:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Staging changes from f76378c to 62939f0 on Thu Mar 16 08:08:25 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d5e9abd..38f24cb 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,7 +18,6 @@ resources:
   - build-templates
   - shared-resources
   - internal-services
-  - monitoring-workload-prometheus
   - monitoring-workload-grafana
   - monitoring-workload-logging
   - external-secrets-operator
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 5f6d6cf..7283daa 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -19,12 +19,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: monitoring-workload-prometheus
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: monitoring-workload-grafana
 $patch: delete
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index 3d205fb..d4ec1f1 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -58,11 +58,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: sprayproxy
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: monitoring-workload-prometheus
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (64 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/staging/app-of-apps-staging.yaml /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/staging/app-of-apps-staging.yaml
750a751,802
>   name: monitoring-workload-prometheus
>   namespace: argocd-staging
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: staging
>             sourceRoot: components/monitoring/prometheus
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: monitoring-workload-prometheus-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: appstudio-workload-monitoring
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 15s
>           limit: 50
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata:
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 10:04:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:04:40 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 10:04:28 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:04:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Development changes from f76378c to 62939f0 on Thu Mar 16 08:08:25 2023 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index d5e9abd..38f24cb 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,7 +18,6 @@ resources:
   - build-templates
   - shared-resources
   - internal-services
-  - monitoring-workload-prometheus
   - monitoring-workload-grafana
   - monitoring-workload-logging
   - external-secrets-operator
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 5f6d6cf..7283daa 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -19,12 +19,6 @@ $patch: delete
 ---
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
-metadata:
-  name: monitoring-workload-prometheus
-$patch: delete
----
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
 metadata:
   name: monitoring-workload-grafana
 $patch: delete
diff --git a/argo-cd-apps/overlays/production/kustomization.yaml b/argo-cd-apps/overlays/production/kustomization.yaml
index 3d205fb..d4ec1f1 100644
--- a/argo-cd-apps/overlays/production/kustomization.yaml
+++ b/argo-cd-apps/overlays/production/kustomization.yaml
@@ -58,11 +58,6 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: sprayproxy
-  - path: production-overlay-patch.yaml
-    target:
-      kind: ApplicationSet
-      version: v1alpha1
-      name: monitoring-workload-prometheus
   - path: production-overlay-patch.yaml
     target:
       kind: ApplicationSet 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-62939f0/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 10:04:57 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 10:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 08:05:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Staging changes from 9984034 to f76378c on Thu Mar 16 07:12:24 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 0635339..f90de51 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 - ../openshift-gitops
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
+    newTag: d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index f584bd1..1ab58e4 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
+    newTag: d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index f584bd1..1ab58e4 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
+    newTag: d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/staging/components/gitops/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/staging/components/gitops/staging/stone-stg-m01/kustomize.out
1654c1654
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1757c1757
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1817c1817
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1868c1868
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/staging/components/gitops/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/staging/components/gitops/staging/stone-stg-rh01/kustomize.out
1654c1654
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1757c1757
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1817c1817
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1868c1868
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 08:04:40 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:05:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 08:04:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:05:24 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Development changes from 9984034 to f76378c on Thu Mar 16 07:12:24 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 0635339..f90de51 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 - ../openshift-gitops
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
+    newTag: d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index f584bd1..1ab58e4 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
+    newTag: d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index f584bd1..1ab58e4 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
+    newTag: d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/development/components/gitops/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/development/components/gitops/development/kustomize.out
1623c1623
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1717c1717
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
1799c1799
<         image: quay.io/redhat-appstudio/gitops-service:d70ebbef9fa2c89c6fca2bf8f95e389657fe9d8c
---
>         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f76378c/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 08:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 08:05:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:05:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 08:05:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Staging changes from 35c4c05 to 9984034 on Thu Mar 16 06:36:24 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index c1de13a..c395244 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/staging/components/build-service/staging/kustomize.out
649c649
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
655c655
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
661c661
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
667c667
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 08:05:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:05:59 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 08:05:24 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:06:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Development changes from 35c4c05 to 9984034 on Thu Mar 16 06:36:24 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index c1de13a..c395244 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/development/components/build-service/development/kustomize.out
649c649
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:539531f37755bb287b23f979532660ad442025fb
655c655
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:539531f37755bb287b23f979532660ad442025fb
661c661
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:539531f37755bb287b23f979532660ad442025fb
667c667
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:539531f37755bb287b23f979532660ad442025fb
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-9984034/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 08:05:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 08:05:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 08:06:19 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 08:06:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Staging changes from 74871cf to 35c4c05 on Thu Mar 16 06:21:30 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index f687484..fefdb5f 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+  newTag: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 0d1b1e0..915ebf8 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
\ No newline at end of file
+    value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 079cd61..d10bb3c 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:d2c01c897abc3dafaf123ecd6a246bd029a5dccc
---
>           value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 08:05:59 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 04:04:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 08:06:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 04:04:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Development changes from 74871cf to 35c4c05 on Thu Mar 16 06:21:30 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index f687484..fefdb5f 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+  newTag: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 0d1b1e0..915ebf8 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
\ No newline at end of file
+    value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 079cd61..d10bb3c 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=d2c01c897abc3dafaf123ecd6a246bd029a5dccc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: d2c01c897abc3dafaf123ecd6a246bd029a5dccc
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:d2c01c897abc3dafaf123ecd6a246bd029a5dccc
---
>           value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-35c4c05/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 08:06:19 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 08:06:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 04:04:57 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 04:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Staging changes from ccb4876 to 74871cf on Thu Mar 16 03:44:18 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 3fb22ac..0635339 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
 - ../openshift-gitops
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index a0b895d..f584bd1 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index a0b895d..f584bd1 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/staging/components/gitops/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/gitops/staging/stone-stg-m01/kustomize.out
1654c1654
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1757c1757
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1817c1817
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1868c1868
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/staging/components/gitops/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/gitops/staging/stone-stg-rh01/kustomize.out
1654c1654
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1757c1757
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1817c1817
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1868c1868
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/16 04:04:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:04:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/16 04:04:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:04:12 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Development changes from ccb4876 to 74871cf on Thu Mar 16 03:44:18 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 3fb22ac..0635339 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -2,10 +2,10 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/appstudio-staging-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
 - ../openshift-gitops
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
diff --git a/components/gitops/production/base/kustomization.yaml b/components/gitops/production/base/kustomization.yaml
index a0b895d..f584bd1 100644
--- a/components/gitops/production/base/kustomization.yaml
+++ b/components/gitops/production/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/gitops/staging/base/kustomization.yaml b/components/gitops/staging/base/kustomization.yaml
index a0b895d..f584bd1 100644
--- a/components/gitops/staging/base/kustomization.yaml
+++ b/components/gitops/staging/base/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 resources:
-- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+- https://github.com/redhat-appstudio/managed-gitops/manifests/overlays/stonesoup-member-cluster?ref=09799332c77cc1d53ff905fc9c444291d8807a6d
 - ../../openshift-gitops
 - ../../base/external-secrets
 
 images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
-    newTag: 514ecbefc26d7b623334c7b35fa9b2f2950b55d3
+    newTag: 09799332c77cc1d53ff905fc9c444291d8807a6d
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/development/components/gitops/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/development/components/gitops/development/kustomize.out
1623c1623
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1717c1717
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
1799c1799
<         image: quay.io/redhat-appstudio/gitops-service:09799332c77cc1d53ff905fc9c444291d8807a6d
---
>         image: quay.io/redhat-appstudio/gitops-service:514ecbefc26d7b623334c7b35fa9b2f2950b55d3
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-74871cf/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/16 04:04:57 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/16 04:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:04:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 20:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Staging changes from 88ed7eb to ccb4876 on Wed Mar 15 19:59:26 2023 </h3>  
 
<details> 
<summary>Git Diff (99 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f45a283..86d2a25 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -40,19 +40,3 @@ spec:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
       policy:
         - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
----
-# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
-# in the enterprise-contract-service namespace.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: public-ecp
-  namespace: enterprise-contract-service
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: enterprisecontractpolicy-viewer-role
-subjects:
-  - apiGroup: rbac.authorization.k8s.io
-    kind: Group
-    name: system:authenticated
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 727ae14..8c9b61c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -9,6 +9,8 @@ resources:
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_viewer_role.yaml
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_editor_role.yaml
   - ecp.yaml
+  - role.yaml
+  - rolebinding.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator:
diff --git a/components/enterprise-contract/role.yaml b/components/enterprise-contract/role.yaml
new file mode 100644
index 0000000..55d8384
--- /dev/null
+++ b/components/enterprise-contract/role.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: enterprisecontract-configmap-viewer-role
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - ec-defaults
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch
\ No newline at end of file
diff --git a/components/enterprise-contract/rolebinding.yaml b/components/enterprise-contract/rolebinding.yaml
new file mode 100644
index 0000000..90bdf09
--- /dev/null
+++ b/components/enterprise-contract/rolebinding.yaml
@@ -0,0 +1,30 @@
+---
+# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
+# in the enterprise-contract-service namespace.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ecp
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontractpolicy-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ec-cm
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontract-configmap-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (45 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/enterprise-contract/kustomize.out
149,166d148
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: enterprisecontract-configmap-viewer-role
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - ec-defaults
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
210,223d191
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: public-ec-cm
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: enterprisecontract-configmap-viewer-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 20:04:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 20:04:12 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Development changes from 88ed7eb to ccb4876 on Wed Mar 15 19:59:26 2023 </h3>  
 
<details> 
<summary>Git Diff (99 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index f45a283..86d2a25 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -40,19 +40,3 @@ spec:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:latest@sha256:948877d0564c922d60dac24b4fce82ee2da74fa9bd1a4cdc6900b77dfd93af75
       policy:
         - oci::https://quay.io/hacbs-contract/ec-release-policy:latest@sha256:a41da88e27bab10dec2e61b1844a4053e73ea4a422fa2a4997a1a1366becd68d
----
-# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
-# in the enterprise-contract-service namespace.
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
-metadata:
-  name: public-ecp
-  namespace: enterprise-contract-service
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: enterprisecontractpolicy-viewer-role
-subjects:
-  - apiGroup: rbac.authorization.k8s.io
-    kind: Group
-    name: system:authenticated
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 727ae14..8c9b61c 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -9,6 +9,8 @@ resources:
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_viewer_role.yaml
   - https://raw.githubusercontent.com/hacbs-contract/enterprise-contract-controller/1e971bd09081c287854ce44432b3a6de0ca7785f/config/rbac/enterprisecontractpolicy_editor_role.yaml
   - ecp.yaml
+  - role.yaml
+  - rolebinding.yaml
 generatorOptions:
   disableNameSuffixHash: true
 configMapGenerator:
diff --git a/components/enterprise-contract/role.yaml b/components/enterprise-contract/role.yaml
new file mode 100644
index 0000000..55d8384
--- /dev/null
+++ b/components/enterprise-contract/role.yaml
@@ -0,0 +1,18 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  labels:
+    rbac.authorization.k8s.io/aggregate-to-view: "true"
+  name: enterprisecontract-configmap-viewer-role
+rules:
+- apiGroups:
+  - ""
+  resourceNames:
+  - ec-defaults
+  resources:
+  - configmaps
+  verbs:
+  - get
+  - list
+  - watch
\ No newline at end of file
diff --git a/components/enterprise-contract/rolebinding.yaml b/components/enterprise-contract/rolebinding.yaml
new file mode 100644
index 0000000..90bdf09
--- /dev/null
+++ b/components/enterprise-contract/rolebinding.yaml
@@ -0,0 +1,30 @@
+---
+# Allow any authenticated user to access to get/list/watch the EnterpriseContractPolicy resources
+# in the enterprise-contract-service namespace.
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ecp
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontractpolicy-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: RoleBinding
+metadata:
+  name: public-ec-cm
+  namespace: enterprise-contract-service
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: enterprisecontract-configmap-viewer-role
+subjects:
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: system:authenticated
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/development/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/development/components/enterprise-contract/kustomize.out
149,166d148
<     rbac.authorization.k8s.io/aggregate-to-view: "true"
<   name: enterprisecontract-configmap-viewer-role
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - ec-defaults
<   resources:
<   - configmaps
<   verbs:
<   - get
<   - list
<   - watch
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   labels:
210,223d191
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: RoleBinding
< metadata:
<   name: public-ec-cm
<   namespace: enterprise-contract-service
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: enterprisecontract-configmap-viewer-role
< subjects:
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: system:authenticated
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ccb4876/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 20:04:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 20:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 20:05:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 20:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Staging changes from 6710c97 to 88ed7eb on Wed Mar 15 18:22:17 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 007fdfe..8a61a3e 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 92ef751..68c9506 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 43c1e5a..c02d244 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 20:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 18:04:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 20:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 18:04:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Development changes from 6710c97 to 88ed7eb on Wed Mar 15 18:22:17 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 007fdfe..8a61a3e 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 92ef751..68c9506 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 43c1e5a..c02d244 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
+    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-88ed7eb/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 20:05:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 20:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 18:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 18:05:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Staging changes from 3f39a2e to 6710c97 on Wed Mar 15 16:56:44 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index b25b9a0..007fdfe 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 4f08b70..92ef751 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 14c71d9..43c1e5a 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 18:04:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:04:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 18:04:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:04:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Development changes from 3f39a2e to 6710c97 on Wed Mar 15 16:56:44 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index b25b9a0..007fdfe 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 4f08b70..92ef751 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 14c71d9..43c1e5a 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=22804290ba761746e8381f6cd443cc69fd0618d5
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 22804290ba761746e8381f6cd443cc69fd0618d5
+    newTag: f8e162f677dbbeab46885c5c7878e9d7c71b739b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6710c97/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 18:05:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 18:05:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 16:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Staging changes from 2c591c8 to 3f39a2e on Wed Mar 15 14:43:07 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 7c9d124..52c580f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/default?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+  newTag: 2f611a7957b38825c9ae92d508f3f827e5d41905
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index c38918a..f11c177 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=2f611a7957b38825c9ae92d508f3f827e5d41905 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/build-service/staging/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:2f611a7957b38825c9ae92d508f3f827e5d41905
---
>         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 16:04:20 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:05:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 16:04:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:05:32 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Development changes from 2c591c8 to 3f39a2e on Wed Mar 15 14:43:07 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 7c9d124..52c580f 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/default?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+  newTag: 2f611a7957b38825c9ae92d508f3f827e5d41905
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index c38918a..f11c177 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=2f611a7957b38825c9ae92d508f3f827e5d41905 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/build-service/development/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:2f611a7957b38825c9ae92d508f3f827e5d41905
---
>         image: quay.io/redhat-appstudio/build-service:acf06c81f0bac0d5c41e54de7f0cc391f36cfee1
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3f39a2e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 16:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 16:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 16:06:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 16:06:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Staging changes from 5d6914e to 2c591c8 on Wed Mar 15 14:41:15 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 1082ac3..f687484 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
+  newTag: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index bf60d49..0d1b1e0 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
+    value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index c0a7d24..079cd61 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
---
>           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 16:05:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:04:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 16:05:32 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:04:22 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Development changes from 5d6914e to 2c591c8 on Wed Mar 15 14:41:15 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 1082ac3..f687484 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: cc70d4e85a5ec33256921f836e1fde8359eb04d4
+  newTag: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index bf60d49..0d1b1e0 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
\ No newline at end of file
+    value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index c0a7d24..079cd61 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=cc70d4e85a5ec33256921f836e1fde8359eb04d4
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=f18bc7ce720c4627aadca3ece6aa47fe48ef58b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:f18bc7ce720c4627aadca3ece6aa47fe48ef58b2
---
>           value: cc70d4e85a5ec33256921f836e1fde8359eb04d4
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:cc70d4e85a5ec33256921f836e1fde8359eb04d4
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-2c591c8/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 16:06:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 16:06:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:04:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 14:04:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Staging changes from fbc5f3b to 5d6914e on Wed Mar 15 13:07:01 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index 842ff17..ac0959a 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index 77fb71a..696345a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/default?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
+  newTag: 21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/15 14:04:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:05:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/15 14:04:22 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:05:15 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Development changes from fbc5f3b to 5d6914e on Wed Mar 15 13:07:01 2023 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/release-service/kustomization.yaml b/components/monitoring/grafana/base/release-service/kustomization.yaml
index 842ff17..ac0959a 100644
--- a/components/monitoring/grafana/base/release-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/release-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/monitoring/?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
diff --git a/components/release/kustomization.yaml b/components/release/kustomization.yaml
index 77fb71a..696345a 100644
--- a/components/release/kustomization.yaml
+++ b/components/release/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/release-service/config/default?ref=913a02c3595a2457680bb6221ae17753e04a08cd
+- https://github.com/redhat-appstudio/release-service/config/default?ref=21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -9,7 +9,7 @@ kind: Kustomization
 images:
 - name: quay.io/redhat-appstudio/release-service
   newName: quay.io/redhat-appstudio/release-service
-  newTag: 913a02c3595a2457680bb6221ae17753e04a08cd
+  newTag: 21edb2dadc4e6031568689ab46ff78ad3a55de8c
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5d6914e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-fbc5f3b/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/15 14:04:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/15 14:04:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/15 14:05:39 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/15 14:05:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>
