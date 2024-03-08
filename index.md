# kustomize changes tracked by commits 
### This file generated at Fri Mar  8 00:07:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a220adcd to b1ce8f52 on Thu Mar 7 20:02:09 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index f96983a6..3ae7c588 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret-konflux-ci
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret-konflux-ci
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 93d4de83..1517b4dc 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,5 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index 65cd79ed..ba934adf 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,6 +13,12 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-a220adcd/production/components/tekton-ci/production/kustomize.out.yaml
12d11
< - name: quay-push-secret-konflux-ci
20d18
< - name: quay-push-secret-konflux-ci
136,161d133
<     template:
<       data:
<         .dockerconfigjson: '{{ .config }}'
<       engineVersion: v2
<       type: kubernetes.io/dockerconfigjson
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: quay-push-secret-konflux-ci
<   namespace: tekton-ci
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/tekton-ci/quay-push-secret-konflux-ci
<   refreshInterval: 15m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quay-push-secret-konflux-ci 
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
<h3>1: Staging changes from a220adcd to b1ce8f52 on Thu Mar 7 20:02:09 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index f96983a6..3ae7c588 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret-konflux-ci
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret-konflux-ci
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 93d4de83..1517b4dc 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,5 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index 65cd79ed..ba934adf 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,6 +13,12 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-a220adcd/staging/components/tekton-ci/staging/kustomize.out.yaml
12d11
< - name: quay-push-secret-konflux-ci
20d18
< - name: quay-push-secret-konflux-ci
136,161d133
<     template:
<       data:
<         .dockerconfigjson: '{{ .config }}'
<       engineVersion: v2
<       type: kubernetes.io/dockerconfigjson
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: quay-push-secret-konflux-ci
<   namespace: tekton-ci
< spec:
<   dataFrom:
<   - extract:
<       key: staging/build/tekton-ci/quay-push-secret-konflux-ci
<   refreshInterval: 15m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quay-push-secret-konflux-ci 
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
<h3>1: Development changes from a220adcd to b1ce8f52 on Thu Mar 7 20:02:09 2024 </h3>  
 
