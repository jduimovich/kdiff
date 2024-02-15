# kustomize changes tracked by commits 
### This file generated at Thu Feb 15 04:02:03 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 685c9b9d to ebfbb137 on Wed Feb 14 21:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index de39ec17..8a35cd8d 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,4 +17,4 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
+    name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c799bf10..a851de3a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5642125..209c99db 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 9de825f0..a6db9486 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f7833aa8..4e71d8a4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,12 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: tekton-chains-signing-secret-name.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
deleted file mode 100644
index e5ec0407..00000000
--- a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/target/name
-  value: signing-secrets 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-685c9b9d/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1750c1750
<     name: signing-secrets
---
>     name: signing-secrets-vault
./commit-685c9b9d/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1750c1750
<     name: signing-secrets
---
>     name: signing-secrets-vault
./commit-685c9b9d/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1750c1750
<     name: signing-secrets
---
>     name: signing-secrets-vault 
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
<h3>1: Staging changes from 685c9b9d to ebfbb137 on Wed Feb 14 21:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index de39ec17..8a35cd8d 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,4 +17,4 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
+    name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c799bf10..a851de3a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5642125..209c99db 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 9de825f0..a6db9486 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f7833aa8..4e71d8a4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,12 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: tekton-chains-signing-secret-name.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
deleted file mode 100644
index e5ec0407..00000000
--- a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/target/name
-  value: signing-secrets 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 685c9b9d to ebfbb137 on Wed Feb 14 21:08:46 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
index de39ec17..8a35cd8d 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
@@ -17,4 +17,4 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault # Will need to be renamed to signing-secrets to complete the migration
+    name: signing-secrets
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c799bf10..a851de3a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5642125..209c99db 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 9de825f0..a6db9486 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1747,7 +1747,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index f7833aa8..4e71d8a4 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,12 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: tekton-chains-signing-secret-name.yaml
-    target:
-      name: tekton-chains-signing-secret
-      group: external-secrets.io
-      version: v1beta1
-      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
deleted file mode 100644
index e5ec0407..00000000
--- a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/target/name
-  value: signing-secrets 
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
<h3>2: Production changes from a1c42cb3 to 685c9b9d on Wed Feb 14 19:38:00 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
new file mode 100644
index 00000000..bcd64c5f
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -0,0 +1,4 @@
+- op: replace
+  path: /spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3cdd649e..62c8850b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -38,3 +38,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: bump-results-watcher-replicas.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d7a82613..c799bf10 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4a5b86a5..b5642125 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 7a088c69..9de825f0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (69 lines)</summary>  

