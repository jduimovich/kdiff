# kustomize changes tracked by commits 
### This file generated at Mon Jul  8 16:04:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 34a49183 to 120f1dbf on Mon Jul 8 13:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
deleted file mode 100644
index e0595592..00000000
--- a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
deleted file mode 100644
index 975e6d92..00000000
--- a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  }
-] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 34a49183 to 120f1dbf on Mon Jul 8 13:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
deleted file mode 100644
index e0595592..00000000
--- a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
deleted file mode 100644
index 975e6d92..00000000
--- a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  }
-] 
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
<h3>1: Development changes from 34a49183 to 120f1dbf on Mon Jul 8 13:26:45 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/spi/overlays/production/base/kustomization.yaml b/components/spi/overlays/production/base/kustomization.yaml
index 66da2c54..e517631d 100644
--- a/components/spi/overlays/production/base/kustomization.yaml
+++ b/components/spi/overlays/production/base/kustomization.yaml
@@ -3,8 +3,8 @@ kind: Kustomization
 resources:
   - ../../../base
   - ../../../base/external-secrets
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=34ae088dc064be78744886fff32e956cfd475591
-  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=34ae088dc064be78744886fff32e956cfd475591
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/overlays/openshift_aws?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
+  - https://github.com/konflux-ci/service-provider-integration-operator/config/monitoring/prometheus/base?ref=81e453a190e3d0a2c496e5cf3aeff380c4eccc45
   - spi-aws-credentials-external-secret.yaml
 
 namespace: spi-system
@@ -12,10 +12,7 @@ namespace: spi-system
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
-  - name: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 34ae088dc064be78744886fff32e956cfd475591
+    newTag: 81e453a190e3d0a2c496e5cf3aeff380c4eccc45
 
 patches:
   - target:
diff --git a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-m01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-m01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prd-rh01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
deleted file mode 100644
index ff333891..00000000
--- a/components/spi/overlays/production/stone-prd-rh01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prd-host1.wdlc.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p01/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
deleted file mode 100644
index e0595592..00000000
--- a/components/spi/overlays/production/stone-prod-p01/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p01.wcfb.p1.openshiftapps.com"
-  }
-]
diff --git a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
index 57e2e586..751adae1 100644
--- a/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/kustomization.yaml
@@ -5,10 +5,6 @@ resources:
   - ../base
 
 patches:
-  - target:
-      kind: ConfigMap
-      name: oauth-service-environment-config
-    path: oauth-service-config-patch.json
   - target:
       kind: ConfigMap
       name: shared-environment-config
diff --git a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json b/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
deleted file mode 100644
index 975e6d92..00000000
--- a/components/spi/overlays/production/stone-prod-p02/oauth-service-config-patch.json
+++ /dev/null
@@ -1,7 +0,0 @@
-[
-  {
-    "op": "add",
-    "path": "/data/API_SERVER",
-    "value": "https://api-toolchain-host-operator.apps.stone-prod-p02.hjvn.p1.openshiftapps.com"
-  }
-] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 6f1348fb to 34a49183 on Mon Jul 8 11:55:58 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index c9c5d281..5d2dc40d 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,9 @@
 approvers:
 - stuartwdouglas
 - arewm
+- ifireball
 
 reviewers:
 - stuartwdouglas
 - arewm
+- ifireball 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6f1348fb to 34a49183 on Mon Jul 8 11:55:58 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index c9c5d281..5d2dc40d 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,9 @@
 approvers:
 - stuartwdouglas
 - arewm
+- ifireball
 
 reviewers:
 - stuartwdouglas
 - arewm
+- ifireball 
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
<h3>2: Development changes from 6f1348fb to 34a49183 on Mon Jul 8 11:55:58 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index c9c5d281..5d2dc40d 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,9 @@
 approvers:
 - stuartwdouglas
 - arewm
+- ifireball
 
 reviewers:
 - stuartwdouglas
 - arewm
+- ifireball 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 5d76ea3a to 6f1348fb on Mon Jul 8 11:33:59 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 33feb46f..be131214 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+- https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  newTag: ec423153412b89820fb284a60f4de713730f4373
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index b160e0ab..1015bf58 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  - https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  newTag: ec423153412b89820fb284a60f4de713730f4373
 
 namespace: project-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 5d76ea3a to 6f1348fb on Mon Jul 8 11:33:59 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 33feb46f..be131214 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+- https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  newTag: ec423153412b89820fb284a60f4de713730f4373
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index b160e0ab..1015bf58 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  - https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  newTag: ec423153412b89820fb284a60f4de713730f4373
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5d76ea3a/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:ec423153412b89820fb284a60f4de713730f4373
---
>         image: quay.io/redhat-appstudio/project-controller:330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d 
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
<h3>3: Development changes from 5d76ea3a to 6f1348fb on Mon Jul 8 11:33:59 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 33feb46f..be131214 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+- https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  newTag: ec423153412b89820fb284a60f4de713730f4373
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index b160e0ab..1015bf58 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  - https://github.com/konflux-ci/project-controller/config/default?ref=ec423153412b89820fb284a60f4de713730f4373
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
+  newTag: ec423153412b89820fb284a60f4de713730f4373
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5d76ea3a/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:ec423153412b89820fb284a60f4de713730f4373
---
>         image: quay.io/redhat-appstudio/project-controller:330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d 
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
<h3>4: Production changes from af7cb2b3 to 5d76ea3a on Sat Jul 6 05:41:12 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a5125113..33feb46f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 13d463ff..b160e0ab 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from af7cb2b3 to 5d76ea3a on Sat Jul 6 05:41:12 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a5125113..33feb46f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 13d463ff..b160e0ab 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-af7cb2b3/staging/components/project-controller/staging/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
---
>         image: quay.io/redhat-appstudio/project-controller:644947ed8578cada1eaf876c876c4e752056b778 
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
<h3>4: Development changes from af7cb2b3 to 5d76ea3a on Sat Jul 6 05:41:12 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index a5125113..33feb46f 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+- https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 13d463ff..b160e0ab 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=644947ed8578cada1eaf876c876c4e752056b778
+  - https://github.com/konflux-ci/project-controller/config/default?ref=330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 images:
 - name: konflux-project-controller
   newName: quay.io/redhat-appstudio/project-controller
-  newTag: 644947ed8578cada1eaf876c876c4e752056b778
+  newTag: 330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-af7cb2b3/development/components/project-controller/development/kustomize.out.yaml
685c685
<         image: quay.io/redhat-appstudio/project-controller:330f0a165a2eac4d3c35cfe7dc6ce8f653b8664d
---
>         image: quay.io/redhat-appstudio/project-controller:644947ed8578cada1eaf876c876c4e752056b778 
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
