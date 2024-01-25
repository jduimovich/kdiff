# kustomize changes tracked by commits 
### This file generated at Thu Jan 25 00:08:12 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 81ecb471 to 105b02a9 on Wed Jan 24 23:05:32 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index 4d67684a..a68b1c45 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index cc94de3b..5b9cf788 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
 patches:
   - path: auto-assign-role-patch.yaml
     target:
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3 
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
<h3>1: Staging changes from 81ecb471 to 105b02a9 on Wed Jan 24 23:05:32 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index 4d67684a..a68b1c45 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index cc94de3b..5b9cf788 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
 patches:
   - path: auto-assign-role-patch.yaml
     target:
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3 
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
<h3>1: Development changes from 81ecb471 to 105b02a9 on Wed Jan 24 23:05:32 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index 4d67684a..a68b1c45 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index cc94de3b..5b9cf788 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
 patches:
   - path: auto-assign-role-patch.yaml
     target:
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3 
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
<h3>2: Production changes from b5699b23 to 81ecb471 on Wed Jan 24 20:45:16 2024 </h3>  
 
<details> 
<summary>Git Diff (202 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index a83c38fd..ff2bf202 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4"
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index edd6042d..99848b7b 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,49 +66,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-ppc64le-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-ppc64le-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-s390x-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index ab5ac9b6..4f3f4e11 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,38 +30,15 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  # host.ppc1.address: "150.240.147.198"
-  # host.ppc1.platform: "linux/ppc64le"
-  # host.ppc1.user: "root"
-  # host.ppc1.secret: "ibm-ssh-key"
-  # host.ppc1.concurrency: "4"
-
-  # host.ibmz1.address: "169.63.177.141"
-  # host.ibmz1.platform: "linux/s390x"
-  # host.ibmz1.user: "root"
-  # host.ibmz1.secret: "ibm-ssh-key"
-  # host.ibmz1.concurrency: "4"
-
-  host.power-rhtap-prod-1.address: "52.117.38.109"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
-
-  host.power-rhtap-prod-2.address: "52.117.38.109"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.ppc1.address: "150.240.147.198"
+  host.ppc1.platform: "linux/ppc64le"
+  host.ppc1.user: "root"
+  host.ppc1.secret: "ibm-ssh-key"
+  host.ppc1.concurrency: "4"
+
+  host.ibmz1.address: "169.63.177.141"
+  host.ibmz1.platform: "linux/s390x"
+  host.ibmz1.user: "root"
+  host.ibmz1.secret: "ibm-ssh-key"
+
+  host.ibmz1.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-b5699b23/production/components/multi-platform-controller/production/kustomize.out.yaml
155c155
<   host.power-rhtap-prod-1.address: 52.117.38.109
---
>   host.power-rhtap-prod-1.address: 150.240.147.196
158c158
<   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
---
>   host.power-rhtap-prod-1.secret: ibm-ssh-key
160c160
<   host.power-rhtap-prod-2.address: 52.117.38.109
---
>   host.power-rhtap-prod-2.address: 150.240.147.194
163c163
<   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
---
>   host.power-rhtap-prod-2.secret: ibm-ssh-key
165c165
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
---
>   host.sysz-rhtap-prod-1.address: 169.59.160.96
168c168
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
---
>   host.sysz-rhtap-prod-1.secret: ibm-ssh-key
170c170
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
---
>   host.sysz-rhtap-prod-2.address: 169.63.178.13
173c173
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
---
>   host.sysz-rhtap-prod-2.secret: ibm-ssh-key
339,384d338
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-ppc64le-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-ppc64le-ssh-key
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-s390x-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-s390x-ssh-key 
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
<h3>2: Staging changes from b5699b23 to 81ecb471 on Wed Jan 24 20:45:16 2024 </h3>  
 
<details> 
<summary>Git Diff (202 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index a83c38fd..ff2bf202 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4"
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index edd6042d..99848b7b 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,49 +66,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-ppc64le-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-ppc64le-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-s390x-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index ab5ac9b6..4f3f4e11 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,38 +30,15 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  # host.ppc1.address: "150.240.147.198"
-  # host.ppc1.platform: "linux/ppc64le"
-  # host.ppc1.user: "root"
-  # host.ppc1.secret: "ibm-ssh-key"
-  # host.ppc1.concurrency: "4"
-
-  # host.ibmz1.address: "169.63.177.141"
-  # host.ibmz1.platform: "linux/s390x"
-  # host.ibmz1.user: "root"
-  # host.ibmz1.secret: "ibm-ssh-key"
-  # host.ibmz1.concurrency: "4"
-
-  host.power-rhtap-prod-1.address: "52.117.38.109"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
-
-  host.power-rhtap-prod-2.address: "52.117.38.109"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.ppc1.address: "150.240.147.198"
+  host.ppc1.platform: "linux/ppc64le"
+  host.ppc1.user: "root"
+  host.ppc1.secret: "ibm-ssh-key"
+  host.ppc1.concurrency: "4"
+
+  host.ibmz1.address: "169.63.177.141"
+  host.ibmz1.platform: "linux/s390x"
+  host.ibmz1.user: "root"
+  host.ibmz1.secret: "ibm-ssh-key"
+
+  host.ibmz1.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-b5699b23/staging/components/multi-platform-controller/staging/kustomize.out.yaml
155,164c155,174
<   host.ibmz1.address: 169.63.177.141
<   host.ibmz1.concurrency: "4"
<   host.ibmz1.platform: linux/s390x
<   host.ibmz1.secret: ibm-ssh-key
<   host.ibmz1.user: root
<   host.ppc1.address: 150.240.147.198
<   host.ppc1.concurrency: "4"
<   host.ppc1.platform: linux/ppc64le
<   host.ppc1.secret: ibm-ssh-key
<   host.ppc1.user: root
---
>   host.power-rhtap-prod-1.address: 52.117.38.109
>   host.power-rhtap-prod-1.concurrency: "4"
>   host.power-rhtap-prod-1.platform: linux/ppc64le
>   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-1.user: root
>   host.power-rhtap-prod-2.address: 52.117.38.109
>   host.power-rhtap-prod-2.concurrency: "4"
>   host.power-rhtap-prod-2.platform: linux/ppc64le
>   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-2.user: root
>   host.sysz-rhtap-prod-1.address: 169.63.184.30
>   host.sysz-rhtap-prod-1.concurrency: "4"
>   host.sysz-rhtap-prod-1.platform: linux/s390x
>   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-1.user: root
>   host.sysz-rhtap-prod-2.address: 169.59.164.141
>   host.sysz-rhtap-prod-2.concurrency: "4"
>   host.sysz-rhtap-prod-2.platform: linux/s390x
>   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-2.user: root
328a339,384
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: ibm-production-ppc64le-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: ibm-production-ppc64le-ssh-key
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: ibm-production-s390x-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: ibm-production-s390x-ssh-key 
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
<h3>2: Development changes from b5699b23 to 81ecb471 on Wed Jan 24 20:45:16 2024 </h3>  
 
<details> 
<summary>Git Diff (202 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index a83c38fd..ff2bf202 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4"
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index edd6042d..99848b7b 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,49 +66,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-ppc64le-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-ppc64le-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-s390x-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index ab5ac9b6..4f3f4e11 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,38 +30,15 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  # host.ppc1.address: "150.240.147.198"
-  # host.ppc1.platform: "linux/ppc64le"
-  # host.ppc1.user: "root"
-  # host.ppc1.secret: "ibm-ssh-key"
-  # host.ppc1.concurrency: "4"
-
-  # host.ibmz1.address: "169.63.177.141"
-  # host.ibmz1.platform: "linux/s390x"
-  # host.ibmz1.user: "root"
-  # host.ibmz1.secret: "ibm-ssh-key"
-  # host.ibmz1.concurrency: "4"
-
-  host.power-rhtap-prod-1.address: "52.117.38.109"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
-
-  host.power-rhtap-prod-2.address: "52.117.38.109"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.ppc1.address: "150.240.147.198"
+  host.ppc1.platform: "linux/ppc64le"
+  host.ppc1.user: "root"
+  host.ppc1.secret: "ibm-ssh-key"
+  host.ppc1.concurrency: "4"
+
+  host.ibmz1.address: "169.63.177.141"
+  host.ibmz1.platform: "linux/s390x"
+  host.ibmz1.user: "root"
+  host.ibmz1.secret: "ibm-ssh-key"
+
+  host.ibmz1.concurrency: "4" 
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
<h3>3: Production changes from 2efbf2af to b5699b23 on Wed Jan 24 15:45:20 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
index fb9df893..3a9a4e25 100644
--- a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
index 66022429..808ef3a0 100644
--- a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 2b4719d9..08631788 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
index 4d2b08dc..49421e03 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
index a95f663d..77619623 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a92e4ddc..24be2b08 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
index 563bdd9d..695195f3 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
index bd66aed8..2692d9ca 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-s3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-2efbf2af/production/components/gitops/production/stone-prd-m01/kustomize.out.yaml
3372c3372
<       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
./commit-2efbf2af/production/components/gitops/production/stone-prd-rh01/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-gitopsvc-rds
./commit-2efbf2af/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1713c1713
<       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
1734c1734
<       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
./commit-2efbf2af/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1713c1713
<       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-rds
1734c1734
<       key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-s3 
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
<h3>3: Staging changes from 2efbf2af to b5699b23 on Wed Jan 24 15:45:20 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
index fb9df893..3a9a4e25 100644
--- a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
index 66022429..808ef3a0 100644
--- a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 2b4719d9..08631788 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
index 4d2b08dc..49421e03 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
index a95f663d..77619623 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a92e4ddc..24be2b08 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
index 563bdd9d..695195f3 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
index bd66aed8..2692d9ca 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-s3 
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
<h3>3: Development changes from 2efbf2af to b5699b23 on Wed Jan 24 15:45:20 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
index fb9df893..3a9a4e25 100644
--- a/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prd-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-gitopsvc-rds
diff --git a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
index 66022429..808ef3a0 100644
--- a/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prd-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 2b4719d9..08631788 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
index 4d2b08dc..49421e03 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
index a95f663d..77619623 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/multi-tenant-prod-plnsvc-s3
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a92e4ddc..24be2b08 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
index 563bdd9d..695195f3 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
index bd66aed8..2692d9ca 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-prod-01/stonesoup-infra-production/redhat-prod-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep07ue1/stonesoup-infra-production/redhat-prod-plnsvc-s3 
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
<h3>4: Production changes from b0f8378c to 2efbf2af on Wed Jan 24 09:47:06 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/dora-metrics/base/rbac/dora-metrics.yaml b/components/dora-metrics/base/rbac/dora-metrics.yaml
index 20bfae6d..b484eac7 100644
--- a/components/dora-metrics/base/rbac/dora-metrics.yaml
+++ b/components/dora-metrics/base/rbac/dora-metrics.yaml
@@ -20,21 +20,9 @@ metadata:
   name: dora-metrics-maintainers
   namespace: dora-metrics
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: rhopp
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: flacatus
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jkopriva
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sawood14012
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: albarbaro
+    name: konflux-qe-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-b0f8378c/production/components/dora-metrics/production/kustomize.out.yaml
69,70c69,82
<   kind: Group
<   name: konflux-qe-admins
---
>   kind: User
>   name: rhopp
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: flacatus
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jkopriva
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sawood14012
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: albarbaro 
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
<h3>4: Staging changes from b0f8378c to 2efbf2af on Wed Jan 24 09:47:06 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/dora-metrics/base/rbac/dora-metrics.yaml b/components/dora-metrics/base/rbac/dora-metrics.yaml
index 20bfae6d..b484eac7 100644
--- a/components/dora-metrics/base/rbac/dora-metrics.yaml
+++ b/components/dora-metrics/base/rbac/dora-metrics.yaml
@@ -20,21 +20,9 @@ metadata:
   name: dora-metrics-maintainers
   namespace: dora-metrics
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: rhopp
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: flacatus
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jkopriva
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sawood14012
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: albarbaro
+    name: konflux-qe-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-b0f8378c/staging/components/dora-metrics/staging/kustomize.out.yaml
69,70c69,82
<   kind: Group
<   name: konflux-qe-admins
---
>   kind: User
>   name: rhopp
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: flacatus
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jkopriva
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sawood14012
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: albarbaro 
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
<h3>4: Development changes from b0f8378c to 2efbf2af on Wed Jan 24 09:47:06 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/dora-metrics/base/rbac/dora-metrics.yaml b/components/dora-metrics/base/rbac/dora-metrics.yaml
index 20bfae6d..b484eac7 100644
--- a/components/dora-metrics/base/rbac/dora-metrics.yaml
+++ b/components/dora-metrics/base/rbac/dora-metrics.yaml
@@ -20,21 +20,9 @@ metadata:
   name: dora-metrics-maintainers
   namespace: dora-metrics
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: rhopp
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: flacatus
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jkopriva
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sawood14012
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: albarbaro
+    name: konflux-qe-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-b0f8378c/development/components/dora-metrics/development/kustomize.out.yaml
69,70c69,82
<   kind: Group
<   name: konflux-qe-admins
---
>   kind: User
>   name: rhopp
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: flacatus
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jkopriva
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sawood14012
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: albarbaro 
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
