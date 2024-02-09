# kustomize changes tracked by commits 
### This file generated at Fri Feb  9 16:03:11 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 24a62905 to 1e232646 on Fri Feb 9 15:59:02 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
new file mode 100644
index 00000000..122e7ba0
--- /dev/null
+++ b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-signing-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "" # will be added by the overlays
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6c070354..c2b8a4f5 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -9,6 +9,7 @@ commonAnnotations:
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 58651ea5..42abe032 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 005a25ee..336d1757 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..2e64538c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 754c5dd9..fa5cc8aa 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..e8fefefe
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index efa51225..7a724d24 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..84a48bbc
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 24a62905 to 1e232646 on Fri Feb 9 15:59:02 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
new file mode 100644
index 00000000..122e7ba0
--- /dev/null
+++ b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-signing-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "" # will be added by the overlays
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6c070354..c2b8a4f5 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -9,6 +9,7 @@ commonAnnotations:
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 58651ea5..42abe032 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 005a25ee..336d1757 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..2e64538c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 754c5dd9..fa5cc8aa 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..e8fefefe
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index efa51225..7a724d24 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..84a48bbc
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-24a62905/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1763,1782d1762
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-signing-secret
< spec:
<   dataFrom:
<   - extract:
<       key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
./commit-24a62905/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1763,1782d1762
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-signing-secret
< spec:
<   dataFrom:
<   - extract:
<       key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
./commit-24a62905/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1763,1782d1762
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-signing-secret
< spec:
<   dataFrom:
<   - extract:
<       key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 24a62905 to 1e232646 on Fri Feb 9 15:59:02 2024 </h3>  
 
