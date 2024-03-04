# kustomize changes tracked by commits 
### This file generated at Mon Mar  4 16:04:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 213b5f03 to 89febce5 on Mon Mar 4 15:08:10 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 911d0e8f..3581feb8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-213b5f03/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e 
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
<h3>1: Staging changes from 213b5f03 to 89febce5 on Mon Mar 4 15:08:10 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 911d0e8f..3581feb8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-213b5f03/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e 
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
<h3>1: Development changes from 213b5f03 to 89febce5 on Mon Mar 4 15:08:10 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 911d0e8f..3581feb8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-213b5f03/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:6c0dade45d84fd1244da79db04a97f1a846d273c
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e 
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
<h3>2: Production changes from 8c8be255 to 213b5f03 on Mon Mar 4 13:23:05 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/bump-replicas.yaml b/components/sprayproxy/production/bump-replicas.yaml
new file mode 100644
index 00000000..a6c13522
--- /dev/null
+++ b/components/sprayproxy/production/bump-replicas.yaml
@@ -0,0 +1,24 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: sprayproxy
+  namespace: sprayproxy
+spec:
+  replicas: 2
+  template:
+    metadata:
+      labels:
+        app: sprayproxy
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - sprayproxy
+                topologyKey: kubernetes.io/hostname
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index e4e6d515..1143aa48 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -13,3 +13,4 @@ images:
 patches:
   - path: change-backends.yaml
   - path: change-webhook-secret.yaml
+  - path: bump-replicas.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-8c8be255/production/components/sprayproxy/production/kustomize.out.yaml
163c163
<   replicas: 2
---
>   replicas: 1
170d169
<         app: sprayproxy
173,184d171
<       affinity:
<         podAntiAffinity:
<           preferredDuringSchedulingIgnoredDuringExecution:
<           - podAffinityTerm:
<               labelSelector:
<                 matchExpressions:
<                 - key: app
<                   operator: In
<                   values:
<                   - sprayproxy
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 8c8be255 to 213b5f03 on Mon Mar 4 13:23:05 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/bump-replicas.yaml b/components/sprayproxy/production/bump-replicas.yaml
new file mode 100644
index 00000000..a6c13522
--- /dev/null
+++ b/components/sprayproxy/production/bump-replicas.yaml
@@ -0,0 +1,24 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: sprayproxy
+  namespace: sprayproxy
+spec:
+  replicas: 2
+  template:
+    metadata:
+      labels:
+        app: sprayproxy
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - sprayproxy
+                topologyKey: kubernetes.io/hostname
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index e4e6d515..1143aa48 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -13,3 +13,4 @@ images:
 patches:
   - path: change-backends.yaml
   - path: change-webhook-secret.yaml
+  - path: bump-replicas.yaml 
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
<h3>2: Development changes from 8c8be255 to 213b5f03 on Mon Mar 4 13:23:05 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/bump-replicas.yaml b/components/sprayproxy/production/bump-replicas.yaml
new file mode 100644
index 00000000..a6c13522
--- /dev/null
+++ b/components/sprayproxy/production/bump-replicas.yaml
@@ -0,0 +1,24 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: sprayproxy
+  namespace: sprayproxy
+spec:
+  replicas: 2
+  template:
+    metadata:
+      labels:
+        app: sprayproxy
+    spec:
+      affinity:
+        podAntiAffinity:
+          preferredDuringSchedulingIgnoredDuringExecution:
+            - weight: 100
+              podAffinityTerm:
+                labelSelector:
+                  matchExpressions:
+                    - key: app
+                      operator: In
+                      values:
+                        - sprayproxy
+                topologyKey: kubernetes.io/hostname
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index e4e6d515..1143aa48 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -13,3 +13,4 @@ images:
 patches:
   - path: change-backends.yaml
   - path: change-webhook-secret.yaml
+  - path: bump-replicas.yaml 
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
<h3>3: Production changes from c4d51222 to 8c8be255 on Mon Mar 4 06:04:13 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index d049b2ad..911d0e8f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-c4d51222/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb 
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
<h3>3: Staging changes from c4d51222 to 8c8be255 on Mon Mar 4 06:04:13 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index d049b2ad..911d0e8f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-c4d51222/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb 
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
<h3>3: Development changes from c4d51222 to 8c8be255 on Mon Mar 4 06:04:13 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index d049b2ad..911d0e8f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-c4d51222/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:9a6b360c3e4d7cf26f2324556ad9513552358d5e
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb 
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
<h3>4: Production changes from c2d10153 to c4d51222 on Fri Mar 1 21:33:26 2024 </h3>  
 
