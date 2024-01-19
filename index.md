# kustomize changes tracked by commits 
### This file generated at Fri Jan 19 00:06:55 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 33340b5b to 0ef30714 on Thu Jan 18 22:46:08 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index c2c4f396..eb08b3d1 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 06bfa323..1673f98e 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+    value: 780d285f12a705da4740c8018e4831c9f6cd79af
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f38a9a0c..f69e9e5e 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-33340b5b/production/components/jvm-build-service/production/kustomize.out.yaml
258,259d257
<                         contextPath:
<                           type: string
447,448d444
<                     contextPath:
<                       type: string
1391c1387
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
1443c1439
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:bd8e505b3082a03c030b36868a3753df9db15f97
1447c1443
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:bd8e505b3082a03c030b36868a3753df9db15f97
1449c1445
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;7.6.3;7.5.1;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8;11;17,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 33340b5b to 0ef30714 on Thu Jan 18 22:46:08 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index c2c4f396..eb08b3d1 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 06bfa323..1673f98e 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+    value: 780d285f12a705da4740c8018e4831c9f6cd79af
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f38a9a0c..f69e9e5e 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-33340b5b/staging/components/jvm-build-service/staging/kustomize.out.yaml
258,259d257
<                         contextPath:
<                           type: string
447,448d444
<                     contextPath:
<                       type: string
1391c1387
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
1443c1439
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:bd8e505b3082a03c030b36868a3753df9db15f97
1447c1443
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:bd8e505b3082a03c030b36868a3753df9db15f97
1449c1445
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;7.6.3;7.5.1;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8;11;17,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13 
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
<h3>1: Development changes from 33340b5b to 0ef30714 on Thu Jan 18 22:46:08 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/jvm-build-service/base/kustomization.yaml b/components/jvm-build-service/base/kustomization.yaml
index c2c4f396..eb08b3d1 100644
--- a/components/jvm-build-service/base/kustomization.yaml
+++ b/components/jvm-build-service/base/kustomization.yaml
@@ -1,8 +1,8 @@
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/crds/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/base?ref=780d285f12a705da4740c8018e4831c9f6cd79af
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/operator/config?ref=780d285f12a705da4740c8018e4831c9f6cd79af
 - monitoring.yaml
 
 # Skip applying the jvm-build-service operands (SystemConfig) while the jvm-build-service operator is being installed.
@@ -16,7 +16,7 @@ namespace: jvm-build-service
 images:
 - name: hacbs-jvm-operator
   newName: quay.io/redhat-appstudio/hacbs-jvm-controller
-  newTag: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+  newTag: 780d285f12a705da4740c8018e4831c9f6cd79af
 
 patches:
 - path: ./operator_env_patch.yaml
diff --git a/components/jvm-build-service/base/operator_env_patch.yaml b/components/jvm-build-service/base/operator_env_patch.yaml
index 06bfa323..1673f98e 100644
--- a/components/jvm-build-service/base/operator_env_patch.yaml
+++ b/components/jvm-build-service/base/operator_env_patch.yaml
@@ -3,7 +3,7 @@
   path: /spec/template/spec/containers/0/env
   value:
   - name: IMAGE_TAG
-    value: e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+    value: 780d285f12a705da4740c8018e4831c9f6cd79af
 - op: add
   path: /spec/template/spec/containers/0/env
   value:
diff --git a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
index f38a9a0c..f69e9e5e 100644
--- a/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/jvm-build-service/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
+- https://github.com/redhat-appstudio/jvm-build-service/deploy/monitoring/grafana-dashboards/?ref=780d285f12a705da4740c8018e4831c9f6cd79af
 - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-33340b5b/development/components/jvm-build-service/development/kustomize.out.yaml
258,259d257
<                         contextPath:
<                           type: string
447,448d444
<                     contextPath:
<                       type: string
1391c1387
<         image: quay.io/redhat-appstudio/hacbs-jvm-controller:780d285f12a705da4740c8018e4831c9f6cd79af
---
>         image: quay.io/redhat-appstudio/hacbs-jvm-controller:e239d3f51bed23fa893c0a02cc59b02b3d9a3d0f
1422c1418
<       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
---
>       image: quay.io/redhat-appstudio/hacbs-jdk7-builder:bd8e505b3082a03c030b36868a3753df9db15f97
1426c1422
<       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:3fc9e76797852c06a5546f8636cb66e9d15c5f0a
---
>       image: quay.io/redhat-appstudio/hacbs-jdk17-builder:bd8e505b3082a03c030b36868a3753df9db15f97
1428c1424
<       tag: jdk:8;11;17;21,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;7.6.3;7.5.1;6.9.2;5.6.4;4.10.3,sbt:1.8.0,ant:1.10.13
---
>       tag: jdk:8;11;17,maven:3.8.8;3.9.5,gradle:8.4;8.3;8.0.2;7.4.2;6.9.2,sbt:1.8.0,ant:1.10.13 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 14f1edac to 33340b5b on Thu Jan 18 17:34:18 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..0e80093b
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "3Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index e8516f8d..a326c1dc 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -25,6 +25,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e3502cdb..491bfd3c 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1514,7 +1514,7 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 3Gi
           requests:
             cpu: 100m
             memory: 64Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0c9e74a8..d802f90c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1514,7 +1514,7 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 3Gi
           requests:
             cpu: 100m
             memory: 64Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-14f1edac/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1517c1517
