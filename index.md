# kustomize changes tracked by commits 
### This file generated at Mon Jul 15 16:08:29 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9081e6c9 to a4ca03e9 on Mon Jul 15 15:10:42 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index cc990173..96e1ea98 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -39,4 +39,11 @@ kind: Repository
 metadata:
   name: pipeline-service
 spec:
-  url: "https://github.com/openshift-pipelines/pipeline-service"
\ No newline at end of file
+  url: "https://github.com/openshift-pipelines/pipeline-service"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: tekton-results
+spec:
+  url: "https://github.com/openshift-pipelines/tektoncd-results"
\ No newline at end of file
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d2498893..6a55ab9a 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: tekton-results
-spec:
-  url: "https://github.com/openshift-pipelines/tektoncd-results"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-9081e6c9/production/components/konflux-ci/production/kustomize.out.yaml
328,336d327
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-results
< spec:
<   url: https://github.com/openshift-pipelines/tektoncd-results
./commit-9081e6c9/production/components/tekton-ci/production/kustomize.out.yaml
352a353,361
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: tekton-results
> spec:
>   url: https://github.com/openshift-pipelines/tektoncd-results 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 9081e6c9 to a4ca03e9 on Mon Jul 15 15:10:42 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index cc990173..96e1ea98 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -39,4 +39,11 @@ kind: Repository
 metadata:
   name: pipeline-service
 spec:
-  url: "https://github.com/openshift-pipelines/pipeline-service"
\ No newline at end of file
+  url: "https://github.com/openshift-pipelines/pipeline-service"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: tekton-results
+spec:
+  url: "https://github.com/openshift-pipelines/tektoncd-results"
\ No newline at end of file
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d2498893..6a55ab9a 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: tekton-results
-spec:
-  url: "https://github.com/openshift-pipelines/tektoncd-results"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-9081e6c9/staging/components/konflux-ci/staging/kustomize.out.yaml
263,271d262
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-results
< spec:
<   url: https://github.com/openshift-pipelines/tektoncd-results
./commit-9081e6c9/staging/components/tekton-ci/staging/kustomize.out.yaml
280a281,289
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>   name: tekton-results
> spec:
>   url: https://github.com/openshift-pipelines/tektoncd-results 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 9081e6c9 to a4ca03e9 on Mon Jul 15 15:10:42 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index cc990173..96e1ea98 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -39,4 +39,11 @@ kind: Repository
 metadata:
   name: pipeline-service
 spec:
-  url: "https://github.com/openshift-pipelines/pipeline-service"
\ No newline at end of file
+  url: "https://github.com/openshift-pipelines/pipeline-service"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: tekton-results
+spec:
+  url: "https://github.com/openshift-pipelines/tektoncd-results"
\ No newline at end of file
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d2498893..6a55ab9a 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: tekton-results
-spec:
-  url: "https://github.com/openshift-pipelines/tektoncd-results"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: gitops-repo-pruner
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
<h3>2: Production changes from e7dbe7aa to 9081e6c9 on Mon Jul 15 13:48:10 2024 </h3>  
 
<details> 
<summary>Git Diff (68 lines)</summary>  

