# kustomize changes tracked by commits 
### This file generated at Tue Feb 13 12:03:33 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 92420793 to bb50d531 on Tue Feb 13 10:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index eaef189c..5fbf4ca5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 1ada6c9d..dacf1f3b 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
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
<h3>1: Staging changes from 92420793 to bb50d531 on Tue Feb 13 10:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index eaef189c..5fbf4ca5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 1ada6c9d..dacf1f3b 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-92420793/staging/components/integration/staging/kustomize.out.yaml
904c904
<         image: quay.io/redhat-appstudio/integration-service:17d83481431c3747ba1ca80eed5b254afaf789e7
---
>         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49 
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
<h3>1: Development changes from 92420793 to bb50d531 on Tue Feb 13 10:16:52 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index eaef189c..5fbf4ca5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 1ada6c9d..dacf1f3b 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4b89853a9724bc241412714c3a1cd2e443848f49
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=17d83481431c3747ba1ca80eed5b254afaf789e7
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4b89853a9724bc241412714c3a1cd2e443848f49
+  newTag: 17d83481431c3747ba1ca80eed5b254afaf789e7
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-92420793/development/components/integration/development/kustomize.out.yaml
904c904
<         image: quay.io/redhat-appstudio/integration-service:17d83481431c3747ba1ca80eed5b254afaf789e7
---
>         image: quay.io/redhat-appstudio/integration-service:4b89853a9724bc241412714c3a1cd2e443848f49 
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
<h3>2: Production changes from 4f4ec4f2 to 92420793 on Mon Feb 12 20:45:51 2024 </h3>  
 