<             memory: 3Gi
---
>             memory: 2Gi
./commit-14f1edac/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1517c1517
<             memory: 3Gi
---
>             memory: 2Gi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 14f1edac to 33340b5b on Thu Jan 18 17:34:18 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..0e80093b
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "3Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index e8516f8d..a326c1dc 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -25,6 +25,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e3502cdb..491bfd3c 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1514,7 +1514,7 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 3Gi
           requests:
             cpu: 100m
             memory: 64Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0c9e74a8..d802f90c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1514,7 +1514,7 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 3Gi
           requests:
             cpu: 100m
             memory: 64Mi 
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
<h3>2: Development changes from 14f1edac to 33340b5b on Thu Jan 18 17:34:18 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-mem.yaml b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..0e80093b
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "3Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index e8516f8d..a326c1dc 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -25,6 +25,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e3502cdb..491bfd3c 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1514,7 +1514,7 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 3Gi
           requests:
             cpu: 100m
             memory: 64Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 0c9e74a8..d802f90c 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1514,7 +1514,7 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 3Gi
           requests:
             cpu: 100m
             memory: 64Mi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 1379915f to 14f1edac on Thu Jan 18 16:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 303e846d..773df155 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,5 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
+- monitoring.yaml
 - rbac
 
 namespace: image-controller
diff --git a/components/image-controller/base/monitoring.yaml b/components/image-controller/base/monitoring.yaml
new file mode 100644
index 00000000..37a8fd26
--- /dev/null
+++ b/components/image-controller/base/monitoring.yaml
@@ -0,0 +1,43 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-image-controller-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: image-controller-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: image-controller
+spec:
+  endpoints:
+  - path: /metrics
+    interval: 15s
+    port: https
+    scheme: https
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      control-plane: controller-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-1379915f/production/components/image-controller/production/kustomize.out.yaml
167,172d166
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: metrics-reader
<   namespace: image-controller
< ---
445,457d438
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-image-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: image-controller-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: image-controller
< ---
589,597d569
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: image-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
781,800d752
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: image-controller
<   namespace: image-controller
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 1379915f to 14f1edac on Thu Jan 18 16:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 303e846d..773df155 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,5 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
+- monitoring.yaml
 - rbac
 
 namespace: image-controller
diff --git a/components/image-controller/base/monitoring.yaml b/components/image-controller/base/monitoring.yaml
new file mode 100644
index 00000000..37a8fd26
--- /dev/null
+++ b/components/image-controller/base/monitoring.yaml
@@ -0,0 +1,43 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-image-controller-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: image-controller-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: image-controller
+spec:
+  endpoints:
+  - path: /metrics
+    interval: 15s
+    port: https
+    scheme: https
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      control-plane: controller-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-1379915f/staging/components/image-controller/staging/kustomize.out.yaml
167,172d166
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: metrics-reader
<   namespace: image-controller
< ---
445,457d438
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-image-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: image-controller-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: image-controller
< ---
618,626d598
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: image-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
809,828d780
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: image-controller
<   namespace: image-controller
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
<h3>3: Development changes from 1379915f to 14f1edac on Thu Jan 18 16:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/image-controller/base/kustomization.yaml b/components/image-controller/base/kustomization.yaml
index 303e846d..773df155 100644
--- a/components/image-controller/base/kustomization.yaml
+++ b/components/image-controller/base/kustomization.yaml
@@ -1,5 +1,6 @@
 resources:
 - allow-argocd-to-manage.yaml
+- monitoring.yaml
 - rbac
 
 namespace: image-controller
diff --git a/components/image-controller/base/monitoring.yaml b/components/image-controller/base/monitoring.yaml
new file mode 100644
index 00000000..37a8fd26
--- /dev/null
+++ b/components/image-controller/base/monitoring.yaml
@@ -0,0 +1,43 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-image-controller-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: image-controller-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: image-controller
+spec:
+  endpoints:
+  - path: /metrics
+    interval: 15s
+    port: https
+    scheme: https
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+    tlsConfig:
+      insecureSkipVerify: true
+  selector:
+    matchLabels:
+      control-plane: controller-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (53 lines)</summary>  

``` 
./commit-1379915f/development/components/image-controller/development/kustomize.out.yaml
167,172d166
< apiVersion: v1
< kind: ServiceAccount
< metadata:
<   name: metrics-reader
<   namespace: image-controller
< ---
445,457d438
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   name: prometheus-image-controller-metrics-reader
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: image-controller-metrics-reader
< subjects:
< - kind: ServiceAccount
<   name: metrics-reader
<   namespace: image-controller
< ---
618,626d598
< kind: Secret
< metadata:
<   annotations:
<     kubernetes.io/service-account.name: metrics-reader
<   name: metrics-reader
<   namespace: image-controller
< type: kubernetes.io/service-account-token
< ---
< apiVersion: v1
789,808d760
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   name: image-controller
<   namespace: image-controller
< spec:
<   endpoints:
<   - bearerTokenSecret:
<       key: token
<       name: metrics-reader
<     interval: 15s
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from c2ff6e6a to 1379915f on Thu Jan 18 14:41:26 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 35dd5520..7094d370 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-c2ff6e6a/production/components/image-controller/production/kustomize.out.yaml
611c611
<         image: quay.io/redhat-appstudio/image-controller:88e3b1cede3a4cb6871b75d92bd4da408122d991
---
>         image: quay.io/redhat-appstudio/image-controller:73747651941a35a4f4e1047688f0ca3487893eee
753,771d752
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: image-controller-controller-manager-metrics-monitor
<   namespace: image-controller
< spec:
<   endpoints:
<   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from c2ff6e6a to 1379915f on Thu Jan 18 14:41:26 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 35dd5520..7094d370 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from c2ff6e6a to 1379915f on Thu Jan 18 14:41:26 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 35dd5520..7094d370 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
 
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
```
 
</details> 
<br> 


</div>
