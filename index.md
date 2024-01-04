# kustomize changes tracked by commits 
### This file generated at Thu Jan  4 20:04:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 310c3cd7 to 4857a6d9 on Thu Jan 4 18:38:17 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..edd6042d 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
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
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..ab5ac9b6 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,15 +30,38 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.ppc1.address: "150.240.147.198"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "ibm-ssh-key"
-  host.ppc1.concurrency: "4"
-
-  host.ibmz1.address: "169.63.177.141"
-  host.ibmz1.platform: "linux/s390x"
-  host.ibmz1.user: "root"
-  host.ibmz1.secret: "ibm-ssh-key"
-
-  host.ibmz1.concurrency: "4"
+  # host.ppc1.address: "150.240.147.198"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
+
+  # host.ibmz1.address: "169.63.177.141"
+  # host.ibmz1.platform: "linux/s390x"
+  # host.ibmz1.user: "root"
+  # host.ibmz1.secret: "ibm-ssh-key"
+  # host.ibmz1.concurrency: "4"
+
+  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
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
<h3>1: Staging changes from 310c3cd7 to 4857a6d9 on Thu Jan 4 18:38:17 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..edd6042d 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
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
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..ab5ac9b6 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,15 +30,38 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.ppc1.address: "150.240.147.198"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "ibm-ssh-key"
-  host.ppc1.concurrency: "4"
-
-  host.ibmz1.address: "169.63.177.141"
-  host.ibmz1.platform: "linux/s390x"
-  host.ibmz1.user: "root"
-  host.ibmz1.secret: "ibm-ssh-key"
-
-  host.ibmz1.concurrency: "4"
+  # host.ppc1.address: "150.240.147.198"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
+
+  # host.ibmz1.address: "169.63.177.141"
+  # host.ibmz1.platform: "linux/s390x"
+  # host.ibmz1.user: "root"
+  # host.ibmz1.secret: "ibm-ssh-key"
+  # host.ibmz1.concurrency: "4"
+
+  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-310c3cd7/staging/components/multi-platform-controller/staging/kustomize.out.yaml
155,174c155,164
<   host.power-rhtap-prod-1.address: 52.117.38.109
<   host.power-rhtap-prod-1.concurrency: "4"
<   host.power-rhtap-prod-1.platform: linux/ppc64le
<   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-1.user: root
<   host.power-rhtap-prod-2.address: 52.117.38.109
<   host.power-rhtap-prod-2.concurrency: "4"
<   host.power-rhtap-prod-2.platform: linux/ppc64le
<   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
<   host.power-rhtap-prod-2.user: root
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
<   host.sysz-rhtap-prod-1.concurrency: "4"
<   host.sysz-rhtap-prod-1.platform: linux/s390x
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-1.user: root
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
<   host.sysz-rhtap-prod-2.concurrency: "4"
<   host.sysz-rhtap-prod-2.platform: linux/s390x
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-2.user: root
---
>   host.ibmz1.address: 169.63.177.141
>   host.ibmz1.concurrency: "4"
>   host.ibmz1.platform: linux/s390x
>   host.ibmz1.secret: ibm-ssh-key
>   host.ibmz1.user: root
>   host.ppc1.address: 150.240.147.198
>   host.ppc1.concurrency: "4"
>   host.ppc1.platform: linux/ppc64le
>   host.ppc1.secret: ibm-ssh-key
>   host.ppc1.user: root
339,384d328
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 310c3cd7 to 4857a6d9 on Thu Jan 4 18:38:17 2024 </h3>  
 
