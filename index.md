# kustomize changes tracked by commits 
### This file generated at Fri Mar 15 04:02:18 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a72fb086 to aeabac35 on Thu Mar 14 14:28:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 4b4d59b9..a4f0e49a 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -5,6 +5,8 @@ metadata:
 secrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
+  - name: quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a72fb086/production/components/tekton-ci/production/kustomize.out.yaml
13d12
< - name: quay-push-secret-konflux-ci
22d20
< - name: quay-push-secret-konflux-ci 
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
<h3>1: Staging changes from a72fb086 to aeabac35 on Thu Mar 14 14:28:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 4b4d59b9..a4f0e49a 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -5,6 +5,8 @@ metadata:
 secrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
+  - name: quay-push-secret-konflux-ci 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a72fb086/staging/components/tekton-ci/staging/kustomize.out.yaml
13d12
< - name: quay-push-secret-konflux-ci
22d20
< - name: quay-push-secret-konflux-ci 
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
<h3>1: Development changes from a72fb086 to aeabac35 on Thu Mar 14 14:28:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 4b4d59b9..a4f0e49a 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -5,6 +5,8 @@ metadata:
 secrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
+  - name: quay-push-secret-konflux-ci
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret
+  - name: quay-push-secret-konflux-ci 
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
<h3>2: Production changes from 185923a7 to a72fb086 on Thu Mar 14 13:44:00 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index d8a919d7..2a4f99d1 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
 components:
   - ../../rh-certs
 
diff --git a/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..111044af
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/github-app
\ No newline at end of file
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index d8a919d7..2a4f99d1 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..b7b8b585
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/github-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-185923a7/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1318c1318
<       key: production/pipeline-service/stone-prod-p01/github-app
---
>       key: production/pipeline-service/github-app 
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
<h3>2: Staging changes from 185923a7 to a72fb086 on Thu Mar 14 13:44:00 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index d8a919d7..2a4f99d1 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
 components:
   - ../../rh-certs
 
diff --git a/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..111044af
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/github-app
\ No newline at end of file
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index d8a919d7..2a4f99d1 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..b7b8b585
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/github-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-185923a7/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1318c1318
<       key: staging/pipeline-service/stone-stage-p01/github-app
---
>       key: staging/pipeline-service/github-app 
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
<h3>2: Development changes from 185923a7 to a72fb086 on Thu Mar 14 13:44:00 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index d8a919d7..2a4f99d1 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
 components:
   - ../../rh-certs
 
diff --git a/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..111044af
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/stone-prod-p01/github-app
\ No newline at end of file
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index d8a919d7..2a4f99d1 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml b/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..b7b8b585
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: staging/pipeline-service/stone-stage-p01/github-app
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 105f82cf to 185923a7 on Thu Mar 14 11:04:30 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
new file mode 100644
index 00000000..d93979e2
--- /dev/null
+++ b/components/gitops/development/core_service_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-core-service-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 100m
+            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
new file mode 100644
index 00000000..1ee73e1a
--- /dev/null
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -0,0 +1,11 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ArgoCD
+metadata:
+  name: gitops-service-argocd
+  namespace: gitops-service-argocd
+spec:
+  repo:
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 322bdd57..ddfcf202 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,3 +9,8 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
+
+patches:
+  - path: core_service_resources_patch.yaml
+  - path: service_agent_resources_patch.yaml
+  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
new file mode 100644
index 00000000..c9ed7fdd
--- /dev/null
+++ b/components/gitops/development/service_agent_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-service-agent-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 50m
+            memory: 100Mi 
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
<h3>3: Staging changes from 105f82cf to 185923a7 on Thu Mar 14 11:04:30 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
new file mode 100644
index 00000000..d93979e2
--- /dev/null
+++ b/components/gitops/development/core_service_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-core-service-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 100m
+            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
new file mode 100644
index 00000000..1ee73e1a
--- /dev/null
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -0,0 +1,11 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ArgoCD
+metadata:
+  name: gitops-service-argocd
+  namespace: gitops-service-argocd
+spec:
+  repo:
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 322bdd57..ddfcf202 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,3 +9,8 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
+
+patches:
+  - path: core_service_resources_patch.yaml
+  - path: service_agent_resources_patch.yaml
+  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
new file mode 100644
index 00000000..c9ed7fdd
--- /dev/null
+++ b/components/gitops/development/service_agent_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-service-agent-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 50m
+            memory: 100Mi 
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
<h3>3: Development changes from 105f82cf to 185923a7 on Thu Mar 14 11:04:30 2024 </h3>  
 
