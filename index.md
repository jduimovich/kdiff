# kustomize changes tracked by commits 
### This file generated at Sat Jun 15 20:02:11 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5a7e4aeb to e95d2b11 on Fri Jun 14 14:45:56 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 85d020a6..086b1209 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -19,3 +19,10 @@ metadata:
   name: build-definitions
 spec:
   url: "https://github.com/konflux-ci/build-definitions"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: e2e-tests
+spec:
+  url: "https://github.com/konflux-ci/e2e-tests"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d425c77e..c224bede 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -8,13 +8,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-5a7e4aeb/production/components/konflux-ci/production/kustomize.out.yaml
298,306d297
<   name: e2e-tests
< spec:
<   url: https://github.com/konflux-ci/e2e-tests
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-5a7e4aeb/production/components/tekton-ci/production/kustomize.out.yaml
313a314,322
>   name: e2e-tests
> spec:
>   url: https://github.com/konflux-ci/e2e-tests
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 5a7e4aeb to e95d2b11 on Fri Jun 14 14:45:56 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 85d020a6..086b1209 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -19,3 +19,10 @@ metadata:
   name: build-definitions
 spec:
   url: "https://github.com/konflux-ci/build-definitions"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: e2e-tests
+spec:
+  url: "https://github.com/konflux-ci/e2e-tests"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d425c77e..c224bede 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -8,13 +8,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-5a7e4aeb/staging/components/konflux-ci/staging/kustomize.out.yaml
233,241d232
<   name: e2e-tests
< spec:
<   url: https://github.com/konflux-ci/e2e-tests
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-5a7e4aeb/staging/components/tekton-ci/staging/kustomize.out.yaml
241a242,250
>   name: e2e-tests
> spec:
>   url: https://github.com/konflux-ci/e2e-tests
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>1: Development changes from 5a7e4aeb to e95d2b11 on Fri Jun 14 14:45:56 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 85d020a6..086b1209 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -19,3 +19,10 @@ metadata:
   name: build-definitions
 spec:
   url: "https://github.com/konflux-ci/build-definitions"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: e2e-tests
+spec:
+  url: "https://github.com/konflux-ci/e2e-tests"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d425c77e..c224bede 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -8,13 +8,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
 spec: 
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
<h3>2: Production changes from bdb3a6c2 to 5a7e4aeb on Fri Jun 14 12:11:47 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-templates/production/e2e-quay-push-secret.yaml b/components/build-templates/production/e2e-quay-push-secret.yaml
index c2591eb6..bb865453 100644
--- a/components/build-templates/production/e2e-quay-push-secret.yaml
+++ b/components/build-templates/production/e2e-quay-push-secret.yaml
@@ -9,7 +9,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/tekton-ci/quay-push-secret
+        key: production/build/tekton-ci/quay-push-secret-konflux-ci
   refreshInterval: 15m
   secretStoreRef:
     kind: ClusterSecretStore 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-bdb3a6c2/production/components/build-templates/production/kustomize.out.yaml
187c187
<       key: production/build/tekton-ci/quay-push-secret-konflux-ci
---
>       key: production/build/tekton-ci/quay-push-secret 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from bdb3a6c2 to 5a7e4aeb on Fri Jun 14 12:11:47 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-templates/production/e2e-quay-push-secret.yaml b/components/build-templates/production/e2e-quay-push-secret.yaml
index c2591eb6..bb865453 100644
--- a/components/build-templates/production/e2e-quay-push-secret.yaml
+++ b/components/build-templates/production/e2e-quay-push-secret.yaml
@@ -9,7 +9,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/tekton-ci/quay-push-secret
+        key: production/build/tekton-ci/quay-push-secret-konflux-ci
   refreshInterval: 15m
   secretStoreRef:
     kind: ClusterSecretStore 
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
<h3>2: Development changes from bdb3a6c2 to 5a7e4aeb on Fri Jun 14 12:11:47 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-templates/production/e2e-quay-push-secret.yaml b/components/build-templates/production/e2e-quay-push-secret.yaml
index c2591eb6..bb865453 100644
--- a/components/build-templates/production/e2e-quay-push-secret.yaml
+++ b/components/build-templates/production/e2e-quay-push-secret.yaml
@@ -9,7 +9,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/tekton-ci/quay-push-secret
+        key: production/build/tekton-ci/quay-push-secret-konflux-ci
   refreshInterval: 15m
   secretStoreRef:
     kind: ClusterSecretStore 
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
<h3>3: Production changes from 7f14e443 to bdb3a6c2 on Thu Jun 13 15:37:57 2024 </h3>  
 
