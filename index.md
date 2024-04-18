# kustomize changes tracked by commits 
### This file generated at Thu Apr 18 20:04:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6c50484c to 28d7b5c9 on Thu Apr 18 19:10:10 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/external-secrets/kustomization.yaml b/components/konflux-ci/base/external-secrets/kustomization.yaml
index 57bbd947..ddaee4a2 100644
--- a/components/konflux-ci/base/external-secrets/kustomization.yaml
+++ b/components/konflux-ci/base/external-secrets/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- quay-push-secret.yaml
 - quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
deleted file mode 100644
index 6f1237e1..00000000
--- a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quay-push-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/quay-push-secret
-  refreshInterval: 15m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quay-push-secret
-    template:
-      engineVersion: v2
-      type: kubernetes.io/dockerconfigjson
-      data:
-        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/serviceaccount.yaml b/components/konflux-ci/base/serviceaccount.yaml
index 4b4d59b9..ddfe2fe4 100644
--- a/components/konflux-ci/base/serviceaccount.yaml
+++ b/components/konflux-ci/base/serviceaccount.yaml
@@ -3,8 +3,8 @@ kind: ServiceAccount
 metadata:
   name: appstudio-pipeline
 secrets:
-  - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
   - name: registry-redhat-io-pull-secret
 imagePullSecrets:
-  - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
   - name: registry-redhat-io-pull-secret
diff --git a/components/konflux-ci/production/kustomization.yaml b/components/konflux-ci/production/kustomization.yaml
index ba934adf..58bbc82a 100644
--- a/components/konflux-ci/production/kustomization.yaml
+++ b/components/konflux-ci/production/kustomization.yaml
@@ -7,12 +7,6 @@ resources:
 - plnsvc-codecov-secret.yaml
 
 patches:
-  - path: quay-push-secret.yaml
-    target:
-      name: quay-push-secret
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
   - path: quay-push-secret-konflux-ci.yaml
     target:
       name: quay-push-secret-konflux-ci
diff --git a/components/konflux-ci/production/quay-push-secret.yaml b/components/konflux-ci/production/quay-push-secret.yaml
deleted file mode 100644
index b4fdd4c0..00000000
--- a/components/konflux-ci/production/quay-push-secret.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/build/tekton-ci/quay-push-secret
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index 74626764..e26e7cf0 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
-- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
deleted file mode 100644
index 2d67489c..00000000
--- a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quay-push-secret-konflux-ci
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
-  refreshInterval: 15m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quay-push-secret-konflux-ci
-    template:
-      engineVersion: v2
-      type: kubernetes.io/dockerconfigjson
-      data:
-        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index ba934adf..65cd79ed 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,12 +13,6 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: quay-push-secret-konflux-ci.yaml
-    target:
-      name: quay-push-secret-konflux-ci
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
deleted file mode 100644
index 8a3590aa..00000000
--- a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (64 lines)</summary>  

