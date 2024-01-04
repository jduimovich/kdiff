# kustomize changes tracked by commits 
### This file generated at Thu Jan  4 16:10:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 8d492f2c to 81dc14fd on Thu Jan 4 16:01:32 2024 </h3>  
 
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
<h3>1: Staging changes from 8d492f2c to 81dc14fd on Thu Jan 4 16:01:32 2024 </h3>  
 
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
<h3>1: Development changes from 8d492f2c to 81dc14fd on Thu Jan 4 16:01:32 2024 </h3>  
 
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
<h3>2: Production changes from 0a8612aa to 8d492f2c on Thu Jan 4 15:30:12 2024 </h3>  
 
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
<h3>2: Staging changes from 0a8612aa to 8d492f2c on Thu Jan 4 15:30:12 2024 </h3>  
 
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
<h3>2: Development changes from 0a8612aa to 8d492f2c on Thu Jan 4 15:30:12 2024 </h3>  
 
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

<div>
<h3>3: Production changes from 3b05fe8b to 0a8612aa on Thu Jan 4 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9ad508b7..15632af6 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5b071d72..f4fc60fa 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1483,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5ed8cbbf..8a34b782 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1483,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-3b05fe8b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1113,1114d1112
<     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
<       exposes metric for an OSP deployment
1487d1484
<         - -check_owner=false
./commit-3b05fe8b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1113,1114d1112
<     ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
<       exposes metric for an OSP deployment
1487d1484
<         - -check_owner=false 
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
<h3>3: Staging changes from 3b05fe8b to 0a8612aa on Thu Jan 4 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9ad508b7..15632af6 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5b071d72..f4fc60fa 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1483,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5ed8cbbf..8a34b782 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1483,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env: 
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
<h3>3: Development changes from 3b05fe8b to 0a8612aa on Thu Jan 4 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (65 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 9ad508b7..15632af6 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=edb17034e419d6c4a8de741fdcec036305bd6dfa
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 5b071d72..f4fc60fa 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1483,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5ed8cbbf..8a34b782 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1,4 +1,3 @@
----
 apiVersion: v1
 kind: Namespace
 metadata:
@@ -1111,6 +1110,8 @@ metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "0"
+    ignore-check.kube-linter.io/dangling-service: This service is not dangling, it
+      exposes metric for an OSP deployment
   labels:
     app: tekton-chains-controller
     app.kubernetes.io/component: metrics
@@ -1483,6 +1484,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env: 
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
<h3>4: Production changes from 28d3b2cd to 3b05fe8b on Thu Jan 4 14:11:31 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3a17cfac..dd027f1e 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b458b2ea..681618e5 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b5232641..3c93b45a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c341b318..bef2b031 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0b8fb185..0904e15f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e28df73d..584128a8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env: 
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

./commit-3b05fe8b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-3b05fe8b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 28d3b2cd to 3b05fe8b on Thu Jan 4 14:11:31 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3a17cfac..dd027f1e 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b458b2ea..681618e5 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b5232641..3c93b45a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c341b318..bef2b031 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0b8fb185..0904e15f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e28df73d..584128a8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-28d3b2cd/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1488c1488,1489
<         - -check_owner=false
---
>         - -check_owner
>         - "false"
./commit-28d3b2cd/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1488c1488,1489
<         - -check_owner=false
---
>         - -check_owner
>         - "false"
./commit-28d3b2cd/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1488c1488,1489
<         - -check_owner=false
---
>         - -check_owner
>         - "false" 
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
<h3>4: Development changes from 28d3b2cd to 3b05fe8b on Thu Jan 4 14:11:31 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3a17cfac..dd027f1e 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index b458b2ea..681618e5 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b5232641..3c93b45a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=1f149f4868a9d278dcc47bae214111f5f9bd7ff6
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3d4a42294c8f1ca46054f2a584a4f31f7e221617
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c341b318..bef2b031 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0b8fb185..0904e15f 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e28df73d..584128a8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1485,8 +1485,7 @@ spec:
         - tekton-results-api-service.tekton-results.svc.cluster.local:8080
         - -auth_mode
         - token
-        - -check_owner
-        - "false"
+        - -check_owner=false
         - -completed_run_grace_period
         - 10m
         env: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (6 lines)</summary>  

``` 
./commit-28d3b2cd/development/components/pipeline-service/development/kustomize.out.yaml
1557c1557,1558
<         - -check_owner=false
---
>         - -check_owner
>         - "false" 
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
