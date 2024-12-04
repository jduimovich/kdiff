# kustomize changes tracked by commits 
### This file generated at Wed Dec  4 16:10:34 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from d95cfe4a to 00af08ba on Wed Dec 4 15:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
index 7910dfe7..537f95eb 100644
--- a/components/crossplane-config/base/kustomization.yaml
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -3,4 +3,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - rbac.yaml
-  - secret.yaml
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
deleted file mode 100644
index c297f060..00000000
--- a/components/crossplane-config/base/secret.yaml
+++ /dev/null
@@ -1,9 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: crossplane-secret
-  namespace: crossplane-config
-  annotations:
-    kubernetes.io/service-account.name: crossplane-sa
-type: kubernetes.io/service-account-token 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from d95cfe4a to 00af08ba on Wed Dec 4 15:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
index 7910dfe7..537f95eb 100644
--- a/components/crossplane-config/base/kustomization.yaml
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -3,4 +3,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - rbac.yaml
-  - secret.yaml
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
deleted file mode 100644
index c297f060..00000000
--- a/components/crossplane-config/base/secret.yaml
+++ /dev/null
@@ -1,9 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: crossplane-secret
-  namespace: crossplane-config
-  annotations:
-    kubernetes.io/service-account.name: crossplane-sa
-type: kubernetes.io/service-account-token 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-d95cfe4a/staging/components/crossplane-config/staging/kustomize.out.yaml
53a54,62
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: crossplane-sa
>   name: crossplane-secret
>   namespace: crossplane-config
> type: kubernetes.io/service-account-token 
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
<h3>1: Development changes from d95cfe4a to 00af08ba on Wed Dec 4 15:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
index 7910dfe7..537f95eb 100644
--- a/components/crossplane-config/base/kustomization.yaml
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -3,4 +3,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - rbac.yaml
-  - secret.yaml
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
deleted file mode 100644
index c297f060..00000000
--- a/components/crossplane-config/base/secret.yaml
+++ /dev/null
@@ -1,9 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: crossplane-secret
-  namespace: crossplane-config
-  annotations:
-    kubernetes.io/service-account.name: crossplane-sa
-type: kubernetes.io/service-account-token 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-d95cfe4a/development/components/crossplane-config/development/kustomize.out.yaml
53a54,62
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: crossplane-sa
>   name: crossplane-secret
>   namespace: crossplane-config
> type: kubernetes.io/service-account-token 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 923a1971 to d95cfe4a on Wed Dec 4 15:45:52 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 9a7dc6c1..0e30a555 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -49,6 +49,7 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - release-service
         - ci-helper-app
         - mintmaker
         - konflux-otel
diff --git a/components/release/staging/external-secrets/release-monitor-secret.yaml b/components/release/staging/external-secrets/release-monitor-secret.yaml
new file mode 100644
index 00000000..5790336a
--- /dev/null
+++ b/components/release/staging/external-secrets/release-monitor-secret.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: release-monitor-secret
+  namespace: release-service
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/release/monitor
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: release-monitor-secret
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e8c0ef5..0e72f5a9 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
+  - external-secrets/release-monitor-secret.yaml
   - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-923a1971/production/components/cluster-secret-store/production/kustomize.out.yaml
32d31
<     - release-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 923a1971 to d95cfe4a on Wed Dec 4 15:45:52 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 9a7dc6c1..0e30a555 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -49,6 +49,7 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - release-service
         - ci-helper-app
         - mintmaker
         - konflux-otel
diff --git a/components/release/staging/external-secrets/release-monitor-secret.yaml b/components/release/staging/external-secrets/release-monitor-secret.yaml
new file mode 100644
index 00000000..5790336a
--- /dev/null
+++ b/components/release/staging/external-secrets/release-monitor-secret.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: release-monitor-secret
+  namespace: release-service
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/release/monitor
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: release-monitor-secret
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e8c0ef5..0e72f5a9 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
+  - external-secrets/release-monitor-secret.yaml
   - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-923a1971/staging/components/cluster-secret-store/staging/kustomize.out.yaml
