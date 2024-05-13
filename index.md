# kustomize changes tracked by commits 
### This file generated at Mon May 13 20:05:15 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e56b3aa2 to c4b3f841 on Mon May 13 19:08:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
index a8a5a9db..f8382098 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/some-component
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e56b3aa2 to c4b3f841 on Mon May 13 19:08:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
index a8a5a9db..f8382098 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/some-component
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from e56b3aa2 to c4b3f841 on Mon May 13 19:08:14 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
index a8a5a9db..f8382098 100644
--- a/argo-cd-apps/base/eaas/some-component/some-component.yaml
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -12,7 +12,7 @@ spec:
               values:
                 sourceRoot: components/some-component
                 environment: staging
-                clusterDir: base
+                clusterDir: ""
           - list:
               elements: []
   template: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 1914f52e to e56b3aa2 on Mon May 13 18:21:29 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/enable-step-actions.yaml b/components/pipeline-service/development/enable-step-actions.yaml
new file mode 100644
index 00000000..c58ae84c
--- /dev/null
+++ b/components/pipeline-service/development/enable-step-actions.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    enable-step-actions: true
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 21484446..f8d19591 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -52,3 +52,7 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: enable-step-actions.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..b0207856 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..963bf3b2 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..b32a7fac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 1914f52e to e56b3aa2 on Mon May 13 18:21:29 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/enable-step-actions.yaml b/components/pipeline-service/development/enable-step-actions.yaml
new file mode 100644
index 00000000..c58ae84c
--- /dev/null
+++ b/components/pipeline-service/development/enable-step-actions.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    enable-step-actions: true
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 21484446..f8d19591 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -52,3 +52,7 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: enable-step-actions.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..b0207856 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..963bf3b2 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..b32a7fac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-1914f52e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1880d1879
<     enable-step-actions: true
./commit-1914f52e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1880d1879
<     enable-step-actions: true
./commit-1914f52e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1880d1879
<     enable-step-actions: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 1914f52e to e56b3aa2 on Mon May 13 18:21:29 2024 </h3>  
 