<details> 
<summary>Git Diff (109 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index 99848b7b..edd6042d 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
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
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 4f3f4e11..ab5ac9b6 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,15 +30,38 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.ppc1.address: "150.240.147.198"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "ibm-ssh-key"
-  host.ppc1.concurrency: "4"
-
-  host.ibmz1.address: "169.63.177.141"
-  host.ibmz1.platform: "linux/s390x"
-  host.ibmz1.user: "root"
-  host.ibmz1.secret: "ibm-ssh-key"
-
-  host.ibmz1.concurrency: "4"
+  # host.ppc1.address: "150.240.147.198"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
+
+  # host.ibmz1.address: "169.63.177.141"
+  # host.ibmz1.platform: "linux/s390x"
+  # host.ibmz1.user: "root"
+  # host.ibmz1.secret: "ibm-ssh-key"
+  # host.ibmz1.concurrency: "4"
+
+  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
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
<h3>2: Production changes from 81dc14fd to 310c3cd7 on Thu Jan 4 17:04:48 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index e8a2f51a..7f7819af 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 109395e0a5a667cd159ae822b57d5631fc21ca38
+    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 1078e5b6..9d264e8f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 109395e0a5a667cd159ae822b57d5631fc21ca38
+    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 7523ba45..ed1dfdef 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f843d957..6665130a 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81dc14fd/production/components/has/production/kustomize.out.yaml
848c848
<         image: quay.io/redhat-appstudio/application-service:30821d6190b42bd54f59cf3a559b8829dc20126f
---
>         image: quay.io/redhat-appstudio/application-service:109395e0a5a667cd159ae822b57d5631fc21ca38 
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
<h3>2: Staging changes from 81dc14fd to 310c3cd7 on Thu Jan 4 17:04:48 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index e8a2f51a..7f7819af 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 109395e0a5a667cd159ae822b57d5631fc21ca38
+    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 1078e5b6..9d264e8f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 109395e0a5a667cd159ae822b57d5631fc21ca38
+    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 7523ba45..ed1dfdef 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f843d957..6665130a 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81dc14fd/staging/components/has/staging/kustomize.out.yaml
874c874
<         image: quay.io/redhat-appstudio/application-service:30821d6190b42bd54f59cf3a559b8829dc20126f
---
>         image: quay.io/redhat-appstudio/application-service:109395e0a5a667cd159ae822b57d5631fc21ca38 
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
<h3>2: Development changes from 81dc14fd to 310c3cd7 on Thu Jan 4 17:04:48 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index e8a2f51a..7f7819af 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 109395e0a5a667cd159ae822b57d5631fc21ca38
+    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 1078e5b6..9d264e8f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 109395e0a5a667cd159ae822b57d5631fc21ca38
+    newTag: 30821d6190b42bd54f59cf3a559b8829dc20126f
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 7523ba45..ed1dfdef 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f843d957..6665130a 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=109395e0a5a667cd159ae822b57d5631fc21ca38
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=30821d6190b42bd54f59cf3a559b8829dc20126f
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-81dc14fd/development/components/has/development/kustomize.out.yaml
807c807
<         image: quay.io/redhat-appstudio/application-service:30821d6190b42bd54f59cf3a559b8829dc20126f
---
>         image: quay.io/redhat-appstudio/application-service:109395e0a5a667cd159ae822b57d5631fc21ca38 
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
<h3>3: Production changes from 8d492f2c to 81dc14fd on Thu Jan 4 16:01:32 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index ce40d378..bbfdb1f2 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -48,5 +48,4 @@ jobs:
         shell: bash
         run: |
           echo "If this step fails, kube-linter found issues. Check the output of the scan step above."
-          echo "TODO: (RHTAPSRE-109) Failing the kube-linter is temporarily disabled. Uncomment the line below once all detected issues are resolved"
-          # [[ "${{ steps.kube-linter-action-scan.outcome }}" == "success" ]]
+          [[ "${{ steps.kube-linter-action-scan.outcome }}" == "success" ]] 
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
<h3>3: Staging changes from 8d492f2c to 81dc14fd on Thu Jan 4 16:01:32 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index ce40d378..bbfdb1f2 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -48,5 +48,4 @@ jobs:
         shell: bash
         run: |
           echo "If this step fails, kube-linter found issues. Check the output of the scan step above."
-          echo "TODO: (RHTAPSRE-109) Failing the kube-linter is temporarily disabled. Uncomment the line below once all detected issues are resolved"
-          # [[ "${{ steps.kube-linter-action-scan.outcome }}" == "success" ]]
+          [[ "${{ steps.kube-linter-action-scan.outcome }}" == "success" ]] 
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
<h3>3: Development changes from 8d492f2c to 81dc14fd on Thu Jan 4 16:01:32 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/.github/workflows/kube-linter.yaml b/.github/workflows/kube-linter.yaml
index ce40d378..bbfdb1f2 100644
--- a/.github/workflows/kube-linter.yaml
+++ b/.github/workflows/kube-linter.yaml
@@ -48,5 +48,4 @@ jobs:
         shell: bash
         run: |
           echo "If this step fails, kube-linter found issues. Check the output of the scan step above."
-          echo "TODO: (RHTAPSRE-109) Failing the kube-linter is temporarily disabled. Uncomment the line below once all detected issues are resolved"
-          # [[ "${{ steps.kube-linter-action-scan.outcome }}" == "success" ]]
+          [[ "${{ steps.kube-linter-action-scan.outcome }}" == "success" ]] 
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
<h3>4: Production changes from 0a8612aa to 8d492f2c on Thu Jan 4 15:30:12 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index ff2bf202..a83c38fd 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
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
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..feb47537 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.address: "150.240.147.196"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "150.240.147.194"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.address: "169.59.160.96"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.address: "169.63.178.13"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-0a8612aa/production/components/multi-platform-controller/production/kustomize.out.yaml
155c155
<   host.power-rhtap-prod-1.address: 150.240.147.196
---
>   host.power-rhtap-prod-1.address: 52.117.38.109
158c158
<   host.power-rhtap-prod-1.secret: ibm-ssh-key
---
>   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
160c160
<   host.power-rhtap-prod-2.address: 150.240.147.194
---
>   host.power-rhtap-prod-2.address: 52.117.38.109
163c163
<   host.power-rhtap-prod-2.secret: ibm-ssh-key
---
>   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
165c165
<   host.sysz-rhtap-prod-1.address: 169.59.160.96
---
>   host.sysz-rhtap-prod-1.address: 169.63.184.30
168c168
<   host.sysz-rhtap-prod-1.secret: ibm-ssh-key
---
>   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
170c170
<   host.sysz-rhtap-prod-2.address: 169.63.178.13
---
>   host.sysz-rhtap-prod-2.address: 169.59.164.141
173c173
<   host.sysz-rhtap-prod-2.secret: ibm-ssh-key
---
>   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
338a339,384
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 0a8612aa to 8d492f2c on Thu Jan 4 15:30:12 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index ff2bf202..a83c38fd 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
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
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..feb47537 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.address: "150.240.147.196"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "150.240.147.194"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.address: "169.59.160.96"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.address: "169.63.178.13"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4" 
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
<h3>4: Development changes from 0a8612aa to 8d492f2c on Thu Jan 4 15:30:12 2024 </h3>  
 
<details> 
<summary>Git Diff (93 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index ff2bf202..a83c38fd 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
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
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 01b88791..feb47537 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "52.117.38.109"
+  host.power-rhtap-prod-1.address: "150.240.147.196"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "52.117.38.109"
+  host.power-rhtap-prod-2.address: "150.240.147.194"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.address: "169.59.160.96"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.address: "169.63.178.13"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4" 
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