<details> 
<summary>Git Diff (213 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/kustomization.yaml b/components/pipeline-service/base/external-secrets/kustomization.yaml
index cbd94d62..dc20e2ee 100644
--- a/components/pipeline-service/base/external-secrets/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/kustomization.yaml
@@ -1,4 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+  - openshift-pipelines
   - tekton-results
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
similarity index 100%
rename from components/pipeline-service/staging/base/chains-signing-secrets.yaml
rename to components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
new file mode 100644
index 00000000..d68c0f31
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - chains-signing-secrets.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1aa29d7f..d7a82613 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..5c38019c
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-m01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1b25c9bc..4a5b86a5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..7309b760
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-rh01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 39d84a15..7a088c69 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 005a25ee..336d1757 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..ff3f0760
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c152e02e..36fbca8d 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -9,7 +9,6 @@ commonAnnotations:
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
-  - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (69 lines)</summary>  

``` 
./commit-4f4ec4f2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1720,1740d1719
<   name: tekton-chains-signing-secret
<   namespace: openshift-pipelines
< spec:
<   dataFrom:
<   - extract:
<       key: production/pipeline-service/stone-prod-m01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
./commit-4f4ec4f2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1720,1740d1719
<   name: tekton-chains-signing-secret
<   namespace: openshift-pipelines
< spec:
<   dataFrom:
<   - extract:
<       key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
./commit-4f4ec4f2/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1720,1740d1719
<   name: tekton-chains-signing-secret
<   namespace: openshift-pipelines
< spec:
<   dataFrom:
<   - extract:
<       key: production/pipeline-service/stone-prod-p01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1" 
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
<h3>2: Staging changes from 4f4ec4f2 to 92420793 on Mon Feb 12 20:45:51 2024 </h3>  
 
<details> 
<summary>Git Diff (213 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/kustomization.yaml b/components/pipeline-service/base/external-secrets/kustomization.yaml
index cbd94d62..dc20e2ee 100644
--- a/components/pipeline-service/base/external-secrets/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/kustomization.yaml
@@ -1,4 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+  - openshift-pipelines
   - tekton-results
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
similarity index 100%
rename from components/pipeline-service/staging/base/chains-signing-secrets.yaml
rename to components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
new file mode 100644
index 00000000..d68c0f31
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - chains-signing-secrets.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1aa29d7f..d7a82613 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..5c38019c
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-m01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1b25c9bc..4a5b86a5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..7309b760
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-rh01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 39d84a15..7a088c69 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 005a25ee..336d1757 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..ff3f0760
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c152e02e..36fbca8d 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -9,7 +9,6 @@ commonAnnotations:
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
-  - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing 
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
<h3>2: Development changes from 4f4ec4f2 to 92420793 on Mon Feb 12 20:45:51 2024 </h3>  
 
<details> 
<summary>Git Diff (213 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/kustomization.yaml b/components/pipeline-service/base/external-secrets/kustomization.yaml
index cbd94d62..dc20e2ee 100644
--- a/components/pipeline-service/base/external-secrets/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/kustomization.yaml
@@ -1,4 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+  - openshift-pipelines
   - tekton-results
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
similarity index 100%
rename from components/pipeline-service/staging/base/chains-signing-secrets.yaml
rename to components/pipeline-service/base/external-secrets/openshift-pipelines/chains-signing-secrets.yaml
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
new file mode 100644
index 00000000..d68c0f31
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - chains-signing-secrets.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 1aa29d7f..d7a82613 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..5c38019c
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-m01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-m01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 1b25c9bc..4a5b86a5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index dedaea51..d9ce3673 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..7309b760
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-rh01/chains-signing-secret
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 39d84a15..7a088c69 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: production/pipeline-service/stone-prod-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 005a25ee..336d1757 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
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
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml
new file mode 100644
index 00000000..ff3f0760
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/tekton-chains-signing-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c152e02e..36fbca8d 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -9,7 +9,6 @@ commonAnnotations:
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
-  - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing 
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
<h3>3: Production changes from 8eafd619 to 4f4ec4f2 on Mon Feb 12 20:27:02 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 6394cd06..3cdd649e 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 2dce7293..fecb5932 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -30,4 +30,16 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d3342a0a..1aa29d7f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 91c5a66b..1b25c9bc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 50145778..39d84a15 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Konflux Production Internal
           custom-console-name: Konflux Production Internal 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (60 lines)</summary>  

``` 
./commit-8eafd619/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1618d1617
<     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
1891c1890
<         tekton-pipelines-remote-resolvers:
---
>         tekton-pipelines-webhook:
1893c1892
<             replicas: 2
---
>             replicas: 1
1906,1913d1904
<         options:
<           deployments:
<             pipelines-as-code-watcher:
<               spec:
<                 replicas: 2
<             pipelines-as-code-webhook:
<               spec:
<                 replicas: 2
./commit-8eafd619/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1618d1617
<     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
1891c1890
<         tekton-pipelines-remote-resolvers:
---
>         tekton-pipelines-webhook:
1893c1892
<             replicas: 2
---
>             replicas: 1
1906,1913d1904
<         options:
<           deployments:
<             pipelines-as-code-watcher:
<               spec:
<                 replicas: 2
<             pipelines-as-code-webhook:
<               spec:
<                 replicas: 2
./commit-8eafd619/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1618d1617
<     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
1891c1890
<         tekton-pipelines-remote-resolvers:
---
>         tekton-pipelines-webhook:
1893c1892
<             replicas: 2
---
>             replicas: 1
1906,1913d1904
<         options:
<           deployments:
<             pipelines-as-code-watcher:
<               spec:
<                 replicas: 2
<             pipelines-as-code-webhook:
<               spec:
<                 replicas: 2 
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
<h3>3: Staging changes from 8eafd619 to 4f4ec4f2 on Mon Feb 12 20:27:02 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 6394cd06..3cdd649e 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 2dce7293..fecb5932 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -30,4 +30,16 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d3342a0a..1aa29d7f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 91c5a66b..1b25c9bc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 50145778..39d84a15 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Konflux Production Internal
           custom-console-name: Konflux Production Internal 
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
<h3>3: Development changes from 8eafd619 to 4f4ec4f2 on Mon Feb 12 20:27:02 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 6394cd06..3cdd649e 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 2dce7293..fecb5932 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -30,4 +30,16 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index d3342a0a..1aa29d7f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 91c5a66b..1b25c9bc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Red Hat Konflux
           custom-console-name: Red Hat Konflux
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 50145778..39d84a15 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1615,6 +1615,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1887,9 +1888,9 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1902,6 +1903,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 2
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 2
         settings:
           application-name: Konflux Production Internal
           custom-console-name: Konflux Production Internal 
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
<h3>4: Production changes from 5e22d919 to 8eafd619 on Mon Feb 12 10:12:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 7e29d940..b7dacd5f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5e22d919/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458 
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
<h3>4: Staging changes from 5e22d919 to 8eafd619 on Mon Feb 12 10:12:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 7e29d940..b7dacd5f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5e22d919/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458 
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
<h3>4: Development changes from 5e22d919 to 8eafd619 on Mon Feb 12 10:12:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 7e29d940..b7dacd5f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5e22d919/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458 
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