<details> 
<summary>Git Diff (73 lines)</summary>  

``` 
diff --git a/components/gitops/development/core_service_resources_patch.yaml b/components/gitops/development/core_service_resources_patch.yaml
new file mode 100644
index 00000000..d93979e2
--- /dev/null
+++ b/components/gitops/development/core_service_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-core-service-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 100m
+            memory: 100Mi
diff --git a/components/gitops/development/gitops-service-argocd.yaml b/components/gitops/development/gitops-service-argocd.yaml
new file mode 100644
index 00000000..1ee73e1a
--- /dev/null
+++ b/components/gitops/development/gitops-service-argocd.yaml
@@ -0,0 +1,11 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ArgoCD
+metadata:
+  name: gitops-service-argocd
+  namespace: gitops-service-argocd
+spec:
+  repo:
+    resources:
+      requests:
+        cpu: 100m
+        memory: 100Mi
\ No newline at end of file
diff --git a/components/gitops/development/kustomization.yaml b/components/gitops/development/kustomization.yaml
index 322bdd57..ddfcf202 100644
--- a/components/gitops/development/kustomization.yaml
+++ b/components/gitops/development/kustomization.yaml
@@ -9,3 +9,8 @@ images:
   - name: \${COMMON_IMAGE}
     newName: quay.io/redhat-appstudio/gitops-service
     newTag: 87e1f9acc67bf033d2159951ba6489f0836586ef
+
+patches:
+  - path: core_service_resources_patch.yaml
+  - path: service_agent_resources_patch.yaml
+  - path: gitops-service-argocd.yaml
diff --git a/components/gitops/development/service_agent_resources_patch.yaml b/components/gitops/development/service_agent_resources_patch.yaml
new file mode 100644
index 00000000..c9ed7fdd
--- /dev/null
+++ b/components/gitops/development/service_agent_resources_patch.yaml
@@ -0,0 +1,15 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: gitops-service-agent-controller-manager
+  namespace: gitops
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          requests:
+            cpu: 50m
+            memory: 100Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-105f82cf/development/components/gitops/development/kustomize.out.yaml
2484,2485c2484,2485
<             cpu: 100m
<             memory: 100Mi
---
>             cpu: 1000m
>             memory: 2400Mi
2589,2590c2589,2590
<             cpu: 50m
<             memory: 100Mi
---
>             cpu: 200m
>             memory: 300Mi
2835,2836c2835,2836
<         cpu: 100m
<         memory: 100Mi
---
>         cpu: 500m
>         memory: 512Mi 
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
<h3>4: Production changes from 761f54ce to 105f82cf on Thu Mar 14 08:14:50 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 109dd851..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,6 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-761f54ce/production/components/tekton-ci/production/kustomize.out.yaml
20d19
< - name: registry-redhat-io-pull-secret 
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
<h3>4: Staging changes from 761f54ce to 105f82cf on Thu Mar 14 08:14:50 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 109dd851..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,6 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-761f54ce/staging/components/tekton-ci/staging/kustomize.out.yaml
20d19
< - name: registry-redhat-io-pull-secret 
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
<h3>4: Development changes from 761f54ce to 105f82cf on Thu Mar 14 08:14:50 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/serviceaccount.yaml b/components/tekton-ci/base/serviceaccount.yaml
index 109dd851..4b4d59b9 100644
--- a/components/tekton-ci/base/serviceaccount.yaml
+++ b/components/tekton-ci/base/serviceaccount.yaml
@@ -4,6 +4,7 @@ metadata:
   name: appstudio-pipeline
 secrets:
   - name: quay-push-secret
+  - name: registry-redhat-io-pull-secret
 imagePullSecrets:
   - name: quay-push-secret
   - name: registry-redhat-io-pull-secret 
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
