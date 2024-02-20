# kustomize changes tracked by commits 
### This file generated at Tue Feb 20 16:05:06 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 349a2642 to d1d51ce7 on Tue Feb 20 14:38:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 66a93b6b..e4e6d515 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=53ae76d32a32be7babf32df376b89d0623e78726
+  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 53ae76d32a32be7babf32df376b89d0623e78726
+    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
 
 patches:
   - path: change-backends.yaml 
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
<h3>1: Staging changes from 349a2642 to d1d51ce7 on Tue Feb 20 14:38:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 66a93b6b..e4e6d515 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=53ae76d32a32be7babf32df376b89d0623e78726
+  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 53ae76d32a32be7babf32df376b89d0623e78726
+    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
 
 patches:
   - path: change-backends.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-349a2642/staging/components/sprayproxy/staging/kustomize.out.yaml
184c184
<         image: quay.io/redhat-appstudio/sprayproxy:2f488f7082df063350cc5a774b61ee3207481a9b
---
>         image: quay.io/redhat-appstudio/sprayproxy:53ae76d32a32be7babf32df376b89d0623e78726 
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
<h3>1: Development changes from 349a2642 to d1d51ce7 on Tue Feb 20 14:38:34 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/staging/kustomization.yaml b/components/sprayproxy/staging/kustomization.yaml
index 66a93b6b..e4e6d515 100644
--- a/components/sprayproxy/staging/kustomization.yaml
+++ b/components/sprayproxy/staging/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/sprayproxy/config?ref=53ae76d32a32be7babf32df376b89d0623e78726
+  - https://github.com/konflux-ci/sprayproxy/config?ref=2f488f7082df063350cc5a774b61ee3207481a9b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/konflux-ci/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 53ae76d32a32be7babf32df376b89d0623e78726
+    newTag: 2f488f7082df063350cc5a774b61ee3207481a9b
 
 patches:
   - path: change-backends.yaml 
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
<h3>2: Production changes from 591296ea to 349a2642 on Tue Feb 20 13:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index b7dacd5f..0be3b7d8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-591296ea/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d 
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
<h3>2: Staging changes from 591296ea to 349a2642 on Tue Feb 20 13:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index b7dacd5f..0be3b7d8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-591296ea/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d 
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
<h3>2: Development changes from 591296ea to 349a2642 on Tue Feb 20 13:48:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index b7dacd5f..0be3b7d8 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-591296ea/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d 
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
<h3>3: Production changes from f51720e0 to 591296ea on Tue Feb 20 08:43:17 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/hack/generate-deploy-config.sh b/hack/generate-deploy-config.sh
new file mode 100755
index 00000000..aaf581ee
--- /dev/null
+++ b/hack/generate-deploy-config.sh
@@ -0,0 +1,49 @@
+#!/bin/bash
+set -o errexit
+set -o nounset
+set -o pipefail
+
+ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
+
+# Print help message
+function print_help() {
+  echo "Usage: $0 [-c|--component SUBDIR] [-h|--help]"
+  echo "  -c, --component SUBDIR    Path to a directory. Defaults to the current directory."
+  echo "  -h, --help                Help message"
+  echo
+  echo "Example usage: \`$0 components/pipeline-service/production"
+}
+
+function parse_args() {
+  COMPONENT="."
+  while [[ $# -gt 0 ]]; do
+    key=$1
+    case $key in
+    --component | -c)
+      shift
+      COMPONENT="$1"
+      ;;
+    -h | --help)
+      print_help
+      exit 0
+      ;;
+    *)
+      echo "Unknown argument: $key" >&2
+      exit 1
+      ;;
+    esac
+    shift
+  done
+}
+
+function main() {
+  parse_args "$@"
+
+  for DIR in $(find "$COMPONENT" -name resources); do
+    TARGET=$(dirname "$DIR")/deploy.yaml
+    echo "$DIR: $TARGET"
+    kustomize build "$DIR" >"$TARGET"
+  done
+}
+
+main "$@" 
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
<h3>3: Staging changes from f51720e0 to 591296ea on Tue Feb 20 08:43:17 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/hack/generate-deploy-config.sh b/hack/generate-deploy-config.sh
new file mode 100755
index 00000000..aaf581ee
--- /dev/null
+++ b/hack/generate-deploy-config.sh
@@ -0,0 +1,49 @@
+#!/bin/bash
+set -o errexit
+set -o nounset
+set -o pipefail
+
+ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
+
+# Print help message
+function print_help() {
+  echo "Usage: $0 [-c|--component SUBDIR] [-h|--help]"
+  echo "  -c, --component SUBDIR    Path to a directory. Defaults to the current directory."
+  echo "  -h, --help                Help message"
+  echo
+  echo "Example usage: \`$0 components/pipeline-service/production"
+}
+
+function parse_args() {
+  COMPONENT="."
+  while [[ $# -gt 0 ]]; do
+    key=$1
+    case $key in
+    --component | -c)
+      shift
+      COMPONENT="$1"
+      ;;
+    -h | --help)
+      print_help
+      exit 0
+      ;;
+    *)
+      echo "Unknown argument: $key" >&2
+      exit 1
+      ;;
+    esac
+    shift
+  done
+}
+
+function main() {
+  parse_args "$@"
+
+  for DIR in $(find "$COMPONENT" -name resources); do
+    TARGET=$(dirname "$DIR")/deploy.yaml
+    echo "$DIR: $TARGET"
+    kustomize build "$DIR" >"$TARGET"
+  done
+}
+
+main "$@" 
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
<h3>3: Development changes from f51720e0 to 591296ea on Tue Feb 20 08:43:17 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/hack/generate-deploy-config.sh b/hack/generate-deploy-config.sh
new file mode 100755
index 00000000..aaf581ee
--- /dev/null
+++ b/hack/generate-deploy-config.sh
@@ -0,0 +1,49 @@
+#!/bin/bash
+set -o errexit
+set -o nounset
+set -o pipefail
+
+ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"/..
+
+# Print help message
+function print_help() {
+  echo "Usage: $0 [-c|--component SUBDIR] [-h|--help]"
+  echo "  -c, --component SUBDIR    Path to a directory. Defaults to the current directory."
+  echo "  -h, --help                Help message"
+  echo
+  echo "Example usage: \`$0 components/pipeline-service/production"
+}
+
+function parse_args() {
+  COMPONENT="."
+  while [[ $# -gt 0 ]]; do
+    key=$1
+    case $key in
+    --component | -c)
+      shift
+      COMPONENT="$1"
+      ;;
+    -h | --help)
+      print_help
+      exit 0
+      ;;
+    *)
+      echo "Unknown argument: $key" >&2
+      exit 1
+      ;;
+    esac
+    shift
+  done
+}
+
+function main() {
+  parse_args "$@"
+
+  for DIR in $(find "$COMPONENT" -name resources); do
+    TARGET=$(dirname "$DIR")/deploy.yaml
+    echo "$DIR: $TARGET"
+    kustomize build "$DIR" >"$TARGET"
+  done
+}
+
+main "$@" 
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
<h3>4: Production changes from b6a472a3 to f51720e0 on Mon Feb 19 21:04:46 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index cfbff6ed..6622dda4 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging
     custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e4e21978..736b698c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index d0e15f63..eeeb227c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
     custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47f16e02..08040e60 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 492d0cc1..8ca07b0a 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true 
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
<h3>4: Staging changes from b6a472a3 to f51720e0 on Mon Feb 19 21:04:46 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index cfbff6ed..6622dda4 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging
     custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e4e21978..736b698c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index d0e15f63..eeeb227c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
     custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47f16e02..08040e60 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 492d0cc1..8ca07b0a 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-b6a472a3/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1956,1959c1956,1957
<           custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
>           custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
./commit-b6a472a3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1956,1959c1956,1957
<           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
./commit-b6a472a3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1956,1959c1956,1957
<           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}
<           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
<             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
---
>           custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
>           custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline 
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
<h3>4: Development changes from b6a472a3 to f51720e0 on Mon Feb 19 21:04:46 2024 </h3>  
 
<details> 
<summary>Git Diff (75 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
index cfbff6ed..6622dda4 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging
     custom-console-name: Konflux Staging
     custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+    custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e4e21978..736b698c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
           custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+          custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
index d0e15f63..eeeb227c 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux Staging Internal
     custom-console-name: Konflux Staging Internal
     custom-console-url: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
-    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline
+    custom-console-url-pr-details: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://rhtap.apps.rosa.stone-stage-p01.apys.p3.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 47f16e02..08040e60 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 492d0cc1..8ca07b0a 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1953,8 +1953,10 @@ spec:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
           custom-console-url: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline
-          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline
+          custom-console-url-pr-details: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://console.dev.redhat.com/preview/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: true 
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