<details> 
<summary>Git Diff (81 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index f96983a6..3ae7c588 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
+- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..2d67489c
--- /dev/null
+++ b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quay-push-secret-konflux-ci
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quay-push-secret-konflux-ci
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 93d4de83..1517b4dc 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,5 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index 65cd79ed..ba934adf 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,6 +13,12 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: quay-push-secret-konflux-ci.yaml
+    target:
+      name: quay-push-secret-konflux-ci
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
new file mode 100644
index 00000000..8a3590aa
--- /dev/null
+++ b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
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
<h3>2: Production changes from 0c5d5074 to a220adcd on Thu Mar 7 19:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (54 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index aea590ed..ec2b0738 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -1,10 +1,4 @@
 ---
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/cpu
   value: "250m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 71319245..d7fa1bf6 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1a2d2062..dbb78a41 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1bbade96..6ea2e3e7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
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
<h3>2: Staging changes from 0c5d5074 to a220adcd on Thu Mar 7 19:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (54 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index aea590ed..ec2b0738 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -1,10 +1,4 @@
 ---
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/cpu
   value: "250m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 71319245..d7fa1bf6 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1a2d2062..dbb78a41 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1bbade96..6ea2e3e7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-0c5d5074/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1477a1478,1479
>         - -threadiness
>         - "32"
./commit-0c5d5074/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1477a1478,1479
>         - -threadiness
>         - "32"
./commit-0c5d5074/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1477a1478,1479
>         - -threadiness
>         - "32" 
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
<h3>2: Development changes from 0c5d5074 to a220adcd on Thu Mar 7 19:12:38 2024 </h3>  
 
<details> 
<summary>Git Diff (54 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index aea590ed..ec2b0738 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -1,10 +1,4 @@
 ---
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "-threadiness"
-- op: add
-  path: /spec/template/spec/containers/1/args/-
-  value: "32"
 - op: replace
   path: /spec/template/spec/containers/1/resources/requests/cpu
   value: "250m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 71319245..d7fa1bf6 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 1a2d2062..dbb78a41 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1bbade96..6ea2e3e7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1475,8 +1475,6 @@ spec:
         - 10m
         - -threadiness
         - "32"
-        - -threadiness
-        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
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
<h3>3: Production changes from cdcaf57a to 0c5d5074 on Thu Mar 7 18:17:37 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
deleted file mode 100644
index f306f00f..00000000
--- a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
+++ /dev/null
@@ -1,25 +0,0 @@
------BEGIN CERTIFICATE-----
-MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
-VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
-Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
-GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
-b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
-WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
-VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
-ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
-9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
-ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
-bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
-c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
-GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
-X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
-BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
-4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
-bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
-CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
-LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
-oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
-S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
-4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
-RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
------END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
deleted file mode 100644
index dbe10450..00000000
--- a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
+++ /dev/null
@@ -1,37 +0,0 @@
------BEGIN CERTIFICATE-----
-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
-56vmq8fwQYIcazjrygWiaOnoep/SMw==
------END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
index eaa65daa..2baeff42 100644
--- a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
+++ b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
@@ -9,22 +9,13 @@ spec:
       containers:
       - name: manager
         volumeMounts:
-          - name: rh-certs-2015
-            mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
-            subPath: 2015-RH-IT-Root-CA.pem
-          - name: rh-certs-2022
-            mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
-            subPath: 2022-IT-Root-CA.pem
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
       volumes:
-        - name: rh-certs-2015
-          configMap:
-            name: rh-certs-2015
-            items:
-              - key: 2015-RH-IT-Root-CA.pem
-                path: 2015-RH-IT-Root-CA.pem 
-        - name: rh-certs-2022
-          configMap:
-            name: rh-certs-2022
-            items:
-              - key: 2022-IT-Root-CA.pem
-                path: 2022-IT-Root-CA.pem
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/build-service/components/rh-certs/kustomization.yaml b/components/build-service/components/rh-certs/kustomization.yaml
index e961547c..9cd099c5 100644
--- a/components/build-service/components/rh-certs/kustomization.yaml
+++ b/components/build-service/components/rh-certs/kustomization.yaml
@@ -7,10 +7,8 @@ patches:
       name: build-service-controller-manager
       kind: Deployment
 configMapGenerator:
-  - name: rh-certs-2015
-    files: 
-      - 2015-RH-IT-Root-CA.pem
-  - name: rh-certs-2022
-    files: 
-      - 2022-IT-Root-CA.pem
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
 namespace: build-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (107 lines)</summary>  

``` 
./commit-cdcaf57a/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
616a617,643
> data:
>   2015-RH-IT-Root-CA.pem: |
>     -----BEGIN CERTIFICATE-----
>     MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
>     VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
>     Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
>     GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
>     b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
>     WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
>     VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
>     ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
>     9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
>     ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
>     bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
>     c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
>     GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
>     X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
>     BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
>     4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
>     bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
>     CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
>     LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
>     oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
>     S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
>     4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
>     RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
>     -----END CERTIFICATE-----
619,621c646,691
<   labels:
<     config.openshift.io/inject-trusted-cabundle: "true"
<   name: trusted-ca-6ct58987ht
---
>   name: rh-certs-2015-496kcdf4g7
>   namespace: build-service
> ---
> apiVersion: v1
> data:
>   2022-IT-Root-CA.pem: |
>     -----BEGIN CERTIFICATE-----
>     MIIGcjCCBFqgAwIBAgIFICIEEFwwDQYJKoZIhvcNAQEMBQAwgaMxCzAJBgNVBAYT
>     AlVTMRcwFQYDVQQIDA5Ob3J0aCBDYXJvbGluYTEQMA4GA1UEBwwHUmFsZWlnaDEW
>     MBQGA1UECgwNUmVkIEhhdCwgSW5jLjETMBEGA1UECwwKUmVkIEhhdCBJVDEZMBcG
>     A1UEAwwQSW50ZXJuYWwgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5mb3NlY0By
>     ZWRoYXQuY29tMCAXDTIzMDQwNTE4MzM0NFoYDzIwNTIwNDAyMTgzMzQ0WjCBozEL
>     MAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYDVQQHDAdS
>     YWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApSZWQgSGF0
>     IElUMRkwFwYDVQQDDBBJbnRlcm5hbCBSb290IENBMSEwHwYJKoZIhvcNAQkBFhJp
>     bmZvc2VjQHJlZGhhdC5jb20wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoIC
>     AQCxuloEVglzWXZ9FFFUOSVdpRIB2jW5YBpwgMem2fPZeWIIvrVQ6PL9XNenDOXu
>     BHbShD/PApxi/ujSZyOIjLsNh7WDO+0NqpkfTyB9wUYAhx3GTIGY75RSoyZy1yKb
>     ZDTKv+rSfui9IlstAMz6L3OQLZES9zAYK8ICiDUwTeNZ7quA6qf0Kam2LyuBc/bl
>     BI7WFLOGGWY135P1OUXJgnJUsMhnYMTgvZQyJ2P7eLQpiR8TOr5ZI6CYapiyG64L
>     nkr/rsALjSxoUo09Yai1CVO66VFJ/XgMNt3mzQtLDMPXiKUuwsBsgvo4QvLjkXYI
>     ii+/YQyQaypsKctG8mefKkTT1kRDKj4LNdTRRgd5tco+b4+O/4upt8mIsx1+tbdM
>     LNGEz3Jqd0sj8Fl4Rzus+W+enzXmMfZH86X6bU5tMvueuFd5LV+M9XzliscaEQMK
>     EQ7CC72ldrOK2K12Gjb7bu8dKq+aSlNuWK+Gz1NvbwYpaCBYp0JoryvHEq5jrCLP
>     lTkuJQ3HaaAf+4LaBm8no9xK2VbDf6l/7Htb5I5LnAAZi0/5TzH07NhHoIeMSmTE
>     Ea07i/i5lbhM2qbx6pfLukg24HLCKTdi4Fo6/JqPWH6/3eI55NsoWSmoDdTiLg4v
>     1G/rgUVr2N6F36GTYMGqiITvvd4Qm3i9XOTQvsx8RJx4JQIDAQABo4GoMIGlMB0G
>     A1UdDgQWBBS1+o3lCnihCZXbTSGGlWpZT0nIizAfBgNVHSMEGDAWgBS1+o3lCnih
>     CZXbTSGGlWpZT0nIizAPBgNVHRMBAf8EBTADAQH/MA4GA1UdDwEB/wQEAwIBhjAR
>     BglghkgBhvhCAQEEBAMCAQYwLwYDVR0fBCgwJjAkoCKgIIYeaHR0cDovL29jc3Au
>     cmVkaGF0LmNvbS9jcmwucGVtMA0GCSqGSIb3DQEBDAUAA4ICAQCDLaGTS0g2HmMS
>     g0i6Z0RVDC7sSnWFgEk2ZO1WUQj5WkFVS7gWxed/mXCzeL2EV1Pd22YKHM1eU1vo
>     6b03cbNRXlRGGFksmQeM9h2sVjbP0hRZxqqfI+UW223N8E+qK3wSa8m6nhOfIJie
>     DD9s8CdL1VT6l4qq2gR8mVBW7EZ+Ux5u+AMXpN4WPEkcLer2djbfhXoPsJ4r5CcX
>     vh7W5rCZbo+0oBI5hrTlG4Tjhv1atqLhMmssjn8NbRrnhrbGF7w8NxFts69GkKDB
>     UIXr1pWZSAuRELlIxmvh5ZSX5YTbFmDuTvmNx8RPPy6OY4W1v1BUKp0HyJTi07s2
>     8SN+n9htHPHX9XBZctQmOSFLiqhi15LIqI54tR2tSgwH3Z5moh4sy6MuApXstsu4
>     qtkII2KZk3SottI8MOS6zqKrU7jPou6ZE0fznNiu23Q3Ksuuj6mBkLVw3bQe68Vm
>     NUTDac1oVzc8d5NMbx5kVb4Lahq+SATVFC8NK9G/Pk1AiwO8WhKffySsLeO5nMib
>     4BOVq0qFoAi8YCFuJOl9FlH1dPW/TnqlTQMQNhXpzGjU3HV3lr/Mk+ghNgIYcLcz
>     pEBsiGwKOVW4nYKIqPLn/36Ao/kfXeAdJhaAZq1SkTbeqNiwHQm3KNHzNObmjD0f
>     56vmq8fwQYIcazjrygWiaOnoep/SMw==
>     -----END CERTIFICATE-----
> kind: ConfigMap
> metadata:
>   name: rh-certs-2022-5fghf7b9tk
713,715c783,788
<         - mountPath: /etc/pki/ca-trust/extracted/pem
<           name: trusted-ca
<           readOnly: true
---
>         - mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
>           name: rh-certs-2015
>           subPath: 2015-RH-IT-Root-CA.pem
>         - mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
>           name: rh-certs-2022
>           subPath: 2022-IT-Root-CA.pem
746,749c819,828
<           - key: ca-bundle.crt
<             path: tls-ca-bundle.pem
<           name: trusted-ca-6ct58987ht
<         name: trusted-ca
---
>           - key: 2015-RH-IT-Root-CA.pem
>             path: 2015-RH-IT-Root-CA.pem
>           name: rh-certs-2015-496kcdf4g7
>         name: rh-certs-2015
>       - configMap:
>           items:
>           - key: 2022-IT-Root-CA.pem
>             path: 2022-IT-Root-CA.pem
>           name: rh-certs-2022-5fghf7b9tk
>         name: rh-certs-2022 
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
<h3>3: Staging changes from cdcaf57a to 0c5d5074 on Thu Mar 7 18:17:37 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
deleted file mode 100644
index f306f00f..00000000
--- a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
+++ /dev/null
@@ -1,25 +0,0 @@
------BEGIN CERTIFICATE-----
-MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
-VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
-Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
-GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
-b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
-WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
-VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
-ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
-9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
-ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
-bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
-c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
-GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
-X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
-BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
-4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
-bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
-CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
-LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
-oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
-S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
-4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
-RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
------END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
deleted file mode 100644
index dbe10450..00000000
--- a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
+++ /dev/null
@@ -1,37 +0,0 @@
------BEGIN CERTIFICATE-----
-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
-56vmq8fwQYIcazjrygWiaOnoep/SMw==
------END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
index eaa65daa..2baeff42 100644
--- a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
+++ b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
@@ -9,22 +9,13 @@ spec:
       containers:
       - name: manager
         volumeMounts:
-          - name: rh-certs-2015
-            mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
-            subPath: 2015-RH-IT-Root-CA.pem
-          - name: rh-certs-2022
-            mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
-            subPath: 2022-IT-Root-CA.pem
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
       volumes:
-        - name: rh-certs-2015
-          configMap:
-            name: rh-certs-2015
-            items:
-              - key: 2015-RH-IT-Root-CA.pem
-                path: 2015-RH-IT-Root-CA.pem 
-        - name: rh-certs-2022
-          configMap:
-            name: rh-certs-2022
-            items:
-              - key: 2022-IT-Root-CA.pem
-                path: 2022-IT-Root-CA.pem
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/build-service/components/rh-certs/kustomization.yaml b/components/build-service/components/rh-certs/kustomization.yaml
index e961547c..9cd099c5 100644
--- a/components/build-service/components/rh-certs/kustomization.yaml
+++ b/components/build-service/components/rh-certs/kustomization.yaml
@@ -7,10 +7,8 @@ patches:
       name: build-service-controller-manager
       kind: Deployment
 configMapGenerator:
-  - name: rh-certs-2015
-    files: 
-      - 2015-RH-IT-Root-CA.pem
-  - name: rh-certs-2022
-    files: 
-      - 2022-IT-Root-CA.pem
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
 namespace: build-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (107 lines)</summary>  

``` 
./commit-cdcaf57a/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
616a617,643
> data:
>   2015-RH-IT-Root-CA.pem: |
>     -----BEGIN CERTIFICATE-----
>     MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
>     VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
>     Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
>     GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
>     b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
>     WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
>     VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
>     ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
>     9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
>     ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
>     bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
>     c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
>     GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
>     X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
>     BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
>     4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
>     bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
>     CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
>     LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
>     oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
>     S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
>     4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
>     RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
>     -----END CERTIFICATE-----
619,621c646,691
<   labels:
<     config.openshift.io/inject-trusted-cabundle: "true"
<   name: trusted-ca-6ct58987ht
---
>   name: rh-certs-2015-496kcdf4g7
>   namespace: build-service
> ---
> apiVersion: v1
> data:
>   2022-IT-Root-CA.pem: |
>     -----BEGIN CERTIFICATE-----
>     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
>     56vmq8fwQYIcazjrygWiaOnoep/SMw==
>     -----END CERTIFICATE-----
> kind: ConfigMap
> metadata:
>   name: rh-certs-2022-5fghf7b9tk
713,715c783,788
<         - mountPath: /etc/pki/ca-trust/extracted/pem
<           name: trusted-ca
<           readOnly: true
---
>         - mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
>           name: rh-certs-2015
>           subPath: 2015-RH-IT-Root-CA.pem
>         - mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
>           name: rh-certs-2022
>           subPath: 2022-IT-Root-CA.pem
746,749c819,828
<           - key: ca-bundle.crt
<             path: tls-ca-bundle.pem
<           name: trusted-ca-6ct58987ht
<         name: trusted-ca
---
>           - key: 2015-RH-IT-Root-CA.pem
>             path: 2015-RH-IT-Root-CA.pem
>           name: rh-certs-2015-496kcdf4g7
>         name: rh-certs-2015
>       - configMap:
>           items:
>           - key: 2022-IT-Root-CA.pem
>             path: 2022-IT-Root-CA.pem
>           name: rh-certs-2022-5fghf7b9tk
>         name: rh-certs-2022 
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
<h3>3: Development changes from cdcaf57a to 0c5d5074 on Thu Mar 7 18:17:37 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem b/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
deleted file mode 100644
index f306f00f..00000000
--- a/components/build-service/components/rh-certs/2015-RH-IT-Root-CA.pem
+++ /dev/null
@@ -1,25 +0,0 @@
------BEGIN CERTIFICATE-----
-MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
-VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
-Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
-GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
-b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
-WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
-VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
-ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
-9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
-ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
-bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
-c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
-GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
-X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
-BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
-4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
-bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
-CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
-LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
-oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
-S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
-4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
-RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
------END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem b/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
deleted file mode 100644
index dbe10450..00000000
--- a/components/build-service/components/rh-certs/2022-IT-Root-CA.pem
+++ /dev/null
@@ -1,37 +0,0 @@
------BEGIN CERTIFICATE-----
-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
-56vmq8fwQYIcazjrygWiaOnoep/SMw==
------END CERTIFICATE-----
diff --git a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
index eaa65daa..2baeff42 100644
--- a/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
+++ b/components/build-service/components/rh-certs/add-rh-certs-patch.yaml
@@ -9,22 +9,13 @@ spec:
       containers:
       - name: manager
         volumeMounts:
-          - name: rh-certs-2015
-            mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
-            subPath: 2015-RH-IT-Root-CA.pem
-          - name: rh-certs-2022
-            mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
-            subPath: 2022-IT-Root-CA.pem
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
       volumes:
-        - name: rh-certs-2015
-          configMap:
-            name: rh-certs-2015
-            items:
-              - key: 2015-RH-IT-Root-CA.pem
-                path: 2015-RH-IT-Root-CA.pem 
-        - name: rh-certs-2022
-          configMap:
-            name: rh-certs-2022
-            items:
-              - key: 2022-IT-Root-CA.pem
-                path: 2022-IT-Root-CA.pem
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/build-service/components/rh-certs/kustomization.yaml b/components/build-service/components/rh-certs/kustomization.yaml
index e961547c..9cd099c5 100644
--- a/components/build-service/components/rh-certs/kustomization.yaml
+++ b/components/build-service/components/rh-certs/kustomization.yaml
@@ -7,10 +7,8 @@ patches:
       name: build-service-controller-manager
       kind: Deployment
 configMapGenerator:
-  - name: rh-certs-2015
-    files: 
-      - 2015-RH-IT-Root-CA.pem
-  - name: rh-certs-2022
-    files: 
-      - 2022-IT-Root-CA.pem
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
 namespace: build-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (109 lines)</summary>  

``` 
./commit-cdcaf57a/development/components/build-service/development/kustomize.out.yaml
616a617,643
> data:
>   2015-RH-IT-Root-CA.pem: |
>     -----BEGIN CERTIFICATE-----
>     MIIENDCCAxygAwIBAgIJANunI0D662cnMA0GCSqGSIb3DQEBCwUAMIGlMQswCQYD
>     VQQGEwJVUzEXMBUGA1UECAwOTm9ydGggQ2Fyb2xpbmExEDAOBgNVBAcMB1JhbGVp
>     Z2gxFjAUBgNVBAoMDVJlZCBIYXQsIEluYy4xEzARBgNVBAsMClJlZCBIYXQgSVQx
>     GzAZBgNVBAMMElJlZCBIYXQgSVQgUm9vdCBDQTEhMB8GCSqGSIb3DQEJARYSaW5m
>     b3NlY0ByZWRoYXQuY29tMCAXDTE1MDcwNjE3MzgxMVoYDzIwNTUwNjI2MTczODEx
>     WjCBpTELMAkGA1UEBhMCVVMxFzAVBgNVBAgMDk5vcnRoIENhcm9saW5hMRAwDgYD
>     VQQHDAdSYWxlaWdoMRYwFAYDVQQKDA1SZWQgSGF0LCBJbmMuMRMwEQYDVQQLDApS
>     ZWQgSGF0IElUMRswGQYDVQQDDBJSZWQgSGF0IElUIFJvb3QgQ0ExITAfBgkqhkiG
>     9w0BCQEWEmluZm9zZWNAcmVkaGF0LmNvbTCCASIwDQYJKoZIhvcNAQEBBQADggEP
>     ADCCAQoCggEBALQt9OJQh6GC5LT1g80qNh0u50BQ4sZ/yZ8aETxt+5lnPVX6MHKz
>     bfwI6nO1aMG6j9bSw+6UUyPBHP796+FT/pTS+K0wsDV7c9XvHoxJBJJU38cdLkI2
>     c/i7lDqTfTcfLL2nyUBd2fQDk1B0fxrskhGIIZ3ifP1Ps4ltTkv8hRSob3VtNqSo
>     GxkKfvD2PKjTPxDPWYyruy9irLZioMffi3i/gCut0ZWtAyO3MVH5qWF/enKwgPES
>     X9po+TdCvRB/RUObBaM761EcrLSM1GqHNueSfqnho3AjLQ6dBnPWlo638Zm1VebK
>     BELyhkLWMSFkKwDmne0jQ02Y4g075vCKvCsCAwEAAaNjMGEwHQYDVR0OBBYEFH7R
>     4yC+UehIIPeuL8Zqw3PzbgcZMB8GA1UdIwQYMBaAFH7R4yC+UehIIPeuL8Zqw3Pz
>     bgcZMA8GA1UdEwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMA0GCSqGSIb3DQEB
>     CwUAA4IBAQBDNvD2Vm9sA5A9AlOJR8+en5Xz9hXcxJB5phxcZQ8jFoG04Vshvd0e
>     LEnUrMcfFgIZ4njMKTQCM4ZFUPAieyLx4f52HuDopp3e5JyIMfW+KFcNIpKwCsak
>     oSoKtIUOsUJK7qBVZxcrIyeQV2qcYOeZhtS5wBqIwOAhFwlCET7Ze58QHmS48slj
>     S9K0JAcps2xdnGu0fkzhSQxY8GPQNFTlr6rYld5+ID/hHeS76gq0YG3q6RLWRkHf
>     4eTkRjivAlExrFzKcljC4axKQlnOvVAzz+Gm32U0xPBF4ByePVxCJUHw1TsyTmel
>     RxNEp7yHoXcwn+fXna+t5JWh1gxUZty3
>     -----END CERTIFICATE-----
621,623c648,695
<   labels:
<     config.openshift.io/inject-trusted-cabundle: "true"
<   name: trusted-ca-6ct58987ht
---
>   name: rh-certs-2015-496kcdf4g7
>   namespace: build-service
> ---
> apiVersion: v1
> data:
>   2022-IT-Root-CA.pem: |
>     -----BEGIN CERTIFICATE-----
>     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
>     56vmq8fwQYIcazjrygWiaOnoep/SMw==
>     -----END CERTIFICATE-----
> kind: ConfigMap
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: rh-certs-2022-5fghf7b9tk
718,720c790,795
<         - mountPath: /etc/pki/ca-trust/extracted/pem
<           name: trusted-ca
<           readOnly: true
---
>         - mountPath: /etc/pki/tls/certs/2015-RH-IT-Root-CA.pem
>           name: rh-certs-2015
>           subPath: 2015-RH-IT-Root-CA.pem
>         - mountPath: /etc/pki/tls/certs/2022-IT-Root-CA.pem
>           name: rh-certs-2022
>           subPath: 2022-IT-Root-CA.pem
751,754c826,835
<           - key: ca-bundle.crt
<             path: tls-ca-bundle.pem
<           name: trusted-ca-6ct58987ht
<         name: trusted-ca
---
>           - key: 2015-RH-IT-Root-CA.pem
>             path: 2015-RH-IT-Root-CA.pem
>           name: rh-certs-2015-496kcdf4g7
>         name: rh-certs-2015
>       - configMap:
>           items:
>           - key: 2022-IT-Root-CA.pem
>             path: 2022-IT-Root-CA.pem
>           name: rh-certs-2022-5fghf7b9tk
>         name: rh-certs-2022 
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
<h3>4: Production changes from efa15eaf to cdcaf57a on Thu Mar 7 17:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index d9be3fcc..363f7f75 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-efa15eaf/production/components/release/production/kustomize.out.yaml
1790c1790
<         image: quay.io/redhat-appstudio/release-service:17f77107fc32d17de3dc5820d2d5156b2ca896ba
---
>         image: quay.io/redhat-appstudio/release-service:94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
1916,1923d1915
< ---
< apiVersion: appstudio.redhat.com/v1alpha1
< kind: ReleaseServiceConfig
< metadata:
<   name: release-service-config
<   namespace: release-service
< spec:
<   debug: false 
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
<h3>4: Staging changes from efa15eaf to cdcaf57a on Thu Mar 7 17:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index d9be3fcc..363f7f75 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
 
 namespace: release-service 
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
<h3>4: Development changes from efa15eaf to cdcaf57a on Thu Mar 7 17:28:11 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index d9be3fcc..363f7f75 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
+    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
 
 namespace: release-service 
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