``` 
diff --git a/components/has/k-components/replicas-patch/kustomization.yaml b/components/has/k-components/replicas-patch/kustomization.yaml
deleted file mode 100644
index 570fc00d..00000000
--- a/components/has/k-components/replicas-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: ./replicas_patch.yaml
\ No newline at end of file
diff --git a/components/has/k-components/replicas-patch/replicas_patch.yaml b/components/has/k-components/replicas-patch/replicas_patch.yaml
deleted file mode 100644
index 2eead3a1..00000000
--- a/components/has/k-components/replicas-patch/replicas_patch.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-spec:
-  replicas: 3
-  template:
-    metadata:
-      labels:
-        app: application-service-controller-manager
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-          - weight: 100
-            podAffinityTerm:
-              labelSelector:
-                matchExpressions:
-                - key: app
-                  operator: In
-                  values:
-                  - application-service-controller-manager
-              topologyKey: kubernetes.io/hostname
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 944a4691..95a21944 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -10,7 +10,6 @@ resources:
 components:
   - ../k-components/manager-resources
   - ../k-components/enable-profiling
-  - ../k-components/replicas-patch
 
 images:
   - name: quay.io/redhat-appstudio/application-service
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 84334f75..74f7299f 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -7,9 +7,6 @@ resources:
   - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
-components:
-  - ../k-components/replicas-patch
-
 configMapGenerator:
   - literals:
       - GITHUB_ORG="redhat-appstudio-appdata-staging" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-e7dbe7aa/production/components/has/production/kustomize.out.yaml
706c706
<   replicas: 1
---
>   replicas: 3
712a713
>         app: application-service-controller-manager
714a716,727
>       affinity:
>         podAntiAffinity:
>           preferredDuringSchedulingIgnoredDuringExecution:
>           - podAffinityTerm:
>               labelSelector:
>                 matchExpressions:
>                 - key: app
>                   operator: In
>                   values:
>                   - application-service-controller-manager
>               topologyKey: kubernetes.io/hostname
>             weight: 100 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from e7dbe7aa to 9081e6c9 on Mon Jul 15 13:48:10 2024 </h3>  
 
<details> 
<summary>Git Diff (68 lines)</summary>  

``` 
diff --git a/components/has/k-components/replicas-patch/kustomization.yaml b/components/has/k-components/replicas-patch/kustomization.yaml
deleted file mode 100644
index 570fc00d..00000000
--- a/components/has/k-components/replicas-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: ./replicas_patch.yaml
\ No newline at end of file
diff --git a/components/has/k-components/replicas-patch/replicas_patch.yaml b/components/has/k-components/replicas-patch/replicas_patch.yaml
deleted file mode 100644
index 2eead3a1..00000000
--- a/components/has/k-components/replicas-patch/replicas_patch.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-spec:
-  replicas: 3
-  template:
-    metadata:
-      labels:
-        app: application-service-controller-manager
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-          - weight: 100
-            podAffinityTerm:
-              labelSelector:
-                matchExpressions:
-                - key: app
-                  operator: In
-                  values:
-                  - application-service-controller-manager
-              topologyKey: kubernetes.io/hostname
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 944a4691..95a21944 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -10,7 +10,6 @@ resources:
 components:
   - ../k-components/manager-resources
   - ../k-components/enable-profiling
-  - ../k-components/replicas-patch
 
 images:
   - name: quay.io/redhat-appstudio/application-service
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 84334f75..74f7299f 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -7,9 +7,6 @@ resources:
   - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
-components:
-  - ../k-components/replicas-patch
-
 configMapGenerator:
   - literals:
       - GITHUB_ORG="redhat-appstudio-appdata-staging" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-e7dbe7aa/staging/components/has/staging/kustomize.out.yaml
733c733
<   replicas: 1
---
>   replicas: 3
739a740
>         app: application-service-controller-manager
741a743,754
>       affinity:
>         podAntiAffinity:
>           preferredDuringSchedulingIgnoredDuringExecution:
>           - podAffinityTerm:
>               labelSelector:
>                 matchExpressions:
>                 - key: app
>                   operator: In
>                   values:
>                   - application-service-controller-manager
>               topologyKey: kubernetes.io/hostname
>             weight: 100 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from e7dbe7aa to 9081e6c9 on Mon Jul 15 13:48:10 2024 </h3>  
 
<details> 
<summary>Git Diff (68 lines)</summary>  