<details> 
<summary>Git Diff (95 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index 5bb216d6..f1fafc77 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -57,7 +57,7 @@ spec:
                   export -f deleteAndLog
                   xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
               imagePullPolicy: IfNotPresent
-              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
               volumeMounts:
                 - mountPath: /var/tmp
                   name: temp-directory
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 829e27ed..27ca5d85 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 4059480c..45d9d964 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 510828be..70d6f60b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,15 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
 
diff --git a/hack/preview.sh b/hack/preview.sh
index 6b1d2b04..4ade0b1d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
-[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
-[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7f14e443/production/components/release/production/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba
---
>         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
1911c1911
<             image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
---
>             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 7f14e443 to bdb3a6c2 on Thu Jun 13 15:37:57 2024 </h3>  
 
<details> 
<summary>Git Diff (95 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index 5bb216d6..f1fafc77 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -57,7 +57,7 @@ spec:
                   export -f deleteAndLog
                   xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
               imagePullPolicy: IfNotPresent
-              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
               volumeMounts:
                 - mountPath: /var/tmp
                   name: temp-directory
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 829e27ed..27ca5d85 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 4059480c..45d9d964 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 510828be..70d6f60b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,15 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
 
diff --git a/hack/preview.sh b/hack/preview.sh
index 6b1d2b04..4ade0b1d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
-[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
-[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7f14e443/staging/components/release/staging/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba
---
>         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
1911c1911
<             image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
---
>             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e 
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
<h3>3: Development changes from 7f14e443 to bdb3a6c2 on Thu Jun 13 15:37:57 2024 </h3>  
 
<details> 
<summary>Git Diff (95 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index 5bb216d6..f1fafc77 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -57,7 +57,7 @@ spec:
                   export -f deleteAndLog
                   xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
               imagePullPolicy: IfNotPresent
-              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
               volumeMounts:
                 - mountPath: /var/tmp
                   name: temp-directory
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 829e27ed..27ca5d85 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 4059480c..45d9d964 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 510828be..70d6f60b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,15 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
 
diff --git a/hack/preview.sh b/hack/preview.sh
index 6b1d2b04..4ade0b1d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
-[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
-[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7f14e443/development/components/release/development/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba
---
>         image: quay.io/redhat-appstudio/release-service:758a1d48d0020e8d9356c63924507d970411ebea
1911c1911
<             image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
---
>             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e 
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
<h3>4: Production changes from 84998a13 to 7f14e443 on Thu Jun 13 11:56:44 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index bc578308..2010e03d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
 
   dynamic.linux-fast-amd64.type: aws
   dynamic.linux-fast-amd64.region: us-east-1
-  dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-fast-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
   dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-fast-amd64.aws-secret: aws-account
@@ -66,7 +66,7 @@ data:
 
   dynamic.linux-extra-fast-amd64.type: aws
   dynamic.linux-extra-fast-amd64.region: us-east-1
-  dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-extra-fast-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
   dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-extra-fast-amd64.aws-secret: aws-account 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-84998a13/production/components/multi-platform-controller/production/kustomize.out.yaml
169c169
<   dynamic.linux-extra-fast-amd64.ami: ami-026ebd4cfe2c043b2
---
>   dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
182c182
<   dynamic.linux-fast-amd64.ami: ami-026ebd4cfe2c043b2
---
>   dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb 
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 84998a13 to 7f14e443 on Thu Jun 13 11:56:44 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index bc578308..2010e03d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
 
   dynamic.linux-fast-amd64.type: aws
   dynamic.linux-fast-amd64.region: us-east-1
-  dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-fast-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
   dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-fast-amd64.aws-secret: aws-account
@@ -66,7 +66,7 @@ data:
 
   dynamic.linux-extra-fast-amd64.type: aws
   dynamic.linux-extra-fast-amd64.region: us-east-1
-  dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-extra-fast-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
   dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-extra-fast-amd64.aws-secret: aws-account 
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
<h3>4: Development changes from 84998a13 to 7f14e443 on Thu Jun 13 11:56:44 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index bc578308..2010e03d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
 
   dynamic.linux-fast-amd64.type: aws
   dynamic.linux-fast-amd64.region: us-east-1
-  dynamic.linux-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-fast-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-fast-amd64.instance-type: c7a.8xlarge
   dynamic.linux-fast-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-fast-amd64.aws-secret: aws-account
@@ -66,7 +66,7 @@ data:
 
   dynamic.linux-extra-fast-amd64.type: aws
   dynamic.linux-extra-fast-amd64.region: us-east-1
-  dynamic.linux-extra-fast-amd64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-extra-fast-amd64.ami: ami-026ebd4cfe2c043b2
   dynamic.linux-extra-fast-amd64.instance-type: c7a.12xlarge
   dynamic.linux-extra-fast-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-extra-fast-amd64.aws-secret: aws-account 
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