<details> 
<summary>Git Diff (211 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
new file mode 100644
index 00000000..122e7ba0
--- /dev/null
+++ b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-signing-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: "" # will be added by the overlays
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6c070354..c2b8a4f5 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -9,6 +9,7 @@ commonAnnotations:
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 58651ea5..42abe032 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 005a25ee..336d1757 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..2e64538c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 754c5dd9..fa5cc8aa 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..e8fefefe
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index efa51225..7a724d24 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1760,6 +1760,26 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-signing-secret-path.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-results-database-secret-path.yaml
     target:
       name: tekton-results-database
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..84a48bbc
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 9bba44ba to 24a62905 on Fri Feb 9 11:46:24 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 1334216e..eaef189c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8c1a7917..1ada6c9d 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
 namespace: integration-service
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 9bba44ba to 24a62905 on Fri Feb 9 11:46:24 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 1334216e..eaef189c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8c1a7917..1ada6c9d 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (232 lines)</summary>  

``` 
./commit-9bba44ba/staging/components/integration/staging/kustomize.out.yaml
12a13
>     service.beta.openshift.io/inject-cabundle: "true"
15a17,27
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: integration-service-webhook-service
>           namespace: integration-service
>           path: /convert
>       conversionReviewVersions:
>       - v1alpha1
>       - v1beta1
29a42,253
>     deprecated: true
>     deprecationWarning: The v1alpha1 version is deprecated and will be automatically
>       migrated to v1beta1
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: IntegrationTestScenario is the Schema for the integrationtestscenarios
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: IntegrationTestScenarioSpec defines the desired state of
>               IntegrationScenario
>             properties:
>               application:
>                 description: Application that's associated with the IntegrationTestScenario
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               bundle:
>                 description: Tekton Bundle where to find the pipeline
>                 type: string
>               contexts:
>                 description: Contexts where this IntegrationTestScenario can be applied
>                 items:
>                   description: TestContext contains the name and values of a Test
>                     context
>                   properties:
>                     description:
>                       type: string
>                     name:
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment that will be utilized by the test pipeline
>                 properties:
>                   configuration:
>                     description: EnvironmentConfiguration contains Environment-specific
>                       configurations details, to be used when generating Component/Application
>                       GitOps repository resources.
>                     properties:
>                       env:
>                         description: Env is an array of standard environment vairables
>                         items:
>                           description: EnvVarPair describes environment variables
>                             to use for the component
>                           properties:
>                             name:
>                               description: Name is the environment variable name
>                               type: string
>                             value:
>                               description: Value is the environment variable value
>                               type: string
>                           required:
>                           - name
>                           - value
>                           type: object
>                         type: array
>                       target:
>                         description: Target is used to reference a DeploymentTargetClaim
>                           for a target Environment. The Environment controller uses
>                           the referenced DeploymentTargetClaim to access its bounded
>                           DeploymentTarget with cluster credential secret.
>                         properties:
>                           deploymentTargetClaim:
>                             description: DeploymentTargetClaimConfig specifies the
>                               DeploymentTargetClaim details for a given Environment.
>                             properties:
>                               claimName:
>                                 type: string
>                             required:
>                             - claimName
>                             type: object
>                         required:
>                         - deploymentTargetClaim
>                         type: object
>                     type: object
>                   name:
>                     type: string
>                   type:
>                     description: 'DEPRECATED: EnvironmentType should no longer be
>                       used, and has no replacement. - It''s original purpose was to
>                       indicate whether an environment is POC/Non-POC, but these data
>                       were ultimately not required.'
>                     type: string
>                 required:
>                 - name
>                 - type
>                 type: object
>               params:
>                 description: Params to pass to the pipeline
>                 items:
>                   description: PipelineParameter contains the name and values of a
>                     Tekton Pipeline parameter
>                   properties:
>                     name:
>                       type: string
>                     value:
>                       type: string
>                     values:
>                       items:
>                         type: string
>                       type: array
>                   required:
>                   - name
>                   type: object
>                 type: array
>               pipeline:
>                 description: Release Tekton Pipeline to execute
>                 type: string
>             required:
>             - application
>             - bundle
>             - pipeline
>             type: object
>           status:
>             description: IntegrationTestScenarioStatus defines the observed state
>               of IntegrationTestScenario
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             required:
>             - conditions
>             type: object
>         type: object
>     served: true
>     storage: false
>     subresources:
>       status: {}
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
904c1128
<         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49
---
>         image: quay.io/redhat-appstudio/integration-service:a054d6cb69d24bedb7e51d23000fae8db64d2d6b 
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
<h3>2: Development changes from 9bba44ba to 24a62905 on Fri Feb 9 11:46:24 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 1334216e..eaef189c 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8c1a7917..1ada6c9d 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
+  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (232 lines)</summary>  

``` 
./commit-9bba44ba/development/components/integration/development/kustomize.out.yaml
12a13
>     service.beta.openshift.io/inject-cabundle: "true"
15a17,27
>   conversion:
>     strategy: Webhook
>     webhook:
>       clientConfig:
>         service:
>           name: integration-service-webhook-service
>           namespace: integration-service
>           path: /convert
>       conversionReviewVersions:
>       - v1alpha1
>       - v1beta1
29a42,253
>     deprecated: true
>     deprecationWarning: The v1alpha1 version is deprecated and will be automatically
>       migrated to v1beta1
>     name: v1alpha1
>     schema:
>       openAPIV3Schema:
>         description: IntegrationTestScenario is the Schema for the integrationtestscenarios
>           API
>         properties:
>           apiVersion:
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
>             type: string
>           kind:
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
>             type: string
>           metadata:
>             type: object
>           spec:
>             description: IntegrationTestScenarioSpec defines the desired state of
>               IntegrationScenario
>             properties:
>               application:
>                 description: Application that's associated with the IntegrationTestScenario
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
>               bundle:
>                 description: Tekton Bundle where to find the pipeline
>                 type: string
>               contexts:
>                 description: Contexts where this IntegrationTestScenario can be applied
>                 items:
>                   description: TestContext contains the name and values of a Test
>                     context
>                   properties:
>                     description:
>                       type: string
>                     name:
>                       type: string
>                   required:
>                   - name
>                   type: object
>                 type: array
>               environment:
>                 description: Environment that will be utilized by the test pipeline
>                 properties:
>                   configuration:
>                     description: EnvironmentConfiguration contains Environment-specific
>                       configurations details, to be used when generating Component/Application
>                       GitOps repository resources.
>                     properties:
>                       env:
>                         description: Env is an array of standard environment vairables
>                         items:
>                           description: EnvVarPair describes environment variables
>                             to use for the component
>                           properties:
>                             name:
>                               description: Name is the environment variable name
>                               type: string
>                             value:
>                               description: Value is the environment variable value
>                               type: string
>                           required:
>                           - name
>                           - value
>                           type: object
>                         type: array
>                       target:
>                         description: Target is used to reference a DeploymentTargetClaim
>                           for a target Environment. The Environment controller uses
>                           the referenced DeploymentTargetClaim to access its bounded
>                           DeploymentTarget with cluster credential secret.
>                         properties:
>                           deploymentTargetClaim:
>                             description: DeploymentTargetClaimConfig specifies the
>                               DeploymentTargetClaim details for a given Environment.
>                             properties:
>                               claimName:
>                                 type: string
>                             required:
>                             - claimName
>                             type: object
>                         required:
>                         - deploymentTargetClaim
>                         type: object
>                     type: object
>                   name:
>                     type: string
>                   type:
>                     description: 'DEPRECATED: EnvironmentType should no longer be
>                       used, and has no replacement. - It''s original purpose was to
>                       indicate whether an environment is POC/Non-POC, but these data
>                       were ultimately not required.'
>                     type: string
>                 required:
>                 - name
>                 - type
>                 type: object
>               params:
>                 description: Params to pass to the pipeline
>                 items:
>                   description: PipelineParameter contains the name and values of a
>                     Tekton Pipeline parameter
>                   properties:
>                     name:
>                       type: string
>                     value:
>                       type: string
>                     values:
>                       items:
>                         type: string
>                       type: array
>                   required:
>                   - name
>                   type: object
>                 type: array
>               pipeline:
>                 description: Release Tekton Pipeline to execute
>                 type: string
>             required:
>             - application
>             - bundle
>             - pipeline
>             type: object
>           status:
>             description: IntegrationTestScenarioStatus defines the observed state
>               of IntegrationTestScenario
>             properties:
>               conditions:
>                 items:
>                   description: "Condition contains details for one aspect of the current
>                     state of this API Resource. --- This struct is intended for direct
>                     use as an array at the field path .status.conditions.  For example,
>                     \n type FooStatus struct{ // Represents the observations of a
>                     foo's current state. // Known .status.conditions.type are: \"Available\",
>                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
>                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
>                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
>                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
>                   properties:
>                     lastTransitionTime:
>                       description: lastTransitionTime is the last time the condition
>                         transitioned from one status to another. This should be when
>                         the underlying condition changed.  If that is not known, then
>                         using the time when the API field changed is acceptable.
>                       format: date-time
>                       type: string
>                     message:
>                       description: message is a human readable message indicating
>                         details about the transition. This may be an empty string.
>                       maxLength: 32768
>                       type: string
>                     observedGeneration:
>                       description: observedGeneration represents the .metadata.generation
>                         that the condition was set based upon. For instance, if .metadata.generation
>                         is currently 12, but the .status.conditions[x].observedGeneration
>                         is 9, the condition is out of date with respect to the current
>                         state of the instance.
>                       format: int64
>                       minimum: 0
>                       type: integer
>                     reason:
>                       description: reason contains a programmatic identifier indicating
>                         the reason for the condition's last transition. Producers
>                         of specific condition types may define expected values and
>                         meanings for this field, and whether the values are considered
>                         a guaranteed API. The value should be a CamelCase string.
>                         This field may not be empty.
>                       maxLength: 1024
>                       minLength: 1
>                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
>                       type: string
>                     status:
>                       description: status of the condition, one of True, False, Unknown.
>                       enum:
>                       - "True"
>                       - "False"
>                       - Unknown
>                       type: string
>                     type:
>                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
>                         --- Many .condition.type values are consistent across resources
>                         like Available, but because arbitrary conditions can be useful
>                         (see .node.status.conditions), the ability to deconflict is
>                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
>                       maxLength: 316
>                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
>                       type: string
>                   required:
>                   - lastTransitionTime
>                   - message
>                   - reason
>                   - status
>                   - type
>                   type: object
>                 type: array
>             required:
>             - conditions
>             type: object
>         type: object
>     served: true
>     storage: false
>     subresources:
>       status: {}
>   - additionalPrinterColumns:
>     - jsonPath: .spec.application
>       name: Application
>       type: string
904c1128
<         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49
---
>         image: quay.io/redhat-appstudio/integration-service:a054d6cb69d24bedb7e51d23000fae8db64d2d6b 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 34415b28 to 9bba44ba on Fri Feb 9 09:53:37 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 78b8a01e..7e29d940 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-34415b28/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:de67c11841ae66d35ea656564cfb9c5f270e1f8e
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 34415b28 to 9bba44ba on Fri Feb 9 09:53:37 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 78b8a01e..7e29d940 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-34415b28/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:de67c11841ae66d35ea656564cfb9c5f270e1f8e
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e 
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
<h3>3: Development changes from 34415b28 to 9bba44ba on Fri Feb 9 09:53:37 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 78b8a01e..7e29d940 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-34415b28/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:de67c11841ae66d35ea656564cfb9c5f270e1f8e
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:de67c11841ae66d35ea656564cfb9c5f270e1f8e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 703e96e6 to 34415b28 on Thu Feb 8 22:47:53 2024 </h3>  
 
<details> 
<summary>Git Diff (67 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 41788c6d..04a535fe 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -26,4 +26,8 @@
 - op: replace
   path: /spec/pipeline/performance/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 94cf33e1..738fdf4c 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -26,4 +26,8 @@
 - op: replace
   path: /spec/pipeline/performance/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 23699e7c..58651ea5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 300465a9..754c5dd9 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index a3b7c49c..efa51225 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 703e96e6 to 34415b28 on Thu Feb 8 22:47:53 2024 </h3>  
 
<details> 
<summary>Git Diff (67 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 41788c6d..04a535fe 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -26,4 +26,8 @@
 - op: replace
   path: /spec/pipeline/performance/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 94cf33e1..738fdf4c 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -26,4 +26,8 @@
 - op: replace
   path: /spec/pipeline/performance/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 23699e7c..58651ea5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 300465a9..754c5dd9 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index a3b7c49c..efa51225 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-703e96e6/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1890c1890
<             replicas: 2
---
>             replicas: 1
./commit-703e96e6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1890c1890
<             replicas: 2
---
>             replicas: 1
./commit-703e96e6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1890c1890
<             replicas: 2
---
>             replicas: 1 
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
<h3>4: Development changes from 703e96e6 to 34415b28 on Thu Feb 8 22:47:53 2024 </h3>  
 
<details> 
<summary>Git Diff (67 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 41788c6d..04a535fe 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -26,4 +26,8 @@
 - op: replace
   path: /spec/pipeline/performance/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 94cf33e1..738fdf4c 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -26,4 +26,8 @@
 - op: replace
   path: /spec/pipeline/performance/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 23699e7c..58651ea5 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 300465a9..754c5dd9 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index a3b7c49c..efa51225 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1887,7 +1887,7 @@ spec:
       deployments:
         tekton-operator-proxy-webhook:
           spec:
-            replicas: 1
+            replicas: 2
         tekton-pipelines-webhook:
           spec:
             replicas: 1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-703e96e6/development/components/pipeline-service/development/kustomize.out.yaml
2022c2022
<             replicas: 2
---
>             replicas: 1 
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
```
 
</details> 
<br> 


</div>