32d31
<     - release-service
./commit-923a1971/staging/components/release/staging/kustomize.out.yaml
2325,2345d2324
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: release-monitor-secret
<   namespace: release-service
< spec:
<   dataFrom:
<   - extract:
<       key: staging/release/monitor
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: release-monitor-secret
< --- 
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
<h3>2: Development changes from 923a1971 to d95cfe4a on Wed Dec 4 15:45:52 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 9a7dc6c1..0e30a555 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -49,6 +49,7 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - release-service
         - ci-helper-app
         - mintmaker
         - konflux-otel
diff --git a/components/release/staging/external-secrets/release-monitor-secret.yaml b/components/release/staging/external-secrets/release-monitor-secret.yaml
new file mode 100644
index 00000000..5790336a
--- /dev/null
+++ b/components/release/staging/external-secrets/release-monitor-secret.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: release-monitor-secret
+  namespace: release-service
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/release/monitor
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: release-monitor-secret
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e8c0ef5..0e72f5a9 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
+  - external-secrets/release-monitor-secret.yaml
   - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 0f044fa2 to 923a1971 on Wed Dec 4 15:00:32 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index c4ad5f33..f0ac8d12 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -63,7 +63,7 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "80"
+  dynamic.linux-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +76,7 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "80"
+  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +89,7 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "80"
+  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +102,7 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "80"
+  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +115,7 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "80"
+  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +128,7 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "80"
+  dynamic.linux-m8xlarge-arm64.disk: "160"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 0f044fa2 to 923a1971 on Wed Dec 4 15:00:32 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index c4ad5f33..f0ac8d12 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -63,7 +63,7 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "80"
+  dynamic.linux-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +76,7 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "80"
+  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +89,7 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "80"
+  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +102,7 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "80"
+  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +115,7 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "80"
+  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +128,7 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "80"
+  dynamic.linux-m8xlarge-arm64.disk: "160"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
<h3>3: Development changes from 0f044fa2 to 923a1971 on Wed Dec 4 15:00:32 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index c4ad5f33..f0ac8d12 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -63,7 +63,7 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "80"
+  dynamic.linux-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +76,7 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "80"
+  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +89,7 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "80"
+  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +102,7 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "80"
+  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +115,7 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "80"
+  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +128,7 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "80"
+  dynamic.linux-m8xlarge-arm64.disk: "160"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 29a43a18 to 0f044fa2 on Wed Dec 4 13:17:45 2024 </h3>  
 
