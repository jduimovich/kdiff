# kustomize changes tracked by commits 
### This file generated at Tue Mar 21 16:04:06 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: staging, development
## Showing last 20 commits


<div>
<h3>1: Staging changes from f14c2bd to 8a2a5cb on Tue Mar 21 12:31:38 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index c395244..f43b231 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8a2a5cb/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/staging/components/build-service/staging/kustomize.out
649c649
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
655c655
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
661c661
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
667c667
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8a2a5cb/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 14:04:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8a2a5cb/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 14:04:12 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:05:40 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from f14c2bd to 8a2a5cb on Tue Mar 21 12:31:38 2023 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selector.yaml
index c395244..f43b231 100644
--- a/components/build-service/base/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selector.yaml
@@ -7,24 +7,24 @@ spec:
     - name: FBC
       pipelineRef:
         name: fbc-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         language: fbc
     - name: Docker build
       pipelineRef:
         name: docker-build
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         dockerfile: true
     - name: Java
       pipelineRef:
         name: java-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         language: java
     - name: NodeJS
       pipelineRef:
         name: nodejs-builder
-        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
+        bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
       when:
         language: nodejs,node 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (24 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8a2a5cb/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/development/components/build-service/development/kustomize.out
649c649
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
655c655
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0d1d35af732ffe202e207dd0074acf5c4c48ef43
661c661
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
667c667
<       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:4863e3b605ff7114c90c447bfc43ea68def2a38a
---
>       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0d1d35af732ffe202e207dd0074acf5c4c48ef43
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-8a2a5cb/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 14:04:36 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 14:04:40 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:06:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 12:06:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from cdeadc7 to f14c2bd on Tue Mar 21 12:04:17 2023 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/authentication/base/gitops.yaml b/components/authentication/base/gitops.yaml
index 8cdfdcc..899feca 100644
--- a/components/authentication/base/gitops.yaml
+++ b/components/authentication/base/gitops.yaml
@@ -8,6 +8,9 @@ subjects:
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: jgwest
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jannfis
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -22,6 +25,9 @@ subjects:
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: jgwest
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jannfis
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/staging/components/authentication/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/staging/components/authentication/staging/kustomize.out
447,449d446
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jannfis
737,739d733
< - apiGroup: rbac.authorization.k8s.io
<   kind: User
<   name: jannfis
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 12:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:06:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 12:05:40 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:06:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from cdeadc7 to f14c2bd on Tue Mar 21 12:04:17 2023 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/authentication/base/gitops.yaml b/components/authentication/base/gitops.yaml
index 8cdfdcc..899feca 100644
--- a/components/authentication/base/gitops.yaml
+++ b/components/authentication/base/gitops.yaml
@@ -8,6 +8,9 @@ subjects:
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: jgwest
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jannfis
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -22,6 +25,9 @@ subjects:
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: jgwest
+  - kind: User
+    apiGroup: rbac.authorization.k8s.io
+    name: jannfis
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f14c2bd/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 12:06:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 12:06:10 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:07:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 12:07:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 7273fba to cdeadc7 on Tue Mar 21 10:41:28 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 549b001..5d20e87 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=5acff37c17e610b4496da9dcba1c34bb72377edb
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=5acff37c17e610b4496da9dcba1c34bb72377edb
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=5acff37c17e610b4496da9dcba1c34bb72377edb
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 0f323a67458f74c0e5b1db344474118f8fa17a42
+  newTag: 5acff37c17e610b4496da9dcba1c34bb72377edb
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 1435229..fea8ce2 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 0f323a67458f74c0e5b1db344474118f8fa17a42
\ No newline at end of file
+    value: 5acff37c17e610b4496da9dcba1c34bb72377edb
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 3ff5d1e..069f8ac 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=5acff37c17e610b4496da9dcba1c34bb72377edb 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 5acff37c17e610b4496da9dcba1c34bb72377edb
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:5acff37c17e610b4496da9dcba1c34bb72377edb
---
>           value: 0f323a67458f74c0e5b1db344474118f8fa17a42
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:0f323a67458f74c0e5b1db344474118f8fa17a42
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 12:06:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:07:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 12:06:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:07:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 7273fba to cdeadc7 on Tue Mar 21 10:41:28 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 549b001..5d20e87 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=5acff37c17e610b4496da9dcba1c34bb72377edb
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=5acff37c17e610b4496da9dcba1c34bb72377edb
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=5acff37c17e610b4496da9dcba1c34bb72377edb
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 0f323a67458f74c0e5b1db344474118f8fa17a42
+  newTag: 5acff37c17e610b4496da9dcba1c34bb72377edb
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 1435229..fea8ce2 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 0f323a67458f74c0e5b1db344474118f8fa17a42
\ No newline at end of file
+    value: 5acff37c17e610b4496da9dcba1c34bb72377edb
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 3ff5d1e..069f8ac 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=5acff37c17e610b4496da9dcba1c34bb72377edb 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 5acff37c17e610b4496da9dcba1c34bb72377edb
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:5acff37c17e610b4496da9dcba1c34bb72377edb
---
>           value: 0f323a67458f74c0e5b1db344474118f8fa17a42
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:0f323a67458f74c0e5b1db344474118f8fa17a42
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cdeadc7/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 12:07:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 12:07:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 12:08:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 12:08:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from e12b1a3 to 7273fba on Tue Mar 21 10:41:15 2023 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 4263348..dc46bda 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,11 +1,11 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8fea7b436f4ec8362a645bcf5bee14427686c83e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=16356d16eb49734e062f519a1f63382b41350efa
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8fea7b436f4ec8362a645bcf5bee14427686c83e
+  newTag: 16356d16eb49734e062f519a1f63382b41350efa
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 12:07:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 12:07:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:04:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from e12b1a3 to 7273fba on Tue Mar 21 10:41:15 2023 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 4263348..dc46bda 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,11 +1,11 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=8fea7b436f4ec8362a645bcf5bee14427686c83e
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=16356d16eb49734e062f519a1f63382b41350efa
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 8fea7b436f4ec8362a645bcf5bee14427686c83e
+  newTag: 16356d16eb49734e062f519a1f63382b41350efa
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7273fba/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 12:08:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 12:08:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:04:57 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 10:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Staging changes from 4f5d17a to e12b1a3 on Tue Mar 21 09:21:34 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 52c580f..a2a682b 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
+- https://github.com/redhat-appstudio/build-service/config/default?ref=91dadf431b4a93f48d317f25bd9fc5f712975d77
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 2f611a7957b38825c9ae92d508f3f827e5d41905
+  newTag: 91dadf431b4a93f48d317f25bd9fc5f712975d77
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index f11c177..051458f 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=91dadf431b4a93f48d317f25bd9fc5f712975d77 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/staging/components/build-service/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/staging/components/build-service/staging/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:91dadf431b4a93f48d317f25bd9fc5f712975d77
---
>         image: quay.io/redhat-appstudio/build-service:2f611a7957b38825c9ae92d508f3f827e5d41905
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 10:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:05:24 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 10:04:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:05:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>5: Development changes from 4f5d17a to e12b1a3 on Tue Mar 21 09:21:34 2023 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/build-service/base/kustomization.yaml b/components/build-service/base/kustomization.yaml
index 52c580f..a2a682b 100644
--- a/components/build-service/base/kustomization.yaml
+++ b/components/build-service/base/kustomization.yaml
@@ -1,6 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/build-service/config/default?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
+- https://github.com/redhat-appstudio/build-service/config/default?ref=91dadf431b4a93f48d317f25bd9fc5f712975d77
 - build-pipeline-selector.yaml
 
 # Skip applying the build-service operands (BuildPipelineSelector) while the build-service operator is being installed.
@@ -14,7 +14,7 @@ namespace: build-service
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 2f611a7957b38825c9ae92d508f3f827e5d41905
+  newTag: 91dadf431b4a93f48d317f25bd9fc5f712975d77
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
diff --git a/components/monitoring/grafana/base/build-service/kustomization.yaml b/components/monitoring/grafana/base/build-service/kustomization.yaml
index f11c177..051458f 100644
--- a/components/monitoring/grafana/base/build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=2f611a7957b38825c9ae92d508f3f827e5d41905
+- https://github.com/redhat-appstudio/build-service/config/monitoring/grafana-dashboards/?ref=91dadf431b4a93f48d317f25bd9fc5f712975d77 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/development/components/build-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/development/components/build-service/development/kustomize.out
585c585
<         image: quay.io/redhat-appstudio/build-service:91dadf431b4a93f48d317f25bd9fc5f712975d77
---
>         image: quay.io/redhat-appstudio/build-service:2f611a7957b38825c9ae92d508f3f827e5d41905
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e12b1a3/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 10:04:57 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 10:05:02 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:05:53 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 10:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Staging changes from 6437ae6 to 4f5d17a on Tue Mar 21 09:19:06 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index c4a4093..26f03e8 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -18,8 +18,7 @@ spec:
   pipelines:
     - inputRefs:
         - application
-        - audit
-        - infrastructure
       name: fluentd-cloudwatch-logforward
       outputRefs:
-        - remote-cloudwatch
\ No newline at end of file
+        - remote-cloudwatch
+      parse: json 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 10:05:24 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:06:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 10:05:29 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:06:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>6: Development changes from 6437ae6 to 4f5d17a on Tue Mar 21 09:19:06 2023 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
index c4a4093..26f03e8 100644
--- a/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
+++ b/components/monitoring/logging/base/configure-logging/configure-logforwarder.yaml
@@ -18,8 +18,7 @@ spec:
   pipelines:
     - inputRefs:
         - application
-        - audit
-        - infrastructure
       name: fluentd-cloudwatch-logforward
       outputRefs:
-        - remote-cloudwatch
\ No newline at end of file
+        - remote-cloudwatch
+      parse: json 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-4f5d17a/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 10:05:53 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 10:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:06:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 10:06:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Staging changes from 245c5fa to 6437ae6 on Tue Mar 21 08:46:32 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 13ab154..3bd3e9a 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=6e0986f521321faf0c549258e281fc92d916f1bd
+- https://github.com/redhat-appstudio/application-api/config/crd?ref=a6a313eae8d17a0f74abac2bd4cc47c043d1fe86
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (46 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/staging/components/application-api/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/staging/components/application-api/kustomize.out
2023,2056d2022
<                     source:
<                       description: Source describes the Component source. Optional.
<                       properties:
<                         git:
<                           description: Git Source for a Component. Optional.
<                           properties:
<                             context:
<                               description: 'A relative path inside the git repo containing
<                                 the component Example: folderA/folderB/gitops. Optional.'
<                               type: string
<                             devfileUrl:
<                               description: 'If specified, the devfile at the URI will
<                                 be used for the component. Can be a local path inside
<                                 the repository, or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                                 Optional.'
<                               type: string
<                             dockerfileUrl:
<                               description: If specified, the dockerfile at the URI
<                                 will be used for the component. Can be a local path
<                                 inside the repository, or an external URL. Optional.
<                               type: string
<                             revision:
<                               description: 'Specify a branch/tag/commit id. If not
<                                 specified, default is `main`/`master`. Example: devel.
<                                 Optional.'
<                               type: string
<                             url:
<                               description: An HTTPS URL representing the git repository
<                                 to create the component from.
<                               type: string
<                           required:
<                           - url
<                           type: object
<                       type: object
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 10:06:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:07:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 10:06:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:07:22 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>7: Development changes from 245c5fa to 6437ae6 on Tue Mar 21 08:46:32 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/application-api/kustomization.yaml b/components/application-api/kustomization.yaml
index 13ab154..3bd3e9a 100644
--- a/components/application-api/kustomization.yaml
+++ b/components/application-api/kustomization.yaml
@@ -1,7 +1,7 @@
 resources:
 - allow-argocd-to-manage.yaml
 - argocd-permissions.yaml
-- https://github.com/redhat-appstudio/application-api/config/crd?ref=6e0986f521321faf0c549258e281fc92d916f1bd
+- https://github.com/redhat-appstudio/application-api/config/crd?ref=a6a313eae8d17a0f74abac2bd4cc47c043d1fe86
 
 
 apiVersion: kustomize.config.k8s.io/v1beta1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (43 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/development/components/application-api/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/development/components/application-api/kustomize.out
2023,2056d2022
<                     source:
<                       description: Source describes the Component source. Optional.
<                       properties:
<                         git:
<                           description: Git Source for a Component. Optional.
<                           properties:
<                             context:
<                               description: 'A relative path inside the git repo containing
<                                 the component Example: folderA/folderB/gitops. Optional.'
<                               type: string
<                             devfileUrl:
<                               description: 'If specified, the devfile at the URI will
<                                 be used for the component. Can be a local path inside
<                                 the repository, or an external URL. Example: https://raw.githubusercontent.com/devfile-samples/devfile-sample-java-springboot-basic/main/devfile.yaml.
<                                 Optional.'
<                               type: string
<                             dockerfileUrl:
<                               description: If specified, the dockerfile at the URI
<                                 will be used for the component. Can be a local path
<                                 inside the repository, or an external URL. Optional.
<                               type: string
<                             revision:
<                               description: 'Specify a branch/tag/commit id. If not
<                                 specified, default is `main`/`master`. Example: devel.
<                                 Optional.'
<                               type: string
<                             url:
<                               description: An HTTPS URL representing the git repository
<                                 to create the component from.
<                               type: string
<                           required:
<                           - url
<                           type: object
<                       type: object
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-6437ae6/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 10:06:50 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 10:06:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 10:07:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 10:07:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Staging changes from c87d791 to 245c5fa on Tue Mar 21 08:45:29 2023 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index e7744a8..705dd2c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -185,8 +185,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/base/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/base/kustomization.yaml
 
-[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml
-[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/base/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/base/kustomization.yaml
 
 [[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e ".resources[] |= sub(\"ref=[^ ]*\"; \"ref=${PIPELINE_PR_SHA}\") | .resources[] |= sub(\"openshift-pipelines\"; \"${PIPELINE_PR_OWNER}\")" $ROOT/components/pipeline-service/development/kustomization.yaml
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c87d791/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 10:07:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 08:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c87d791/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 10:07:22 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 08:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>8: Development changes from c87d791 to 245c5fa on Tue Mar 21 08:45:29 2023 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/hack/preview.sh b/hack/preview.sh
index e7744a8..705dd2c 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -185,8 +185,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${SPI_OAUTH_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newName=\"${SPI_OAUTH_IMAGE_REPO}\"" $ROOT/components/spi/base/kustomization.yaml
 [ -n "${SPI_OAUTH_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/service-provider-integration-oauth\")) |=.newTag=\"${SPI_OAUTH_IMAGE_TAG}\"" $ROOT/components/spi/base/kustomization.yaml
 
-[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml
-[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/shbose/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/base/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newName=\"${IMAGE_CONTROLLER_IMAGE_REPO}\"" $ROOT/components/image-controller/base/kustomization.yaml
+[ -n "${IMAGE_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/image-controller\")) |=.newTag=\"${IMAGE_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/image-controller/base/kustomization.yaml
 
 [[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e ".resources[] |= sub(\"ref=[^ ]*\"; \"ref=${PIPELINE_PR_SHA}\") | .resources[] |= sub(\"openshift-pipelines\"; \"${PIPELINE_PR_OWNER}\")" $ROOT/components/pipeline-service/development/kustomization.yaml
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-245c5fa/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c87d791/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 10:07:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 10:07:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/21 08:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/21 08:05:40 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Staging changes from 94542f9 to c87d791 on Tue Mar 21 07:37:14 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 9eca645..7300f31 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=00e34761a52e4b905be2b7294f39a798bc8c3c7b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index ba66930..b83c4b4 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=00e34761a52e4b905be2b7294f39a798bc8c3c7b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 15d208c..52cb629 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=00e34761a52e4b905be2b7294f39a798bc8c3c7b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
+    newTag: 00e34761a52e4b905be2b7294f39a798bc8c3c7b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
+    newTag: 00e34761a52e4b905be2b7294f39a798bc8c3c7b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c87d791/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/21 08:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 16:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c87d791/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/21 08:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 16:04:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>9: Development changes from 94542f9 to c87d791 on Tue Mar 21 07:37:14 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 9eca645..7300f31 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=00e34761a52e4b905be2b7294f39a798bc8c3c7b
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index ba66930..b83c4b4 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=00e34761a52e4b905be2b7294f39a798bc8c3c7b
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 15d208c..52cb629 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=00e34761a52e4b905be2b7294f39a798bc8c3c7b
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
+    newTag: 00e34761a52e4b905be2b7294f39a798bc8c3c7b
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
+    newTag: 00e34761a52e4b905be2b7294f39a798bc8c3c7b
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c87d791/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/21 08:05:35 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/21 08:05:40 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 16:05:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/20 16:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Staging changes from 5cc6b85 to 94542f9 on Mon Mar 20 14:49:28 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index fa3e1f3..549b001 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+  newTag: 0f323a67458f74c0e5b1db344474118f8fa17a42
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index cfe883b..1435229 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
\ No newline at end of file
+    value: 0f323a67458f74c0e5b1db344474118f8fa17a42
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 8cd68e5..3ff5d1e 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=0f323a67458f74c0e5b1db344474118f8fa17a42 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 0f323a67458f74c0e5b1db344474118f8fa17a42
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:0f323a67458f74c0e5b1db344474118f8fa17a42
---
>           value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/20 16:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 14:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/20 16:04:45 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 14:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>10: Development changes from 5cc6b85 to 94542f9 on Mon Mar 20 14:49:28 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index fa3e1f3..549b001 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=0f323a67458f74c0e5b1db344474118f8fa17a42
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+  newTag: 0f323a67458f74c0e5b1db344474118f8fa17a42
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index cfe883b..1435229 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
\ No newline at end of file
+    value: 0f323a67458f74c0e5b1db344474118f8fa17a42
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 8cd68e5..3ff5d1e 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=0f323a67458f74c0e5b1db344474118f8fa17a42 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 0f323a67458f74c0e5b1db344474118f8fa17a42
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:0f323a67458f74c0e5b1db344474118f8fa17a42
---
>           value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-94542f9/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/20 16:05:05 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/20 16:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 14:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/20 14:05:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Staging changes from e5facc7 to 5cc6b85 on Mon Mar 20 13:45:10 2023 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index 9c346ae..d336657 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e5037d67c36c802f45fd333250a0733faa08cf89
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
+    newTag: e5037d67c36c802f45fd333250a0733faa08cf89
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 8d69594..ae5405d 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e5037d67c36c802f45fd333250a0733faa08cf89
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
+    newTag: e5037d67c36c802f45fd333250a0733faa08cf89 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/20 14:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 10:04:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/20 14:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 10:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/staging/components/quality-dashboard/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/staging/components/quality-dashboard/staging/kustomize.out
160c160
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:e5037d67c36c802f45fd333250a0733faa08cf89
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:749fea11ac0919339b93b7cacf301446e365d2bd
244c244
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:e5037d67c36c802f45fd333250a0733faa08cf89
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:749fea11ac0919339b93b7cacf301446e365d2bd 
```
 
</details> 
<br> 


</div>

<div>
<h3>11: Development changes from e5facc7 to 5cc6b85 on Mon Mar 20 13:45:10 2023 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index 9c346ae..d336657 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e5037d67c36c802f45fd333250a0733faa08cf89
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
+    newTag: e5037d67c36c802f45fd333250a0733faa08cf89
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 8d69594..ae5405d 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=749fea11ac0919339b93b7cacf301446e365d2bd
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e5037d67c36c802f45fd333250a0733faa08cf89
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -12,4 +12,4 @@ configMapGenerator:
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
+    newTag: e5037d67c36c802f45fd333250a0733faa08cf89 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/20 14:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/20 14:05:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 10:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/20 10:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5cc6b85/development/components/quality-dashboard/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/development/components/quality-dashboard/development/kustomize.out
121c121
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:e5037d67c36c802f45fd333250a0733faa08cf89
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:749fea11ac0919339b93b7cacf301446e365d2bd
205c205
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:e5037d67c36c802f45fd333250a0733faa08cf89
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:749fea11ac0919339b93b7cacf301446e365d2bd 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Staging changes from 5b7aec6 to e5facc7 on Mon Mar 20 09:38:49 2023 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 7c2a340..8d69594 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -7,9 +7,9 @@ kind: Kustomization
 configMapGenerator:
 - name: quality-dashboard-configmap
   literals:
-  - BACKEND_ROUTE=https://quality-backend-route-quality-dashboard.apps.appstudio-stage.x99m.p1.openshiftapps.com
+  - BACKEND_ROUTE=https://quality-backend-route-quality-dashboard.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
 
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/20 10:04:26 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 08:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/20 10:04:31 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 08:04:59 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/staging/components/quality-dashboard/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/staging/components/quality-dashboard/staging/kustomize.out
50c50
<   BACKEND_ROUTE: https://quality-backend-route-quality-dashboard.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
---
>   BACKEND_ROUTE: https://quality-backend-route-quality-dashboard.apps.appstudio-stage.x99m.p1.openshiftapps.com
53c53
<   name: quality-dashboard-configmap-24k76fhk4k
---
>   name: quality-dashboard-configmap-7bb46468bg
243c243
<               name: quality-dashboard-configmap-24k76fhk4k
---
>               name: quality-dashboard-configmap-7bb46468bg 
```
 
</details> 
<br> 


</div>

<div>
<h3>12: Development changes from 5b7aec6 to e5facc7 on Mon Mar 20 09:38:49 2023 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 7c2a340..8d69594 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -7,9 +7,9 @@ kind: Kustomization
 configMapGenerator:
 - name: quality-dashboard-configmap
   literals:
-  - BACKEND_ROUTE=https://quality-backend-route-quality-dashboard.apps.appstudio-stage.x99m.p1.openshiftapps.com
+  - BACKEND_ROUTE=https://quality-backend-route-quality-dashboard.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
 
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd
\ No newline at end of file
+    newTag: 749fea11ac0919339b93b7cacf301446e365d2bd 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/20 10:05:01 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/20 10:05:06 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/20 08:05:19 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/20 08:05:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-e5facc7/development/components/quality-dashboard/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/development/components/quality-dashboard/development/kustomize.out
11c11
<   BACKEND_ROUTE: https://quality-backend-route-quality-dashboard.apps.stone-stg-rh01.l2vh.p1.openshiftapps.com
---
>   BACKEND_ROUTE: https://quality-backend-route-quality-dashboard.apps.appstudio-stage.x99m.p1.openshiftapps.com
14c14
<   name: quality-dashboard-configmap-24k76fhk4k
---
>   name: quality-dashboard-configmap-7bb46468bg
204c204
<               name: quality-dashboard-configmap-24k76fhk4k
---
>               name: quality-dashboard-configmap-7bb46468bg 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Staging changes from ee38c09 to 5b7aec6 on Mon Mar 20 07:33:14 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 3c64c8a..9eca645 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e3cc20f..ba66930 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 57ae239..15d208c 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
+    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
+    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ee38c09/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/20 08:04:56 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/18 12:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ee38c09/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/20 08:04:59 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/18 12:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>13: Development changes from ee38c09 to 5b7aec6 on Mon Mar 20 07:33:14 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 3c64c8a..9eca645 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index e3cc20f..ba66930 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index 57ae239..15d208c 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=ee065809ae70788b257500b0ac993b493e9b4aaf
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
+    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
+    newTag: ee065809ae70788b257500b0ac993b493e9b4aaf
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-5b7aec6/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ee38c09/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/20 08:05:19 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/20 08:05:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/18 12:05:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/18 12:05:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Staging changes from cefa8a6 to ee38c09 on Sat Mar 18 11:00:56 2023 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
index b4b759b..9e8ba6f 100644
--- a/components/quality-dashboard/staging/external-secrets/kustomization.yaml
+++ b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quality-dashboard-secrets.yaml
+- quality-dashboard-auth.yaml
 namespace: quality-dashboard
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
new file mode 100644
index 0000000..7cf1ff4
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quality-dashboard-auth
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/quality-dashboard-auth
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quality-dashboard-auth
diff --git a/hack/secret-creator/create-quality-dashboard-secrets.sh b/hack/secret-creator/create-quality-dashboard-secrets.sh
index 13ea37f..0fa427b 100755
--- a/hack/secret-creator/create-quality-dashboard-secrets.sh
+++ b/hack/secret-creator/create-quality-dashboard-secrets.sh
@@ -1,5 +1,6 @@
 #!/bin/bash -e
 
+
 main() {
     echo "Setting secrets for Quality Dashboard"
     kubectl create namespace quality-dashboard -o yaml --dry-run=client | oc apply -f-
@@ -13,6 +14,11 @@ main() {
             --from-literal=github-token=REPLACE_GITHUB_TOKEN \
             --from-literal=jira-token=REPLACE_JIRA_TOKEN
     fi
+    if ! kubectl get secret -n quality-dashboard quality-dashboard-auth &>/dev/null; then
+        kubectl create secret generic quality-dashboard-auth \
+            --namespace=quality-dashboard \
+            --from-literal=users.htpasswd=NOUSER
+    fi
 }
 
 if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ee38c09/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/18 12:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 16:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ee38c09/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/18 12:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 16:04:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ee38c09/staging/components/quality-dashboard/staging/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/quality-dashboard/staging/kustomize.out
276,296d275
<   name: quality-dashboard-auth
<   namespace: quality-dashboard
< spec:
<   dataFrom:
<   - extract:
<       key: staging/qe/quality-dashboard-auth
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: quality-dashboard-auth
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1" 
```
 
</details> 
<br> 


</div>

<div>
<h3>14: Development changes from cefa8a6 to ee38c09 on Sat Mar 18 11:00:56 2023 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
index b4b759b..9e8ba6f 100644
--- a/components/quality-dashboard/staging/external-secrets/kustomization.yaml
+++ b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
@@ -2,4 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - quality-dashboard-secrets.yaml
+- quality-dashboard-auth.yaml
 namespace: quality-dashboard
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
new file mode 100644
index 0000000..7cf1ff4
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/quality-dashboard-auth.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quality-dashboard-auth
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/quality-dashboard-auth
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quality-dashboard-auth
diff --git a/hack/secret-creator/create-quality-dashboard-secrets.sh b/hack/secret-creator/create-quality-dashboard-secrets.sh
index 13ea37f..0fa427b 100755
--- a/hack/secret-creator/create-quality-dashboard-secrets.sh
+++ b/hack/secret-creator/create-quality-dashboard-secrets.sh
@@ -1,5 +1,6 @@
 #!/bin/bash -e
 
+
 main() {
     echo "Setting secrets for Quality Dashboard"
     kubectl create namespace quality-dashboard -o yaml --dry-run=client | oc apply -f-
@@ -13,6 +14,11 @@ main() {
             --from-literal=github-token=REPLACE_GITHUB_TOKEN \
             --from-literal=jira-token=REPLACE_JIRA_TOKEN
     fi
+    if ! kubectl get secret -n quality-dashboard quality-dashboard-auth &>/dev/null; then
+        kubectl create secret generic quality-dashboard-auth \
+            --namespace=quality-dashboard \
+            --from-literal=users.htpasswd=NOUSER
+    fi
 }
 
 if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-ee38c09/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/18 12:05:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/18 12:05:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 16:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 16:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Staging changes from f436256 to cefa8a6 on Fri Mar 17 15:13:53 2023 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index a642944..1f20a2f 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -20,7 +20,7 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -39,4 +39,4 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/enterprise-contract/kustomize.out
264c264
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
285c285
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 16:04:25 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 12:05:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 16:04:30 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 12:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>15: Development changes from f436256 to cefa8a6 on Fri Mar 17 15:13:53 2023 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index a642944..1f20a2f 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -20,7 +20,7 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -39,4 +39,4 @@ spec:
       data:
         - oci::https://quay.io/hacbs-contract/ec-policy-data:git-9c9b9ad@sha256:350298530cd57866aec60b01c88c25f98eae08002bdb77e209ef36a5f42d5924
       policy:
-        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
+        - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/development/components/enterprise-contract/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/development/components/enterprise-contract/kustomize.out
264c264
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
285c285
<     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:270894294050c27a6308ad53c08d14e0250aebbef351d20c0bff0a3a4023a192
---
>     - oci::https://quay.io/hacbs-contract/ec-release-policy:git-deaf0d2@sha256:f83b14285753cde479ca972d5506f6352461b599c8b178739c16f069a6fb0844
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cefa8a6/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 16:04:55 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 16:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 12:06:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 12:06:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Staging changes from 84522ea to f436256 on Fri Mar 17 11:14:42 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index 909063e..2a79d16 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -47,7 +47,7 @@ setup-pac-app() (
         webhook_secret=$(openssl rand -hex 20)
 
         if ! oc get -n pipelines-as-code secret pipelines-as-code-secret &>/dev/null; then         
-                token=$(sign rs256 "$payload" "$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)")
+                token=$(sign rs256 "$payload" "$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)")
                 webhook_url=$(oc whoami --show-console | sed 's/console-openshift-console/pipelines-as-code-controller-pipelines-as-code/')
                 curl \
                 -X PATCH \
@@ -62,7 +62,7 @@ setup-pac-app() (
 
 if [ -n "${PAC_GITHUB_APP_ID}" ] && [ -n "${PAC_GITHUB_APP_PRIVATE_KEY}" ]; then
         WEBHOOK_SECRET=$(setup-pac-app)
-        GITHUB_APP_PRIVATE_KEY=$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)
+        GITHUB_APP_PRIVATE_KEY=$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)
         GITHUB_APP_DATA="--from-literal github-private-key='$GITHUB_APP_PRIVATE_KEY' --from-literal github-application-id='${PAC_GITHUB_APP_ID}' --from-literal webhook.secret='$WEBHOOK_SECRET'"                
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 12:05:44 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 10:04:28 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 12:05:47 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 10:04:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>16: Development changes from 84522ea to f436256 on Fri Mar 17 11:14:42 2023 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/hack/build/setup-pac-integration.sh b/hack/build/setup-pac-integration.sh
index 909063e..2a79d16 100755
--- a/hack/build/setup-pac-integration.sh
+++ b/hack/build/setup-pac-integration.sh
@@ -47,7 +47,7 @@ setup-pac-app() (
         webhook_secret=$(openssl rand -hex 20)
 
         if ! oc get -n pipelines-as-code secret pipelines-as-code-secret &>/dev/null; then         
-                token=$(sign rs256 "$payload" "$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)")
+                token=$(sign rs256 "$payload" "$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)")
                 webhook_url=$(oc whoami --show-console | sed 's/console-openshift-console/pipelines-as-code-controller-pipelines-as-code/')
                 curl \
                 -X PATCH \
@@ -62,7 +62,7 @@ setup-pac-app() (
 
 if [ -n "${PAC_GITHUB_APP_ID}" ] && [ -n "${PAC_GITHUB_APP_PRIVATE_KEY}" ]; then
         WEBHOOK_SECRET=$(setup-pac-app)
-        GITHUB_APP_PRIVATE_KEY=$(echo $PAC_GITHUB_APP_PRIVATE_KEY | base64 -d)
+        GITHUB_APP_PRIVATE_KEY=$(echo "$PAC_GITHUB_APP_PRIVATE_KEY" | base64 -d)
         GITHUB_APP_DATA="--from-literal github-private-key='$GITHUB_APP_PRIVATE_KEY' --from-literal github-application-id='${PAC_GITHUB_APP_ID}' --from-literal webhook.secret='$WEBHOOK_SECRET'"                
 fi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-f436256/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 12:06:07 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 12:06:11 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 10:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 10:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Staging changes from cafc39e to 84522ea on Fri Mar 17 08:58:56 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 8a61a3e..3c64c8a 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 68c9506..e3cc20f 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index c02d244..57ae239 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 10:04:28 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 10:04:34 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>17: Development changes from cafc39e to 84522ea on Fri Mar 17 08:58:56 2023 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/spi/kustomization.yaml b/components/monitoring/grafana/base/spi/kustomization.yaml
index 8a61a3e..3c64c8a 100644
--- a/components/monitoring/grafana/base/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/spi/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+- https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/base?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi-vault/kustomization.yaml b/components/spi-vault/kustomization.yaml
index 68c9506..e3cc20f 100644
--- a/components/spi-vault/kustomization.yaml
+++ b/components/spi-vault/kustomization.yaml
@@ -4,4 +4,4 @@ kind: Kustomization
 namespace: spi-vault
 
 resources:
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/vault/openshift?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
diff --git a/components/spi/base/kustomization.yaml b/components/spi/base/kustomization.yaml
index c02d244..57ae239 100644
--- a/components/spi/base/kustomization.yaml
+++ b/components/spi/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 
 resources:
   - argocd-permissions.yaml
-  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=8392784544c69656cdd23c65271ef83a3f947cdf
+  - https://github.com/redhat-appstudio/service-provider-integration-operator/config/overlays/openshift_vault?ref=d92890984f9b86b7995ec824c1880f08d7d4609d
 
 images:
   - name:  quay.io/redhat-appstudio/service-provider-integration-operator
     newName: quay.io/redhat-appstudio/service-provider-integration-operator
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
   - name: quay.io/redhat-appstudio/service-provider-integration-oauth
     newName: quay.io/redhat-appstudio/service-provider-integration-oauth
-    newTag: 8392784544c69656cdd23c65271ef83a3f947cdf
+    newTag: d92890984f9b86b7995ec824c1880f08d7d4609d
 
 namespace: spi-system
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-84522ea/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 10:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 10:05:08 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 08:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Staging changes from 3e6b681 to cafc39e on Fri Mar 17 07:30:29 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5c1c6f0..7eb1bf3 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
 
 components:
   - ../components/tekton-chains
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index b9c98ad..8f25c62 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8d1ec02..93b9653 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/hack/secret-creator/create-plnsvc-secrets.sh b/hack/secret-creator/create-plnsvc-secrets.sh
index c89a48b..bbcc1fa 100755
--- a/hack/secret-creator/create-plnsvc-secrets.sh
+++ b/hack/secret-creator/create-plnsvc-secrets.sh
@@ -37,8 +37,11 @@ create_s3_secret() {
     USER=minio
     PASS="$(openssl rand -base64 20)"
     kubectl create secret generic -n tekton-results tekton-results-s3 \
-      --from-literal=S3_ACCESS_KEY_ID="$USER" \
-      --from-literal=S3_SECRET_ACCESS_KEY="$PASS"
+      --from-literal=aws_access_key_id="$USER" \
+      --from-literal=aws_secret_access_key="$PASS" \
+      --from-literal=aws_region='not-applicable' \
+      --from-literal=bucket=tekton-results \
+      --from-literal=endpoint='https://minio.tekton-results.svc.cluster.local'
 
     echo "Creating MinIO config" >&2
     if kubectl get secret -n tekton-results minio-storage-configuration &>/dev/null; then 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (466 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 08:04:38 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
44c44
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
191c191
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
203c203
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
215c215
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
292c292
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
313c313
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
355c355
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
388c388
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
523c523
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
579c579
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
611,617d610
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - get
<   - list
< - apiGroups:
646c639
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
765c758
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1093c1086
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1112c1105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1150c1143
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1169c1162
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1295c1288
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1315c1308
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1335c1328
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1484,1498d1476
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-results-watcher-logs
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - kind: ServiceAccount
<   name: tekton-results-watcher
<   namespace: tekton-results
< ---
1518c1496
<   secret-github-app-token-scoped: "true"
---
>   secret-github-app-token-scopped: "true"
1527c1505
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1569c1547
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1577c1555
<   version: v0.16.0
---
>   version: v0.15.0
1585c1563
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1846c1824
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1885c1863
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1909c1887
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1932c1910
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2035c2013
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2055c2033
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2075c2053
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.15.0
2127c2105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2148c2126
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2160c2138
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.15.0
2203c2181
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2223c2201
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2237c2215
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.15.0
2380,2410d2357
<         - name: LOGS_API
<           value: "true"
<         - name: LOGS_TYPE
<           value: S3
<         - name: S3_HOSTNAME_IMMUTABLE
<           value: "true"
<         - name: S3_ACCESS_KEY_ID
<           valueFrom:
<             secretKeyRef:
<               key: aws_access_key_id
<               name: tekton-results-s3
<         - name: S3_SECRET_ACCESS_KEY
<           valueFrom:
<             secretKeyRef:
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
<               name: tekton-results-s3
<         - name: S3_BUCKET_NAME
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
<         - name: S3_ENDPOINT
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
<               name: tekton-results-s3
2431c2378
<         image: quay.io/redhat-appstudio/tekton-results-api:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-api:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2503c2450
<         image: quay.io/redhat-appstudio/tekton-results-watcher:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2513,2514d2459
<             add:
<             - NET_BIND_SERVICE
2701c2646
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2726,2729d2670
<     enable-bundles-resolver: true
<     enable-cluster-resolver: true
<     enable-git-resolver: true
<     enable-hub-resolver: true
2765c2706
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 08:04:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
44c44
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
191c191
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
203c203
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
215c215
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
292c292
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
313c313
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
355c355
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
388c388
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
523c523
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
579c579
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
611,617d610
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - get
<   - list
< - apiGroups:
646c639
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
765c758
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1093c1086
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1112c1105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1150c1143
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1169c1162
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1295c1288
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1315c1308
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1335c1328
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1484,1498d1476
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   name: tekton-results-watcher-logs
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: tekton-results-admin
< subjects:
< - kind: ServiceAccount
<   name: tekton-results-watcher
<   namespace: tekton-results
< ---
1518c1496
<   secret-github-app-token-scoped: "true"
---
>   secret-github-app-token-scopped: "true"
1527c1505
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1569c1547
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1577c1555
<   version: v0.16.0
---
>   version: v0.15.0
1585c1563
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1846c1824
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1885c1863
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1909c1887
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1932c1910
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2035c2013
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2055c2033
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2075c2053
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.15.0
2127c2105
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2148c2126
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2160c2138
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.15.0
2203c2181
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2223c2201
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2237c2215
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.15.0
2380,2410d2357
<         - name: LOGS_API
<           value: "true"
<         - name: LOGS_TYPE
<           value: S3
<         - name: S3_HOSTNAME_IMMUTABLE
<           value: "true"
<         - name: S3_ACCESS_KEY_ID
<           valueFrom:
<             secretKeyRef:
<               key: aws_access_key_id
<               name: tekton-results-s3
<         - name: S3_SECRET_ACCESS_KEY
<           valueFrom:
<             secretKeyRef:
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
<               name: tekton-results-s3
<         - name: S3_BUCKET_NAME
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
<         - name: S3_ENDPOINT
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
<               name: tekton-results-s3
2431c2378
<         image: quay.io/redhat-appstudio/tekton-results-api:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-api:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2503c2450
<         image: quay.io/redhat-appstudio/tekton-results-watcher:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2513,2514d2459
<             add:
<             - NET_BIND_SERVICE
2701c2646
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2726,2729d2670
<     enable-bundles-resolver: true
<     enable-cluster-resolver: true
<     enable-git-resolver: true
<     enable-hub-resolver: true
2765c2706
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0 
```
 
</details> 
<br> 


</div>

<div>
<h3>18: Development changes from 3e6b681 to cafc39e on Fri Mar 17 07:30:29 2023 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5c1c6f0..7eb1bf3 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
 
 components:
   - ../components/tekton-chains
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index b9c98ad..8f25c62 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 8d1ec02..93b9653 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=52dcd4770bc24b8ed9ad92303289e6e7e7696ba5
+  - git::https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=8f3ebf86101a4cf21fe7e86335e85a3fb6e3671f
   - ../../base/external-secrets
   - ../../base/testing
 
diff --git a/hack/secret-creator/create-plnsvc-secrets.sh b/hack/secret-creator/create-plnsvc-secrets.sh
index c89a48b..bbcc1fa 100755
--- a/hack/secret-creator/create-plnsvc-secrets.sh
+++ b/hack/secret-creator/create-plnsvc-secrets.sh
@@ -37,8 +37,11 @@ create_s3_secret() {
     USER=minio
     PASS="$(openssl rand -base64 20)"
     kubectl create secret generic -n tekton-results tekton-results-s3 \
-      --from-literal=S3_ACCESS_KEY_ID="$USER" \
-      --from-literal=S3_SECRET_ACCESS_KEY="$PASS"
+      --from-literal=aws_access_key_id="$USER" \
+      --from-literal=aws_secret_access_key="$PASS" \
+      --from-literal=aws_region='not-applicable' \
+      --from-literal=bucket=tekton-results \
+      --from-literal=endpoint='https://minio.tekton-results.svc.cluster.local'
 
     echo "Creating MinIO config" >&2
     if kubectl get secret -n tekton-results minio-storage-configuration &>/dev/null; then 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (380 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-cafc39e/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 08:05:00 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 08:05:03 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 08:05:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
38c38
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
174,181d173
<   name: pipeline-service-exporter
<   namespace: openshift-pipelines
< ---
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
185c177
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
197c189
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
209c201
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
278c270
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
299c291
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
341c333
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
374c366
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
509c501
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
565c557
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
597,603d588
<   - tekton.dev
<   resources:
<   - taskruns
<   verbs:
<   - get
<   - list
< - apiGroups:
632c617
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
748,778d732
<   name: pipeline-service-exporter-reader
< rules:
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   - services
<   - namespaces
<   - endpoints
<   verbs:
<   - get
<   - list
<   - watch
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   - taskruns
<   verbs:
<   - get
<   - list
< - nonResourceURLs:
<   - /metrics
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRole
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
782c736
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1110c1064
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1129c1083
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1167c1121
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1186c1140
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1312c1266
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1332c1286
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1352c1306
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1416,1430d1369
<   name: pipeline-service-exporter-reader-binding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: pipeline-service-exporter-reader
< subjects:
< - kind: ServiceAccount
<   name: pipeline-service-exporter
<   namespace: openshift-pipelines
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1534c1473
<   secret-github-app-token-scoped: "true"
---
>   secret-github-app-token-scopped: "true"
1543c1482
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1585c1524
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1593c1532
<   version: v0.16.0
---
>   version: v0.15.0
1601c1540
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1862c1801
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1881,1898d1819
<     app: pipeline-metrics-exporter
<   name: pipeline-metrics-exporter-service
<   namespace: openshift-pipelines
< spec:
<   ports:
<   - name: metrics
<     port: 9117
<     protocol: TCP
<     targetPort: 9117
<   selector:
<     app: pipeline-metrics-exporter
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
1901c1822
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1925c1846
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
1948c1869
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2033,2066d1953
<   name: pipeline-metrics-exporter
<   namespace: openshift-pipelines
< spec:
<   replicas: 1
<   selector:
<     matchLabels:
<       app: pipeline-metrics-exporter
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<       labels:
<         app: pipeline-metrics-exporter
<     spec:
<       containers:
<       - image: quay.io/redhat-pipeline-service/metrics-exporter:45db641
<         name: pipeline-metrics-exporter
<         ports:
<         - containerPort: 9117
<         resources:
<           limits:
<             cpu: 500m
<             memory: 256Mi
<           requests:
<             cpu: 250m
<             memory: 128Mi
<       restartPolicy: Always
<       serviceAccountName: pipeline-service-exporter
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
2070c1957
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2090c1977
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2110c1997
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-controller:v0.15.0
2162c2049
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2183c2070
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2195c2082
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-watcher:v0.15.0
2238c2125
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2258c2145
<         app.kubernetes.io/version: v0.16.0
---
>         app.kubernetes.io/version: v0.15.0
2272c2159
<         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.16.0
---
>         image: ghcr.io/openshift-pipelines/pipelines-as-code-webhook:v0.15.0
2418a2306,2309
>         - name: S3_BUCKET_NAME
>           value: tekton-results
>         - name: S3_ENDPOINT
>           value: https://minio.tekton-results.svc.cluster.local
2420a2312,2313
>         - name: S3_REGION
>           value: us-east-1
2424c2317
<               key: aws_access_key_id
---
>               key: S3_ACCESS_KEY_ID
2429,2444c2322
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
<               name: tekton-results-s3
<         - name: S3_BUCKET_NAME
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
<         - name: S3_ENDPOINT
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
---
>               key: S3_SECRET_ACCESS_KEY
2466c2344
<         image: quay.io/redhat-appstudio/tekton-results-api:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-api:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2478a2357,2359
>         - mountPath: /etc/ssl/certs/s3-cert.crt
>           name: ca-s3
>           subPath: s3-cert.crt
2500c2381
<               key: aws_access_key_id
---
>               key: S3_ACCESS_KEY_ID
2505,2510c2386
<               key: aws_secret_access_key
<               name: tekton-results-s3
<         - name: S3_REGION
<           valueFrom:
<             secretKeyRef:
<               key: aws_region
---
>               key: S3_SECRET_ACCESS_KEY
2513,2516c2389
<           valueFrom:
<             secretKeyRef:
<               key: bucket
<               name: tekton-results-s3
---
>           value: tekton-results
2518,2522c2391,2394
<           valueFrom:
<             secretKeyRef:
<               key: endpoint
<               name: tekton-results-s3
<         image: quay.io/minio/mc:RELEASE.2023-01-28T20-29-38Z
---
>           value: https://minio.tekton-results.svc.cluster.local
>         - name: S3_REGION
>           value: us-east-1
>         image: docker.io/minio/mc:RELEASE.2023-01-28T20-29-38Z
2524a2397,2400
>         volumeMounts:
>         - mountPath: /etc/ssl/certs/s3-cert.crt
>           name: ca-s3
>           subPath: s3-cert.crt
2526a2403,2408
>       - name: ca-s3
>         secret:
>           items:
>           - key: public.crt
>             path: s3-cert.crt
>           secretName: storage-tls
2578c2460
<         image: quay.io/redhat-appstudio/tekton-results-watcher:c0e11ce68cacae1da6756713d0cb5f8b5a394b04
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:9a1f0cb73f3f3013a7f3770c78f715f5c337772c
2588,2589d2469
<             add:
<             - NET_BIND_SERVICE
2647c2527
<         image: bitnami/postgresql@sha256:78ef3a36dd814e5f6dfbd8bb7c2e16086f7ea3cc68108714883671523168d4d5
---
>         image: bitnami/postgresql@sha256:23b9a21460fefdd83accd0f864e734c88bebc67c86ee752a97b77dd4843907f0
2844c2724
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0
2869,2872d2748
<     enable-bundles-resolver: true
<     enable-cluster-resolver: true
<     enable-git-resolver: true
<     enable-hub-resolver: true
2922c2798
<     app.kubernetes.io/version: v0.16.0
---
>     app.kubernetes.io/version: v0.15.0 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Staging changes from c56e936 to 3e6b681 on Fri Mar 17 06:54:59 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/quicklab/templates/deployment.yaml b/hack/quicklab/templates/deployment.yaml
index ba13e90..ab4d495 100644
--- a/hack/quicklab/templates/deployment.yaml
+++ b/hack/quicklab/templates/deployment.yaml
@@ -21,7 +21,7 @@ spec:
       serviceAccountName: nfs-client-provisioner
       containers:
         - name: nfs-client-provisioner
-          image: k8s.gcr.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
+          image: registry.k8s.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
           volumeMounts:
             - name: nfs-client-root
               mountPath: /persistentvolumes 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 08:05:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 08:05:21 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>19: Development changes from c56e936 to 3e6b681 on Fri Mar 17 06:54:59 2023 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/hack/quicklab/templates/deployment.yaml b/hack/quicklab/templates/deployment.yaml
index ba13e90..ab4d495 100644
--- a/hack/quicklab/templates/deployment.yaml
+++ b/hack/quicklab/templates/deployment.yaml
@@ -21,7 +21,7 @@ spec:
       serviceAccountName: nfs-client-provisioner
       containers:
         - name: nfs-client-provisioner
-          image: k8s.gcr.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
+          image: registry.k8s.io/sig-storage/nfs-subdir-external-provisioner:v4.0.2
           volumeMounts:
             - name: nfs-client-root
               mountPath: /persistentvolumes 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-3e6b681/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 08:05:37 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 08:05:41 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/17 08:06:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/17 08:06:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Staging changes from 7012d1d to c56e936 on Fri Mar 17 06:54:11 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 0af3960..fa3e1f3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 638248765110c60c75c62c00031f1968de44d647
+  newTag: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 21a36fc..cfe883b 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 638248765110c60c75c62c00031f1968de44d647
\ No newline at end of file
+    value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 00dc422..8cd68e5 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
---
>           value: 638248765110c60c75c62c00031f1968de44d647
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:638248765110c60c75c62c00031f1968de44d647
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out
1c1
< 2023/03/17 08:05:54 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 20:04:18 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out
1c1
< 2023/03/17 08:05:58 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 20:04:23 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>

<div>
<h3>20: Development changes from 7012d1d to c56e936 on Fri Mar 17 06:54:11 2023 </h3>  
 
<details> 
<summary>Git Diff (47 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/kustomization.yaml b/components/jvm-build-service/kustomization.yaml
index 0af3960..fa3e1f3 100644
--- a/components/jvm-build-service/kustomization.yaml
+++ b/components/jvm-build-service/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=638248765110c60c75c62c00031f1968de44d647
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
 # See more information about this option, here:
@@ -15,7 +15,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: 638248765110c60c75c62c00031f1968de44d647
+  newTag: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/operator_env_patch.yaml b/components/jvm-build-service/operator_env_patch.yaml
index 21a36fc..cfe883b 100644
--- a/components/jvm-build-service/operator_env_patch.yaml
+++ b/components/jvm-build-service/operator_env_patch.yaml
@@ -3,4 +3,4 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: 638248765110c60c75c62c00031f1968de44d647
\ No newline at end of file
+    value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
index 00dc422..8cd68e5 100644
--- a/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/jvm-build-service/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=638248765110c60c75c62c00031f1968de44d647
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/development/components/jvm-build-service/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/development/components/jvm-build-service/kustomize.out
1088,1089c1088,1089
<           value: 799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:799b0e8ac2aa6d46cc6e5dfee91e794d84ae6259
---
>           value: 638248765110c60c75c62c00031f1968de44d647
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:638248765110c60c75c62c00031f1968de44d647
diff -r /home/runner/work/kdiff/kdiff/kustomized-cache/commit-c56e936/development/components/pipeline-service/development/kustomize.out /home/runner/work/kdiff/kdiff/kustomized-cache/commit-7012d1d/development/components/pipeline-service/development/kustomize.out
1,2c1,2
< 2023/03/17 08:06:14 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
< 2023/03/17 08:06:17 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
---
> 2023/03/16 20:04:46 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration.
> 2023/03/16 20:04:51 Warning: Forcing the git protocol using the 'git::' URL prefix is not supported. Kustomize currently strips this invalid prefix, but will stop doing so in a future release. Please remove the 'git::' prefix from your configuration. 
```
 
</details> 
<br> 


</div>
