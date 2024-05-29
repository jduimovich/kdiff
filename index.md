# kustomize changes tracked by commits 
### This file generated at Wed May 29 16:10:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0ecc441e to 8f1e832e on Wed May 29 15:47:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index b8e4e926..2e77c0e0 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 59f6ccc2..ab49097a 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 59dfc02b..9cff683a 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ccfe62b8..a4faed9f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0ecc441e/production/components/has/production/kustomize.out.yaml
776c776
<         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33
---
>         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232 
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
<h3>1: Staging changes from 0ecc441e to 8f1e832e on Wed May 29 15:47:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index b8e4e926..2e77c0e0 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 59f6ccc2..ab49097a 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 59dfc02b..9cff683a 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ccfe62b8..a4faed9f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0ecc441e/staging/components/has/staging/kustomize.out.yaml
803c803
<         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33
---
>         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232 
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
<h3>1: Development changes from 0ecc441e to 8f1e832e on Wed May 29 15:47:24 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index b8e4e926..2e77c0e0 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 59f6ccc2..ab49097a 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=926cef46ee856d690294ed02009149563d493c33
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
+    newTag: 926cef46ee856d690294ed02009149563d493c33
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 59dfc02b..9cff683a 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=926cef46ee856d690294ed02009149563d493c33
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index ccfe62b8..a4faed9f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=926cef46ee856d690294ed02009149563d493c33
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-0ecc441e/development/components/has/development/kustomize.out.yaml
735c735
<         image: quay.io/redhat-appstudio/application-service:926cef46ee856d690294ed02009149563d493c33
---
>         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232 
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
<h3>2: Production changes from 2fd14ecc to 0ecc441e on Wed May 29 15:47:17 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 568ed5b3..c0919ce4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -7,7 +7,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
-  enabled: true
+  enabled: false
   capacityThresholds:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
@@ -23,7 +23,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 4292e6af..961c0d80 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -10,7 +10,8 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
+      domains: 'redhat.com'
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
<h3>2: Staging changes from 2fd14ecc to 0ecc441e on Wed May 29 15:47:17 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 568ed5b3..c0919ce4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -7,7 +7,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
-  enabled: true
+  enabled: false
   capacityThresholds:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
@@ -23,7 +23,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 4292e6af..961c0d80 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -10,7 +10,8 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
+      domains: 'redhat.com'
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
<h3>2: Development changes from 2fd14ecc to 0ecc441e on Wed May 29 15:47:17 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
index 568ed5b3..c0919ce4 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/space-provisioner-configs.yaml
@@ -7,7 +7,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-m01.84db.p1.openshiftapps.com
-  enabled: true
+  enabled: false
   capacityThresholds:
     maxNumberOfSpaces: 1000
     maxMemoryUtilizationPercent: 90
@@ -23,7 +23,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   toolchainCluster: member-stone-prd-rh01.pg1f.p1.openshiftapps.com
-  enabled: false
+  enabled: true
   capacityThresholds:
     maxMemoryUtilizationPercent: 90
   placementRoles:
diff --git a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
index 4292e6af..961c0d80 100644
--- a/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
+++ b/components/sandbox/toolchain-host-operator/production/stone-prd-host1/toolchainconfig.yaml
@@ -10,7 +10,8 @@ spec:
     tiers:
       defaultSpaceTier: 'appstudio'
     automaticApproval:
-      enabled: false
+      enabled: true
+      domains: 'redhat.com'
     spaceConfig:
       spaceRequestEnabled: true
       spaceBindingRequestEnabled: true 
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
<h3>3: Production changes from 90731401 to 2fd14ecc on Wed May 29 14:33:00 2024 </h3>  
 
<details> 
<summary>Git Diff (88 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index d7d0fb4e..30ca246f 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -43,3 +43,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-prod-ibm-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-ibm-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-prod-ibm-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-prod-ibm-api-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-ibm-api-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-prod-ibm-api-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 6a9d9faf..4b4227e4 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -57,3 +57,29 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-1x4"
+  dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.private-ip: "true"
+
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2" 
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
<h3>3: Staging changes from 90731401 to 2fd14ecc on Wed May 29 14:33:00 2024 </h3>  
 
<details> 
<summary>Git Diff (88 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index d7d0fb4e..30ca246f 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -43,3 +43,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-prod-ibm-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-ibm-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-prod-ibm-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-prod-ibm-api-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-ibm-api-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-prod-ibm-api-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 6a9d9faf..4b4227e4 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -57,3 +57,29 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-1x4"
+  dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.private-ip: "true"
+
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2" 
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
<h3>3: Development changes from 90731401 to 2fd14ecc on Wed May 29 14:33:00 2024 </h3>  
 
<details> 
<summary>Git Diff (88 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index d7d0fb4e..30ca246f 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -43,3 +43,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-prod-ibm-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-ibm-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-prod-ibm-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-prod-ibm-api-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-ibm-api-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-prod-ibm-api-key
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 6a9d9faf..4b4227e4 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -57,3 +57,29 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-prod-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-1x4"
+  dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.private-ip: "true"
+
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2" 
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
<h3>4: Production changes from f549590b to 90731401 on Wed May 29 13:43:31 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c57d8085..a765b82c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
+  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 7c89c8a9..9b3e82e1 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
+  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 configMapGenerator:
 - name: console-url 
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
<h3>4: Staging changes from f549590b to 90731401 on Wed May 29 13:43:31 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c57d8085..a765b82c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
+  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 7c89c8a9..9b3e82e1 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
+  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-f549590b/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
800a801
>   - delete
1456c1457
<         image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088
---
>         image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6
1547c1548
<             image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088
---
>             image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6 
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
<h3>4: Development changes from f549590b to 90731401 on Wed May 29 13:43:31 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c57d8085..a765b82c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
+  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 7c89c8a9..9b3e82e1 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/default?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
+  newTag: dc70af6ff2ea96fed344a64020bbecc2a808c088
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-f549590b/development/components/integration/development/kustomize.out.yaml
800a801
>   - delete
1454c1455
<         image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088
---
>         image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6
1548c1549
<             image: quay.io/redhat-appstudio/integration-service:dc70af6ff2ea96fed344a64020bbecc2a808c088
---
>             image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6 
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