``` 
./commit-6c50484c/production/components/konflux-ci/production/kustomize.out.yaml
11c11
< - name: quay-push-secret-konflux-ci
---
> - name: quay-push-secret
19c19
< - name: quay-push-secret-konflux-ci
---
> - name: quay-push-secret
114a115,140
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: quay-push-secret
>   namespace: konflux-ci
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/tekton-ci/quay-push-secret
>   refreshInterval: 15m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: quay-push-secret
>     template:
>       data:
>         .dockerconfigjson: '{{ .config }}'
>       engineVersion: v2
>       type: kubernetes.io/dockerconfigjson
./commit-6c50484c/production/components/tekton-ci/production/kustomize.out.yaml
147a148,173
>   name: quay-push-secret-konflux-ci
>   namespace: tekton-ci
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/tekton-ci/quay-push-secret-konflux-ci
>   refreshInterval: 15m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: quay-push-secret-konflux-ci
>     template:
>       data:
>         .dockerconfigjson: '{{ .config }}'
>       engineVersion: v2
>       type: kubernetes.io/dockerconfigjson
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 6c50484c to 28d7b5c9 on Thu Apr 18 19:10:10 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/external-secrets/kustomization.yaml b/components/konflux-ci/base/external-secrets/kustomization.yaml
index 57bbd947..ddaee4a2 100644
--- a/components/konflux-ci/base/external-secrets/kustomization.yaml
+++ b/components/konflux-ci/base/external-secrets/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- quay-push-secret.yaml
 - quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
deleted file mode 100644
index 6f1237e1..00000000
--- a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quay-push-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/quay-push-secret
-  refreshInterval: 15m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quay-push-secret
-    template:
-      engineVersion: v2
-      type: kubernetes.io/dockerconfigjson
-      data:
-        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/serviceaccount.yaml b/components/konflux-ci/base/serviceaccount.yaml
index 4b4d59b9..ddfe2fe4 100644
--- a/components/konflux-ci/base/serviceaccount.yaml
+++ b/components/konflux-ci/base/serviceaccount.yaml
@@ -3,8 +3,8 @@ kind: ServiceAccount
 metadata:
   name: appstudio-pipeline
 secrets:
-  - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
   - name: registry-redhat-io-pull-secret
 imagePullSecrets:
-  - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
   - name: registry-redhat-io-pull-secret
diff --git a/components/konflux-ci/production/kustomization.yaml b/components/konflux-ci/production/kustomization.yaml
index ba934adf..58bbc82a 100644
--- a/components/konflux-ci/production/kustomization.yaml
+++ b/components/konflux-ci/production/kustomization.yaml
@@ -7,12 +7,6 @@ resources:
 - plnsvc-codecov-secret.yaml
 
 patches:
-  - path: quay-push-secret.yaml
-    target:
-      name: quay-push-secret
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
   - path: quay-push-secret-konflux-ci.yaml
     target:
       name: quay-push-secret-konflux-ci
diff --git a/components/konflux-ci/production/quay-push-secret.yaml b/components/konflux-ci/production/quay-push-secret.yaml
deleted file mode 100644
index b4fdd4c0..00000000
--- a/components/konflux-ci/production/quay-push-secret.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/build/tekton-ci/quay-push-secret
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index 74626764..e26e7cf0 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
-- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
deleted file mode 100644
index 2d67489c..00000000
--- a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quay-push-secret-konflux-ci
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
-  refreshInterval: 15m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quay-push-secret-konflux-ci
-    template:
-      engineVersion: v2
-      type: kubernetes.io/dockerconfigjson
-      data:
-        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index ba934adf..65cd79ed 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,12 +13,6 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: quay-push-secret-konflux-ci.yaml
-    target:
-      name: quay-push-secret-konflux-ci
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
deleted file mode 100644
index 8a3590aa..00000000
--- a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (64 lines)</summary>  

``` 
./commit-6c50484c/staging/components/konflux-ci/staging/kustomize.out.yaml
11c11
< - name: quay-push-secret-konflux-ci
---
> - name: quay-push-secret
19c19
< - name: quay-push-secret-konflux-ci
---
> - name: quay-push-secret
114a115,140
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: quay-push-secret
>   namespace: konflux-ci
> spec:
>   dataFrom:
>   - extract:
>       key: staging/build/tekton-ci/quay-push-secret
>   refreshInterval: 15m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: quay-push-secret
>     template:
>       data:
>         .dockerconfigjson: '{{ .config }}'
>       engineVersion: v2
>       type: kubernetes.io/dockerconfigjson
./commit-6c50484c/staging/components/tekton-ci/staging/kustomize.out.yaml
147a148,173
>   name: quay-push-secret-konflux-ci
>   namespace: tekton-ci
> spec:
>   dataFrom:
>   - extract:
>       key: staging/build/tekton-ci/quay-push-secret-konflux-ci
>   refreshInterval: 15m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: quay-push-secret-konflux-ci
>     template:
>       data:
>         .dockerconfigjson: '{{ .config }}'
>       engineVersion: v2
>       type: kubernetes.io/dockerconfigjson
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 6c50484c to 28d7b5c9 on Thu Apr 18 19:10:10 2024 </h3>  
 