<details> 
<summary>Git Diff (62 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/enable-step-actions.yaml b/components/pipeline-service/development/enable-step-actions.yaml
new file mode 100644
index 00000000..c58ae84c
--- /dev/null
+++ b/components/pipeline-service/development/enable-step-actions.yaml
@@ -0,0 +1,8 @@
+---
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    enable-step-actions: true
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 21484446..f8d19591 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -52,3 +52,7 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: enable-step-actions.yaml
+    target:
+      kind: TektonConfig
+      name: config
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..b0207856 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..963bf3b2 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..b32a7fac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1878,6 +1878,7 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
+    enable-step-actions: true
     options:
       configMaps:
         config-logging: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-1914f52e/development/components/pipeline-service/development/kustomize.out.yaml
1988d1987
<     enable-step-actions: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 3377ae9e to 1914f52e on Mon May 13 17:34:43 2024 </h3>  
 
<details> 
<summary>Git Diff (166 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
new file mode 100644
index 00000000..00512f27
--- /dev/null
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component
+components:
+  - ../../k-components/deploy-to-eaas-cluster-merge-generator
+  - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
new file mode 100644
index 00000000..43984fb7
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
new file mode 100644
index 00000000..a8a5a9db
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: some-component
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/some-component
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: some-component-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: some-component
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
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
new file mode 100644
index 00000000..d9b48f7a
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/selector
+  value:
+      matchLabels:
+        appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
new file mode 100644
index 00000000..b1f28727
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: eaas-cluster-label-selector.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 49c235b7..3c6c2f6c 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..17414faf 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/some-component/base/kustomization.yaml b/components/some-component/base/kustomization.yaml
new file mode 100644
index 00000000..0e7c5a02
--- /dev/null
+++ b/components/some-component/base/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
new file mode 100644
index 00000000..1b5edb88
--- /dev/null
+++ b/components/some-component/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: some-component
diff --git a/components/some-component/production/kustomization.yaml b/components/some-component/production/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/production/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
diff --git a/components/some-component/staging/kustomization.yaml b/components/some-component/staging/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1914f52e/production/components: some-component 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 3377ae9e to 1914f52e on Mon May 13 17:34:43 2024 </h3>  
 
<details> 
<summary>Git Diff (166 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
new file mode 100644
index 00000000..00512f27
--- /dev/null
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component
+components:
+  - ../../k-components/deploy-to-eaas-cluster-merge-generator
+  - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
new file mode 100644
index 00000000..43984fb7
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
new file mode 100644
index 00000000..a8a5a9db
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: some-component
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/some-component
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: some-component-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: some-component
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
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
new file mode 100644
index 00000000..d9b48f7a
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/selector
+  value:
+      matchLabels:
+        appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
new file mode 100644
index 00000000..b1f28727
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: eaas-cluster-label-selector.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 49c235b7..3c6c2f6c 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..17414faf 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/some-component/base/kustomization.yaml b/components/some-component/base/kustomization.yaml
new file mode 100644
index 00000000..0e7c5a02
--- /dev/null
+++ b/components/some-component/base/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
new file mode 100644
index 00000000..1b5edb88
--- /dev/null
+++ b/components/some-component/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: some-component
diff --git a/components/some-component/production/kustomization.yaml b/components/some-component/production/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/production/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
diff --git a/components/some-component/staging/kustomization.yaml b/components/some-component/staging/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-1914f52e/staging/components: some-component 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 3377ae9e to 1914f52e on Mon May 13 17:34:43 2024 </h3>  
 
<details> 
<summary>Git Diff (166 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/eaas/kustomization.yaml b/argo-cd-apps/base/eaas/kustomization.yaml
new file mode 100644
index 00000000..00512f27
--- /dev/null
+++ b/argo-cd-apps/base/eaas/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component
+components:
+  - ../../k-components/deploy-to-eaas-cluster-merge-generator
+  - ../../k-components/inject-argocd-namespace
diff --git a/argo-cd-apps/base/eaas/some-component/kustomization.yaml b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
new file mode 100644
index 00000000..43984fb7
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - some-component.yaml
+components:
+  - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/eaas/some-component/some-component.yaml b/argo-cd-apps/base/eaas/some-component/some-component.yaml
new file mode 100644
index 00000000..a8a5a9db
--- /dev/null
+++ b/argo-cd-apps/base/eaas/some-component/some-component.yaml
@@ -0,0 +1,41 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: some-component
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/some-component
+                environment: staging
+                clusterDir: base
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: some-component-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: "{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}"
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: some-component
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
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
new file mode 100644
index 00000000..d9b48f7a
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/eaas-cluster-label-selector.yaml
@@ -0,0 +1,6 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/selector
+  value:
+      matchLabels:
+        appstudio.redhat.com/eaas-cluster: "true"
diff --git a/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
new file mode 100644
index 00000000..b1f28727
--- /dev/null
+++ b/argo-cd-apps/k-components/deploy-to-eaas-cluster-merge-generator/kustomization.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: eaas-cluster-label-selector.yaml
+    target:
+      group: argoproj.io
+      version: v1alpha1
+      kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/production-downstream/kustomization.yaml b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
index 49c235b7..3c6c2f6c 100644
--- a/argo-cd-apps/overlays/production-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/production-downstream/kustomization.yaml
@@ -2,6 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..17414faf 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 namespace: argocd-staging
 resources:
   - ../konflux-public-staging
+  - ../../base/eaas
   - ../../base/smee-client
   - ../../base/ui
   - ../../base/ca-bundle
diff --git a/components/some-component/base/kustomization.yaml b/components/some-component/base/kustomization.yaml
new file mode 100644
index 00000000..0e7c5a02
--- /dev/null
+++ b/components/some-component/base/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- namespace.yaml
diff --git a/components/some-component/base/namespace.yaml b/components/some-component/base/namespace.yaml
new file mode 100644
index 00000000..1b5edb88
--- /dev/null
+++ b/components/some-component/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: some-component
diff --git a/components/some-component/production/kustomization.yaml b/components/some-component/production/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/production/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
diff --git a/components/some-component/staging/kustomization.yaml b/components/some-component/staging/kustomization.yaml
new file mode 100644
index 00000000..ea80794f
--- /dev/null
+++ b/components/some-component/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 2ae512e6 to 3377ae9e on Mon May 13 15:29:58 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index ccd456e5..498dadb6 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
+  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (102 lines)</summary>  

``` 
./commit-2ae512e6/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
487,488c487,491
<     def get_quay_tags(quay_token: str, namespace: str, name: str) -> List[ImageRepo]:
<         next_page = None
---
>     def get_quay_repo(quay_token: str, namespace: str, name: str) -> ImageRepo:
>         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}"
>         request = Request(api_url, headers={
>             "Authorization": f"Bearer {quay_token}",
>         })
490,501c493
< 
<         all_tags = []
<         while True:
<             query_args = {"limit": 100, "onlyActiveTags": True}
<             if next_page is not None:
<                 query_args["page"] = next_page
< 
<             api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/?{urlencode(query_args)}"
<             request = Request(api_url, headers={
<                 "Authorization": f"Bearer {quay_token}",
<             })
< 
---
>         try:
505,512c497
<                 json_data = json.loads(resp.read())
< 
<             tags = json_data.get("tags", [])
<             all_tags.extend(tags)
< 
<             if not tags:
<                 LOGGER.debug("No tags found.")
<                 break
---
>                 return json.loads(resp.read())
514,518c499,502
<             page = json_data.get("page", None)
<             additional = json_data.get("has_additional", False)
< 
<             if additional:
<                 next_page = page + 1
---
>         except HTTPError as ex:
>             # ignore if not found
>             if ex.status != 404:
>                 raise(ex)
520,522c504
<                 break
< 
<         return all_tags
---
>                 return {}
542,543c524,525
<     def remove_tags(tags: List[Dict[str, Any]], quay_token: str, namespace: str, name: str, dry_run: bool = False) -> None:
<         image_digests = [image["manifest_digest"] for image in tags]
---
>     def remove_tags(tags: Dict[str, Any], quay_token: str, namespace: str, name: str, dry_run: bool = False) -> None:
>         image_digests = [image["manifest_digest"] for image in tags.values()]
547c529
<             if (match := tag_regex.match(tag["name"])) is not None:
---
>             if (match := tag_regex.match(tag)) is not None:
550c532
<                         LOGGER.info("Tag %s from %s/%s should be removed", tag["name"], namespace, name)
---
>                         LOGGER.info("Image %s from %s/%s should be removed", tag, namespace, name)
552,553c534,535
<                         LOGGER.info("Removing tag %s from %s/%s", tag["name"], namespace, name)
<                         delete_image_tag(quay_token, namespace, name, tag["name"])
---
>                         LOGGER.info("Removing image %s from %s/%s", tag, namespace, name)
>                         delete_image_tag(quay_token, namespace, name, tag)
555c537
<                 LOGGER.debug("%s is not an tag with suffix .att or .sbom", tag["name"])
---
>                 LOGGER.debug("%s is not an image with suffix .att or .sbom", tag)
563c545
<             all_tags = get_quay_tags(quay_token, namespace, name)
---
>             repo_info = get_quay_repo(quay_token, namespace, name)
565c547
<             if not all_tags:
---
>             if not repo_info:
568c550,551
<             remove_tags(all_tags, quay_token, namespace, name, dry_run=dry_run)
---
>             if (tags := repo_info.get("tags")) is not None:
>                 remove_tags(tags, quay_token, namespace, name, dry_run=dry_run)
623c606
<   name: image-controller-image-pruner-configmap-9b7d58f6g5
---
>   name: image-controller-image-pruner-configmap-dgh4mm9256
909c892
<         image: quay.io/redhat-appstudio/image-controller:8bf9b5eb11f41ecbca1fc5131f803744c519f826
---
>         image: quay.io/redhat-appstudio/image-controller:e5a29db5772c85b84d3246597e5b39f229d2925a
1023c1006
<               name: image-controller-image-pruner-configmap-9b7d58f6g5
---
>               name: image-controller-image-pruner-configmap-dgh4mm9256 
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
<h3>4: Staging changes from 2ae512e6 to 3377ae9e on Mon May 13 15:29:58 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index ccd456e5..498dadb6 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
+  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 namespace: image-controller
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 2ae512e6 to 3377ae9e on Mon May 13 15:29:58 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index ccd456e5..498dadb6 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
+  newTag: 8bf9b5eb11f41ecbca1fc5131f803744c519f826
 
 namespace: image-controller
  
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
```
 
</details> 
<br> 


</div>