<details> 
<summary>Git Diff (263 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 42a40b44..a1f33c35 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 7cd06d73..28134910 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4943765e..aac55d59 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 5a36712a..1b293dda 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index db3bbd0a..487e89b0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2ff5dab0..c9398bca 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090 
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
<h3>4: Staging changes from c2d10153 to c4d51222 on Fri Mar 1 21:33:26 2024 </h3>  
 
<details> 
<summary>Git Diff (263 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 42a40b44..a1f33c35 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 7cd06d73..28134910 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4943765e..aac55d59 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 5a36712a..1b293dda 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index db3bbd0a..487e89b0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2ff5dab0..c9398bca 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (168 lines)</summary>  

``` 
./commit-c2d10153/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1341c1341
<         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1387a1388,1433
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1493c1539
<         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
./commit-c2d10153/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1341c1341
<         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1387a1388,1433
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1493c1539
<         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
./commit-c2d10153/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1341c1341
<         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1387a1388,1433
>       initContainers:
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1493c1539
<         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f 
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
<h3>4: Development changes from c2d10153 to c4d51222 on Fri Mar 1 21:33:26 2024 </h3>  
 
<details> 
<summary>Git Diff (263 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 42a40b44..a1f33c35 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 7cd06d73..28134910 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 4943765e..aac55d59 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=f74e7617a84c10459817523d5e857d2885f7783f
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=062255a19b9e3a245011f41ff6ca1a99f70d4510
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 5a36712a..1b293dda 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index db3bbd0a..487e89b0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2ff5dab0..c9398bca 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1338,7 +1338,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1385,52 +1385,6 @@ spec:
         - mountPath: /etc/tls
           name: tls
           readOnly: true
-      initContainers:
-      - env:
-        - name: DB_USER
-          valueFrom:
-            secretKeyRef:
-              key: db.user
-              name: tekton-results-database
-        - name: DB_PASSWORD
-          valueFrom:
-            secretKeyRef:
-              key: db.password
-              name: tekton-results-database
-        - name: DB_HOST
-          valueFrom:
-            secretKeyRef:
-              key: db.host
-              name: tekton-results-database
-        - name: DB_NAME
-          valueFrom:
-            secretKeyRef:
-              key: db.name
-              name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
-        name: migrator
-        resources:
-          limits:
-            cpu: 100m
-            memory: 128Mi
-          requests:
-            cpu: 5m
-            memory: 32Mi
-        securityContext:
-          allowPrivilegeEscalation: false
-          capabilities:
-            add:
-            - NET_BIND_SERVICE
-            drop:
-            - ALL
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-          seccompProfile:
-            type: RuntimeDefault
-        volumeMounts:
-        - mountPath: /etc/tekton/results
-          name: config
-          readOnly: true
       serviceAccountName: tekton-results-api
       volumes:
       - configMap:
@@ -1536,7 +1490,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
+        image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (55 lines)</summary>  

``` 
./commit-c2d10153/development/components/pipeline-service/development/kustomize.out.yaml
1317c1317
<         image: quay.io/redhat-appstudio/tekton-results-api:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-api:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
1449a1450,1494
>       - env:
>         - name: DB_USER
>           valueFrom:
>             secretKeyRef:
>               key: db.user
>               name: tekton-results-database
>         - name: DB_PASSWORD
>           valueFrom:
>             secretKeyRef:
>               key: db.password
>               name: tekton-results-database
>         - name: DB_HOST
>           valueFrom:
>             secretKeyRef:
>               key: db.host
>               name: tekton-results-database
>         - name: DB_NAME
>           valueFrom:
>             secretKeyRef:
>               key: db.name
>               name: tekton-results-database
>         image: quay.io/redhat-appstudio/tekton-results-migrator:1c5b3054ffb52f172fda31587d7dfd88a9724c8f
>         name: migrator
>         resources:
>           limits:
>             cpu: 100m
>             memory: 128Mi
>           requests:
>             cpu: 5m
>             memory: 32Mi
>         securityContext:
>           allowPrivilegeEscalation: false
>           capabilities:
>             add:
>             - NET_BIND_SERVICE
>             drop:
>             - ALL
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>           seccompProfile:
>             type: RuntimeDefault
>         volumeMounts:
>         - mountPath: /etc/tekton/results
>           name: config
>           readOnly: true
1536c1581
<         image: quay.io/redhat-appstudio/tekton-results-watcher:021f292d2a7074409482be5b476cab5931f0bd01
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:1c5b3054ffb52f172fda31587d7dfd88a9724c8f 
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