``` 
./commit-a1c42cb3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1452c1452
<   replicas: 2
---
>   replicas: 1
1465,1481d1464
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100
./commit-a1c42cb3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1452c1452
<   replicas: 2
---
>   replicas: 1
1465,1481d1464
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100
./commit-a1c42cb3/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1452c1452
<   replicas: 2
---
>   replicas: 1
1465,1481d1464
<       affinity:
<         nodeAffinity:
<           requiredDuringSchedulingIgnoredDuringExecution:
<             nodeSelectorTerms:
<             - matchExpressions:
<               - key: kubernetes.io/os
<                 operator: NotIn
<                 values:
<                 - windows
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchLabels:
<                   app.kubernetes.io/name: tekton-results-watcher
<               topologyKey: kubernetes.io/hostname
<             weight: 100 
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
<h3>2: Staging changes from a1c42cb3 to 685c9b9d on Wed Feb 14 19:38:00 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
new file mode 100644
index 00000000..bcd64c5f
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -0,0 +1,4 @@
+- op: replace
+  path: /spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3cdd649e..62c8850b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -38,3 +38,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: bump-results-watcher-replicas.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d7a82613..c799bf10 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4a5b86a5..b5642125 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 7a088c69..9de825f0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from a1c42cb3 to 685c9b9d on Wed Feb 14 19:38:00 2024 </h3>  
 
<details> 
<summary>Git Diff (144 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
new file mode 100644
index 00000000..bcd64c5f
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -0,0 +1,4 @@
+- op: replace
+  path: /spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 3cdd649e..62c8850b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=4d1a305c65772bc29fbfa454d891ebdc742ab10f
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
@@ -38,3 +38,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: bump-results-watcher-replicas.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d7a82613..c799bf10 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4a5b86a5..b5642125 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 7a088c69..9de825f0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1449,7 +1449,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 1
+  replicas: 2
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1462,6 +1462,23 @@ spec:
         app.kubernetes.io/name: tekton-results-watcher
         app.kubernetes.io/version: devel
     spec:
+      affinity:
+        nodeAffinity:
+          requiredDuringSchedulingIgnoredDuringExecution:
+            nodeSelectorTerms:
+            - matchExpressions:
+              - key: kubernetes.io/os
+                operator: NotIn
+                values:
+                - windows
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+          - podAffinityTerm:
+              labelSelector:
+                matchLabels:
+                  app.kubernetes.io/name: tekton-results-watcher
+              topologyKey: kubernetes.io/hostname
+            weight: 100
       containers:
       - args:
         - --secure-listen-address=0.0.0.0:8443 
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
<h3>3: Production changes from c349e4dc to a1c42cb3 on Wed Feb 14 18:26:35 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4e71d8a4..f7833aa8 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,6 +15,12 @@ resources:
   - ../../base/rbac
 
 patches:
+  - path: tekton-chains-signing-secret-name.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
new file mode 100644
index 00000000..e5ec0407
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/target/name
+  value: signing-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 59c65054..23a5a80e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index e12ded56..075374c4 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index bd5330e4..28b19395 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret 
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
<h3>3: Staging changes from c349e4dc to a1c42cb3 on Wed Feb 14 18:26:35 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4e71d8a4..f7833aa8 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,6 +15,12 @@ resources:
   - ../../base/rbac
 
 patches:
+  - path: tekton-chains-signing-secret-name.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
new file mode 100644
index 00000000..e5ec0407
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/target/name
+  value: signing-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 59c65054..23a5a80e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index e12ded56..075374c4 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index bd5330e4..28b19395 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-c349e4dc/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1751c1751
<     name: signing-secrets
---
>     name: signing-secrets-vault
./commit-c349e4dc/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1751c1751
<     name: signing-secrets
---
>     name: signing-secrets-vault
./commit-c349e4dc/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1751c1751
<     name: signing-secrets
---
>     name: signing-secrets-vault 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from c349e4dc to a1c42cb3 on Wed Feb 14 18:26:35 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4e71d8a4..f7833aa8 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,6 +15,12 @@ resources:
   - ../../base/rbac
 
 patches:
+  - path: tekton-chains-signing-secret-name.yaml
+    target:
+      name: tekton-chains-signing-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
new file mode 100644
index 00000000..e5ec0407
--- /dev/null
+++ b/components/pipeline-service/staging/base/tekton-chains-signing-secret-name.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/target/name
+  value: signing-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 59c65054..23a5a80e 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index e12ded56..075374c4 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index bd5330e4..28b19395 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1748,7 +1748,7 @@ spec:
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
-    name: signing-secrets-vault
+    name: signing-secrets
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret 
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
<h3>4: Production changes from c50b9a06 to c349e4dc on Wed Feb 14 17:37:08 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index be8a173b..15bbac6b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../base
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8a0b22fe..bbfc288c 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - ../base
 - ../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
 
 images:
 - name: quay.io/redhat-appstudio/integration-service 
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
<h3>4: Staging changes from c50b9a06 to c349e4dc on Wed Feb 14 17:37:08 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index be8a173b..15bbac6b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../base
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8a0b22fe..bbfc288c 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - ../base
 - ../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
 
 images:
 - name: quay.io/redhat-appstudio/integration-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-c50b9a06/staging/components/integration/staging/kustomize.out.yaml
1017,1049d1016
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< spec:
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /snapshotgc
<             - --zap-log-level=debug
<             - --pr-snapshots-to-keep=100
<             - --non-pr-snapshots-to-keep=700
<             image: quay.io/redhat-appstudio/integration-service:55122d0fd2f488c6ebfb30f17a35de4a510382fe
<             imagePullPolicy: Always
<             name: test-gc
<             resources:
<               limits:
<                 cpu: 1000m
<                 memory: 500Mi
<               requests:
<                 cpu: 1000m
<                 memory: 500Mi
<             securityContext:
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<           restartPolicy: Never
<           serviceAccountName: integration-service-snapshot-garbage-collector
<   schedule: 0 5 * * *
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from c50b9a06 to c349e4dc on Wed Feb 14 17:37:08 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index be8a173b..15bbac6b 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
 - ../base
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 8a0b22fe..bbfc288c 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - ../base
 - ../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=55122d0fd2f488c6ebfb30f17a35de4a510382fe
 
 images:
 - name: quay.io/redhat-appstudio/integration-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-c50b9a06/development/components/integration/development/kustomize.out.yaml
1017,1049d1016
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< spec:
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /snapshotgc
<             - --zap-log-level=debug
<             - --pr-snapshots-to-keep=100
<             - --non-pr-snapshots-to-keep=700
<             image: quay.io/redhat-appstudio/integration-service:55122d0fd2f488c6ebfb30f17a35de4a510382fe
<             imagePullPolicy: Always
<             name: test-gc
<             resources:
<               limits:
<                 cpu: 1000m
<                 memory: 500Mi
<               requests:
<                 cpu: 1000m
<                 memory: 500Mi
<             securityContext:
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<           restartPolicy: Never
<           serviceAccountName: integration-service-snapshot-garbage-collector
<   schedule: 0 5 * * *
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
```
 
</details> 
<br> 


</div>