<details> 
<summary>Git Diff (205 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml b/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml
new file mode 100644
index 00000000..80f30a9d
--- /dev/null
+++ b/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: crossplane-config
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/crossplane-config
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: crossplane-config-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: crossplane-config
+        server: "{{server}}"
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml b/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml
new file mode 100644
index 00000000..029f380e
--- /dev/null
+++ b/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - crossplane-config.yaml
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
index 66de0310..abe51c0b 100644
--- a/argo-cd-apps/base/eaas/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - cluster-as-a-service
+  - crossplane-config
 components:
   - ../../k-components/deploy-to-eaas-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/components/crossplane-config/OWNERS b/components/crossplane-config/OWNERS
new file mode 100644
index 00000000..4a5b5cd7
--- /dev/null
+++ b/components/crossplane-config/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- amisstea
+- ifireball
+- avi-biton
+- yftacherzog
+- hmariset
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
new file mode 100644
index 00000000..7910dfe7
--- /dev/null
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - rbac.yaml
+  - secret.yaml
diff --git a/components/crossplane-config/base/rbac.yaml b/components/crossplane-config/base/rbac.yaml
new file mode 100644
index 00000000..a5fc739e
--- /dev/null
+++ b/components/crossplane-config/base/rbac.yaml
@@ -0,0 +1,56 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: crossplane-sa
+  namespace: crossplane-config
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: crossplane-clusterrole
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  - secrets
+  - serviceaccounts
+  verbs:
+  - "*"
+- apiGroups:
+  - authorization.openshift.io
+  - rbac.authorization.k8s.io
+  resources:
+  - roles
+  - rolebindings
+  verbs:
+  - "*"
+- apiGroups:
+  - networking.k8s.io
+  resources:
+  - networkpolicies
+  verbs:
+  - "*"
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - resourcequotas
+  - clusterresourcequotas
+  verbs:
+  - "*"
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: crossplane-crb
+subjects:
+- kind: ServiceAccount
+  name: crossplane-sa
+  namespace: crossplane-config
+roleRef:
+  kind: ClusterRole
+  name: crossplane-clusterrole
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
new file mode 100644
index 00000000..c297f060
--- /dev/null
+++ b/components/crossplane-config/base/secret.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: crossplane-secret
+  namespace: crossplane-config
+  annotations:
+    kubernetes.io/service-account.name: crossplane-sa
+type: kubernetes.io/service-account-token
diff --git a/components/crossplane-config/development/kustomization.yaml b/components/crossplane-config/development/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/development/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/crossplane-config/production/kustomization.yml b/components/crossplane-config/production/kustomization.yml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/production/kustomization.yml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/crossplane-config/staging/kustomization.yaml b/components/crossplane-config/staging/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 29a43a18 to 0f044fa2 on Wed Dec 4 13:17:45 2024 </h3>  
 
<details> 
<summary>Git Diff (205 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml b/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml
new file mode 100644
index 00000000..80f30a9d
--- /dev/null
+++ b/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: crossplane-config
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/crossplane-config
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: crossplane-config-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: crossplane-config
+        server: "{{server}}"
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml b/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml
new file mode 100644
index 00000000..029f380e
--- /dev/null
+++ b/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - crossplane-config.yaml
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
index 66de0310..abe51c0b 100644
--- a/argo-cd-apps/base/eaas/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - cluster-as-a-service
+  - crossplane-config
 components:
   - ../../k-components/deploy-to-eaas-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/components/crossplane-config/OWNERS b/components/crossplane-config/OWNERS
new file mode 100644
index 00000000..4a5b5cd7
--- /dev/null
+++ b/components/crossplane-config/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- amisstea
+- ifireball
+- avi-biton
+- yftacherzog
+- hmariset
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
new file mode 100644
index 00000000..7910dfe7
--- /dev/null
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - rbac.yaml
+  - secret.yaml
diff --git a/components/crossplane-config/base/rbac.yaml b/components/crossplane-config/base/rbac.yaml
new file mode 100644
index 00000000..a5fc739e
--- /dev/null
+++ b/components/crossplane-config/base/rbac.yaml
@@ -0,0 +1,56 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: crossplane-sa
+  namespace: crossplane-config
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: crossplane-clusterrole
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  - secrets
+  - serviceaccounts
+  verbs:
+  - "*"
+- apiGroups:
+  - authorization.openshift.io
+  - rbac.authorization.k8s.io
+  resources:
+  - roles
+  - rolebindings
+  verbs:
+  - "*"
+- apiGroups:
+  - networking.k8s.io
+  resources:
+  - networkpolicies
+  verbs:
+  - "*"
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - resourcequotas
+  - clusterresourcequotas
+  verbs:
+  - "*"
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: crossplane-crb
+subjects:
+- kind: ServiceAccount
+  name: crossplane-sa
+  namespace: crossplane-config
+roleRef:
+  kind: ClusterRole
+  name: crossplane-clusterrole
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
new file mode 100644
index 00000000..c297f060
--- /dev/null
+++ b/components/crossplane-config/base/secret.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: crossplane-secret
+  namespace: crossplane-config
+  annotations:
+    kubernetes.io/service-account.name: crossplane-sa
+type: kubernetes.io/service-account-token
diff --git a/components/crossplane-config/development/kustomization.yaml b/components/crossplane-config/development/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/development/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/crossplane-config/production/kustomization.yml b/components/crossplane-config/production/kustomization.yml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/production/kustomization.yml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/crossplane-config/staging/kustomization.yaml b/components/crossplane-config/staging/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-0f044fa2/staging/components: crossplane-config 
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
<h3>4: Development changes from 29a43a18 to 0f044fa2 on Wed Dec 4 13:17:45 2024 </h3>  
 
<details> 
<summary>Git Diff (205 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml b/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml
new file mode 100644
index 00000000..80f30a9d
--- /dev/null
+++ b/argo-cd-apps/base/eaas/crossplane-config/crossplane-config.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: crossplane-config
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/crossplane-config
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: crossplane-config-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: crossplane-config
+        server: "{{server}}"
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml b/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml
new file mode 100644
index 00000000..029f380e
--- /dev/null
+++ b/argo-cd-apps/base/eaas/crossplane-config/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - crossplane-config.yaml
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
index 66de0310..abe51c0b 100644
--- a/argo-cd-apps/base/eaas/kustomization.yaml
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - cluster-as-a-service
+  - crossplane-config
 components:
   - ../../k-components/deploy-to-eaas-cluster-merge-generator
   - ../../k-components/inject-argocd-namespace
diff --git a/components/crossplane-config/OWNERS b/components/crossplane-config/OWNERS
new file mode 100644
index 00000000..4a5b5cd7
--- /dev/null
+++ b/components/crossplane-config/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- amisstea
+- ifireball
+- avi-biton
+- yftacherzog
+- hmariset
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
new file mode 100644
index 00000000..7910dfe7
--- /dev/null
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - rbac.yaml
+  - secret.yaml
diff --git a/components/crossplane-config/base/rbac.yaml b/components/crossplane-config/base/rbac.yaml
new file mode 100644
index 00000000..a5fc739e
--- /dev/null
+++ b/components/crossplane-config/base/rbac.yaml
@@ -0,0 +1,56 @@
+---
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: crossplane-sa
+  namespace: crossplane-config
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: crossplane-clusterrole
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - namespaces
+  - secrets
+  - serviceaccounts
+  verbs:
+  - "*"
+- apiGroups:
+  - authorization.openshift.io
+  - rbac.authorization.k8s.io
+  resources:
+  - roles
+  - rolebindings
+  verbs:
+  - "*"
+- apiGroups:
+  - networking.k8s.io
+  resources:
+  - networkpolicies
+  verbs:
+  - "*"
+- apiGroups:
+  - quota.openshift.io
+  resources:
+  - resourcequotas
+  - clusterresourcequotas
+  verbs:
+  - "*"
+
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: crossplane-crb
+subjects:
+- kind: ServiceAccount
+  name: crossplane-sa
+  namespace: crossplane-config
+roleRef:
+  kind: ClusterRole
+  name: crossplane-clusterrole
+  apiGroup: rbac.authorization.k8s.io
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
new file mode 100644
index 00000000..c297f060
--- /dev/null
+++ b/components/crossplane-config/base/secret.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: crossplane-secret
+  namespace: crossplane-config
+  annotations:
+    kubernetes.io/service-account.name: crossplane-sa
+type: kubernetes.io/service-account-token
diff --git a/components/crossplane-config/development/kustomization.yaml b/components/crossplane-config/development/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/development/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/crossplane-config/production/kustomization.yml b/components/crossplane-config/production/kustomization.yml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/production/kustomization.yml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base
diff --git a/components/crossplane-config/staging/kustomization.yaml b/components/crossplane-config/staging/kustomization.yaml
new file mode 100644
index 00000000..736651a7
--- /dev/null
+++ b/components/crossplane-config/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (49 lines)</summary>  

``` 
./commit-29a43a18/development/app-of-apps-development.yaml
212,257d211
<   name: crossplane-config
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchLabels:
<               appstudio.redhat.com/eaas-cluster: "true"
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: components/crossplane-config
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: crossplane-config-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: crossplane-config
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
./commit-0f044fa2/development/components: crossplane-config 
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
```
 
</details> 
<br> 


</div>