``` 
diff --git a/components/has/k-components/replicas-patch/kustomization.yaml b/components/has/k-components/replicas-patch/kustomization.yaml
deleted file mode 100644
index 570fc00d..00000000
--- a/components/has/k-components/replicas-patch/kustomization.yaml
+++ /dev/null
@@ -1,5 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1alpha1
-kind: Component
-
-patches:
-  - path: ./replicas_patch.yaml
\ No newline at end of file
diff --git a/components/has/k-components/replicas-patch/replicas_patch.yaml b/components/has/k-components/replicas-patch/replicas_patch.yaml
deleted file mode 100644
index 2eead3a1..00000000
--- a/components/has/k-components/replicas-patch/replicas_patch.yaml
+++ /dev/null
@@ -1,24 +0,0 @@
-apiVersion: apps/v1
-kind: Deployment
-metadata:
-  name: controller-manager
-  namespace: system
-spec:
-  replicas: 3
-  template:
-    metadata:
-      labels:
-        app: application-service-controller-manager
-    spec:
-      affinity:
-        podAntiAffinity:
-          preferredDuringSchedulingIgnoredDuringExecution:
-          - weight: 100
-            podAffinityTerm:
-              labelSelector:
-                matchExpressions:
-                - key: app
-                  operator: In
-                  values:
-                  - application-service-controller-manager
-              topologyKey: kubernetes.io/hostname
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 944a4691..95a21944 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -10,7 +10,6 @@ resources:
 components:
   - ../k-components/manager-resources
   - ../k-components/enable-profiling
-  - ../k-components/replicas-patch
 
 images:
   - name: quay.io/redhat-appstudio/application-service
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 84334f75..74f7299f 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -7,9 +7,6 @@ resources:
   - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=338ad7f4e3577aa7c9b5be293a97689d84a28442
 
 
-components:
-  - ../k-components/replicas-patch
-
 configMapGenerator:
   - literals:
       - GITHUB_ORG="redhat-appstudio-appdata-staging" 
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
<h3>3: Production changes from cb5c5361 to e7dbe7aa on Mon Jul 15 12:53:11 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index f73a3722..8621b2d5 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/default?ref=a327e4f19985d08297af74302b2c1a556a79b864
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a327e4f19985d08297af74302b2c1a556a79b864
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
+  newTag: a327e4f19985d08297af74302b2c1a556a79b864
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-cb5c5361/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:a327e4f19985d08297af74302b2c1a556a79b864
---
>         image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:a327e4f19985d08297af74302b2c1a556a79b864
---
>             image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
./commit-cb5c5361/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:a327e4f19985d08297af74302b2c1a556a79b864
---
>         image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:a327e4f19985d08297af74302b2c1a556a79b864
---
>             image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from cb5c5361 to e7dbe7aa on Mon Jul 15 12:53:11 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index f73a3722..8621b2d5 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/default?ref=a327e4f19985d08297af74302b2c1a556a79b864
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a327e4f19985d08297af74302b2c1a556a79b864
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
+  newTag: a327e4f19985d08297af74302b2c1a556a79b864
 
 configMapGenerator:
 - name: integration-config 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from cb5c5361 to e7dbe7aa on Mon Jul 15 12:53:11 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index f73a3722..8621b2d5 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/default?ref=a327e4f19985d08297af74302b2c1a556a79b864
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=a327e4f19985d08297af74302b2c1a556a79b864
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
+  newTag: a327e4f19985d08297af74302b2c1a556a79b864
 
 configMapGenerator:
 - name: integration-config 
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
<h3>4: Production changes from 3fe3170a to cb5c5361 on Mon Jul 15 12:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index aef9e370..043462b9 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -50,6 +50,33 @@ spec:
       app: sso
   realm:
     clientScopes:
+      - name: first-and-last-name
+        protocol: openid-connect
+        protocolMappers:
+          - name: first_name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            config:
+              user.attribute: firstName
+              claim.name: first_name
+              jsonType.label: String
+              id.token.claim: 'true'
+              access.token.claim: 'true'
+              lightweight.claim: 'false'
+              userinfo.token.claim: 'true'
+              introspection.token.claim: 'true'
+          - name: last_name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            config:
+              user.attribute: lastName
+              claim.name: last_name
+              jsonType.label: String
+              id.token.claim: 'true'
+              access.token.claim: 'true'
+              lightweight.claim: 'false'
+              userinfo.token.claim: 'true'
+              introspection.token.claim: 'true'
       - attributes:
           display.on.consent.screen: 'true'
           include.in.token.scope: 'true'
@@ -310,6 +337,7 @@ spec:
       - profile
       - roles
       - email
+      - first-and-last-name
     implicitFlowEnabled: false
     secret: client-secret
     publicClient: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-3fe3170a/production/components/keycloak/production/stone-prod-p02/kustomize.out.yaml
99d98
<     - first-and-last-name
138,164d136
<     - name: first-and-last-name
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: first_name
<           id.token.claim: "true"
<           introspection.token.claim: "true"
<           jsonType.label: String
<           lightweight.claim: "false"
<           user.attribute: firstName
<           userinfo.token.claim: "true"
<         name: first_name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: last_name
<           id.token.claim: "true"
<           introspection.token.claim: "true"
<           jsonType.label: String
<           lightweight.claim: "false"
<           user.attribute: lastName
<           userinfo.token.claim: "true"
<         name: last_name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 3fe3170a to cb5c5361 on Mon Jul 15 12:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index aef9e370..043462b9 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -50,6 +50,33 @@ spec:
       app: sso
   realm:
     clientScopes:
+      - name: first-and-last-name
+        protocol: openid-connect
+        protocolMappers:
+          - name: first_name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            config:
+              user.attribute: firstName
+              claim.name: first_name
+              jsonType.label: String
+              id.token.claim: 'true'
+              access.token.claim: 'true'
+              lightweight.claim: 'false'
+              userinfo.token.claim: 'true'
+              introspection.token.claim: 'true'
+          - name: last_name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            config:
+              user.attribute: lastName
+              claim.name: last_name
+              jsonType.label: String
+              id.token.claim: 'true'
+              access.token.claim: 'true'
+              lightweight.claim: 'false'
+              userinfo.token.claim: 'true'
+              introspection.token.claim: 'true'
       - attributes:
           display.on.consent.screen: 'true'
           include.in.token.scope: 'true'
@@ -310,6 +337,7 @@ spec:
       - profile
       - roles
       - email
+      - first-and-last-name
     implicitFlowEnabled: false
     secret: client-secret
     publicClient: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-3fe3170a/staging/components/keycloak/staging/stone-stage-p01/kustomize.out.yaml
99d98
<     - first-and-last-name
138,164d136
<     - name: first-and-last-name
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: first_name
<           id.token.claim: "true"
<           introspection.token.claim: "true"
<           jsonType.label: String
<           lightweight.claim: "false"
<           user.attribute: firstName
<           userinfo.token.claim: "true"
<         name: first_name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: last_name
<           id.token.claim: "true"
<           introspection.token.claim: "true"
<           jsonType.label: String
<           lightweight.claim: "false"
<           user.attribute: lastName
<           userinfo.token.claim: "true"
<         name: last_name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 3fe3170a to cb5c5361 on Mon Jul 15 12:20:12 2024 </h3>  
 
<details> 
<summary>Git Diff (46 lines)</summary>  

``` 
diff --git a/components/keycloak/base/configure-keycloak.yaml b/components/keycloak/base/configure-keycloak.yaml
index aef9e370..043462b9 100644
--- a/components/keycloak/base/configure-keycloak.yaml
+++ b/components/keycloak/base/configure-keycloak.yaml
@@ -50,6 +50,33 @@ spec:
       app: sso
   realm:
     clientScopes:
+      - name: first-and-last-name
+        protocol: openid-connect
+        protocolMappers:
+          - name: first_name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            config:
+              user.attribute: firstName
+              claim.name: first_name
+              jsonType.label: String
+              id.token.claim: 'true'
+              access.token.claim: 'true'
+              lightweight.claim: 'false'
+              userinfo.token.claim: 'true'
+              introspection.token.claim: 'true'
+          - name: last_name
+            protocol: openid-connect
+            protocolMapper: oidc-usermodel-property-mapper
+            config:
+              user.attribute: lastName
+              claim.name: last_name
+              jsonType.label: String
+              id.token.claim: 'true'
+              access.token.claim: 'true'
+              lightweight.claim: 'false'
+              userinfo.token.claim: 'true'
+              introspection.token.claim: 'true'
       - attributes:
           display.on.consent.screen: 'true'
           include.in.token.scope: 'true'
@@ -310,6 +337,7 @@ spec:
       - profile
       - roles
       - email
+      - first-and-last-name
     implicitFlowEnabled: false
     secret: client-secret
     publicClient: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-3fe3170a/development/components/keycloak/development/kustomize.out.yaml
67d66
<     - first-and-last-name
106,132d104
<     - name: first-and-last-name
<       protocol: openid-connect
<       protocolMappers:
<       - config:
<           access.token.claim: "true"
<           claim.name: first_name
<           id.token.claim: "true"
<           introspection.token.claim: "true"
<           jsonType.label: String
<           lightweight.claim: "false"
<           user.attribute: firstName
<           userinfo.token.claim: "true"
<         name: first_name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper
<       - config:
<           access.token.claim: "true"
<           claim.name: last_name
<           id.token.claim: "true"
<           introspection.token.claim: "true"
<           jsonType.label: String
<           lightweight.claim: "false"
<           user.attribute: lastName
<           userinfo.token.claim: "true"
<         name: last_name
<         protocol: openid-connect
<         protocolMapper: oidc-usermodel-property-mapper 
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