<details> 
<summary>Git Diff (153 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/external-secrets/kustomization.yaml b/components/konflux-ci/base/external-secrets/kustomization.yaml
index 57bbd947..ddaee4a2 100644
--- a/components/konflux-ci/base/external-secrets/kustomization.yaml
+++ b/components/konflux-ci/base/external-secrets/kustomization.yaml
@@ -1,7 +1,6 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- quay-push-secret.yaml
 - quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
diff --git a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml b/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
deleted file mode 100644
index 6f1237e1..00000000
--- a/components/konflux-ci/base/external-secrets/quay-push-secret.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quay-push-secret
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/quay-push-secret
-  refreshInterval: 15m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quay-push-secret
-    template:
-      engineVersion: v2
-      type: kubernetes.io/dockerconfigjson
-      data:
-        .dockerconfigjson: "{{ .config }}"
diff --git a/components/konflux-ci/base/serviceaccount.yaml b/components/konflux-ci/base/serviceaccount.yaml
index 4b4d59b9..ddfe2fe4 100644
--- a/components/konflux-ci/base/serviceaccount.yaml
+++ b/components/konflux-ci/base/serviceaccount.yaml
@@ -3,8 +3,8 @@ kind: ServiceAccount
 metadata:
   name: appstudio-pipeline
 secrets:
-  - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
   - name: registry-redhat-io-pull-secret
 imagePullSecrets:
-  - name: quay-push-secret
+  - name: quay-push-secret-konflux-ci
   - name: registry-redhat-io-pull-secret
diff --git a/components/konflux-ci/production/kustomization.yaml b/components/konflux-ci/production/kustomization.yaml
index ba934adf..58bbc82a 100644
--- a/components/konflux-ci/production/kustomization.yaml
+++ b/components/konflux-ci/production/kustomization.yaml
@@ -7,12 +7,6 @@ resources:
 - plnsvc-codecov-secret.yaml
 
 patches:
-  - path: quay-push-secret.yaml
-    target:
-      name: quay-push-secret
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
   - path: quay-push-secret-konflux-ci.yaml
     target:
       name: quay-push-secret-konflux-ci
diff --git a/components/konflux-ci/production/quay-push-secret.yaml b/components/konflux-ci/production/quay-push-secret.yaml
deleted file mode 100644
index b4fdd4c0..00000000
--- a/components/konflux-ci/production/quay-push-secret.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/build/tekton-ci/quay-push-secret
diff --git a/components/tekton-ci/base/external-secrets/kustomization.yaml b/components/tekton-ci/base/external-secrets/kustomization.yaml
index 74626764..e26e7cf0 100644
--- a/components/tekton-ci/base/external-secrets/kustomization.yaml
+++ b/components/tekton-ci/base/external-secrets/kustomization.yaml
@@ -2,7 +2,6 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quay-push-secret.yaml
-- quay-push-secret-konflux-ci.yaml
 - infra-deployments-pr-creator.yaml
 - snyk-shared-token.yaml
 - slack-webhook-notification-secret.yaml
diff --git a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
deleted file mode 100644
index 2d67489c..00000000
--- a/components/tekton-ci/base/external-secrets/quay-push-secret-konflux-ci.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: quay-push-secret-konflux-ci
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: staging/build/tekton-ci/quay-push-secret-konflux-ci
-  refreshInterval: 15m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: quay-push-secret-konflux-ci
-    template:
-      engineVersion: v2
-      type: kubernetes.io/dockerconfigjson
-      data:
-        .dockerconfigjson: "{{ .config }}"
diff --git a/components/tekton-ci/production/kustomization.yaml b/components/tekton-ci/production/kustomization.yaml
index ba934adf..65cd79ed 100644
--- a/components/tekton-ci/production/kustomization.yaml
+++ b/components/tekton-ci/production/kustomization.yaml
@@ -13,12 +13,6 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: quay-push-secret-konflux-ci.yaml
-    target:
-      name: quay-push-secret-konflux-ci
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
   - path: infra-deployments-pr-creator.yaml
     target:
       name: infra-deployments-pr-creator
diff --git a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml b/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
deleted file mode 100644
index 8a3590aa..00000000
--- a/components/tekton-ci/production/quay-push-secret-konflux-ci.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: add
-  path: /spec/dataFrom/0/extract/key
-  value: production/build/tekton-ci/quay-push-secret-konflux-ci 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from b069469e to 6c50484c on Thu Apr 18 15:36:12 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d8445be6..9f163af7 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b069469e/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
266c266
<             memory: 2Gi
---
>             memory: 512Mi
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
474d473
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from b069469e to 6c50484c on Thu Apr 18 15:36:12 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d8445be6..9f163af7 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b069469e/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
256c256
<             memory: 2Gi
---
>             memory: 512Mi
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
418d417
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from b069469e to 6c50484c on Thu Apr 18 15:36:12 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d8445be6..9f163af7 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=c528daeafa497195049316087828594ab988ccc1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=c528daeafa497195049316087828594ab988ccc1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
+  newTag: c528daeafa497195049316087828594ab988ccc1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-b069469e/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
218c218
<             memory: 2Gi
---
>             memory: 512Mi
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:c528daeafa497195049316087828594ab988ccc1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:7fa3f6078eb68151d52bd98f36e5cd990b29dd0c
311d310
<       ssh -i /tmp/master_key -o StrictHostKeyChecking=no $SSH_HOST sudo killall -9 -u $USERNAME 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 9a21a900 to b069469e on Thu Apr 18 15:11:46 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d0fb6aff..e7c3810f 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index d20cbd53..d82e7423 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 9a21a900 to b069469e on Thu Apr 18 15:11:46 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d0fb6aff..e7c3810f 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index d20cbd53..d82e7423 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9a21a900/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
694c694
<         image: quay.io/redhat-appstudio/build-service:c214c7ecad9e2b65834089c123d89d8157ad078c
---
>         image: quay.io/redhat-appstudio/build-service:6185859e63a32de41a8e436a8daa1ac3a5b1f364 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 9a21a900 to b069469e on Thu Apr 18 15:11:46 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index d0fb6aff..e7c3810f 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index d20cbd53..d82e7423 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=6185859e63a32de41a8e436a8daa1ac3a5b1f364
+- https://github.com/redhat-appstudio/build-service/config/default?ref=c214c7ecad9e2b65834089c123d89d8157ad078c
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 6185859e63a32de41a8e436a8daa1ac3a5b1f364
+  newTag: c214c7ecad9e2b65834089c123d89d8157ad078c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9a21a900/development/components/build-service/development/kustomize.out.yaml
689c689
<         image: quay.io/redhat-appstudio/build-service:c214c7ecad9e2b65834089c123d89d8157ad078c
---
>         image: quay.io/redhat-appstudio/build-service:6185859e63a32de41a8e436a8daa1ac3a5b1f364 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from c551c479 to 9a21a900 on Thu Apr 18 13:57:33 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d6133dd2..5f158d66 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e857d6b3..31d1e577 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c551c479 to 9a21a900 on Thu Apr 18 13:57:33 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d6133dd2..5f158d66 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e857d6b3..31d1e577 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c551c479/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1207c1207
<         image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>         image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
1298c1298
<             image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>             image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from c551c479 to 9a21a900 on Thu Apr 18 13:57:33 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d6133dd2..5f158d66 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e857d6b3..31d1e577 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
-- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=8fca27abeb6959d04fa71dd19b330550ed38308e
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: c0eece85870ab816ab3637ca4d08b3dae76ad556
+  newTag: 8fca27abeb6959d04fa71dd19b330550ed38308e
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-c551c479/development/components/integration/development/kustomize.out.yaml
1205c1205
<         image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>         image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556
1299c1299
<             image: quay.io/redhat-appstudio/integration-service:8fca27abeb6959d04fa71dd19b330550ed38308e
---
>             image: quay.io/redhat-appstudio/integration-service:c0eece85870ab816ab3637ca4d08b3dae76ad556 
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
```
 
</details> 
<br> 


</div>
