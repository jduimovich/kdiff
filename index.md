# kustomize changes tracked by commits 
### This file generated at Tue May  7 20:02:10 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 27d81bd4 to 1dba28de on Tue May 7 15:42:26 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c93f1b6b..f40b41d7 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=874e4963a890100b6da212ec1c473ba1b71a9ce1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=0837126979242291bcae72cb631b88f37046b9a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0cb3c281..ef057c3c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=874e4963a890100b6da212ec1c473ba1b71a9ce1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0837126979242291bcae72cb631b88f37046b9a3
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 874e4963a890100b6da212ec1c473ba1b71a9ce1
+    newTag: 0837126979242291bcae72cb631b88f37046b9a3
 
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
<h3>1: Staging changes from 27d81bd4 to 1dba28de on Tue May 7 15:42:26 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c93f1b6b..f40b41d7 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=874e4963a890100b6da212ec1c473ba1b71a9ce1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=0837126979242291bcae72cb631b88f37046b9a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0cb3c281..ef057c3c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=874e4963a890100b6da212ec1c473ba1b71a9ce1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0837126979242291bcae72cb631b88f37046b9a3
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 874e4963a890100b6da212ec1c473ba1b71a9ce1
+    newTag: 0837126979242291bcae72cb631b88f37046b9a3
 
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
<h3>1: Development changes from 27d81bd4 to 1dba28de on Tue May 7 15:42:26 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index c93f1b6b..f40b41d7 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=874e4963a890100b6da212ec1c473ba1b71a9ce1
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=0837126979242291bcae72cb631b88f37046b9a3
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 0cb3c281..ef057c3c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=874e4963a890100b6da212ec1c473ba1b71a9ce1
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0837126979242291bcae72cb631b88f37046b9a3
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 874e4963a890100b6da212ec1c473ba1b71a9ce1
+    newTag: 0837126979242291bcae72cb631b88f37046b9a3
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-27d81bd4/development/components/release/development/kustomize.out.yaml
1765c1765
<         image: quay.io/redhat-appstudio/release-service:0837126979242291bcae72cb631b88f37046b9a3
---
>         image: quay.io/redhat-appstudio/release-service:874e4963a890100b6da212ec1c473ba1b71a9ce1 
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
<h3>2: Production changes from c6a7ec1c to 27d81bd4 on Tue May 7 13:19:22 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 9f50e0b8..a49d43c2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -15,6 +15,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index b84108dc..fdee9558 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 0bcbef62..4ff19f69 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -16,6 +16,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index f02c8b95..745c4630 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0e5663ec..ae03414b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -16,6 +16,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index b84108dc..fdee9558 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-c6a7ec1c/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1296,1305d1295
< data:
<   FINALLY_TIMEOUT: 1h
<   PIPELINE_TIMEOUT: 3h
<   TASKS_TIMEOUT: 2h
< kind: ConfigMap
< metadata:
<   name: pipelinerun-options-494m66dgdm
<   namespace: integration-service
< ---
< apiVersion: v1
1398,1415d1387
<               optional: true
<         - name: PIPELINE_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: PIPELINE_TIMEOUT
<               name: pipelinerun-options-494m66dgdm
<               optional: true
<         - name: TASKS_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: TASKS_TIMEOUT
<               name: pipelinerun-options-494m66dgdm
<               optional: true
<         - name: FINALLY_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: FINALLY_TIMEOUT
<               name: pipelinerun-options-494m66dgdm 
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
<h3>2: Staging changes from c6a7ec1c to 27d81bd4 on Tue May 7 13:19:22 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 9f50e0b8..a49d43c2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -15,6 +15,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index b84108dc..fdee9558 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 0bcbef62..4ff19f69 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -16,6 +16,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index f02c8b95..745c4630 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0e5663ec..ae03414b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -16,6 +16,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index b84108dc..fdee9558 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-c6a7ec1c/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1296,1305d1295
< data:
<   FINALLY_TIMEOUT: 1h
<   PIPELINE_TIMEOUT: 3h
<   TASKS_TIMEOUT: 2h
< kind: ConfigMap
< metadata:
<   name: pipelinerun-options-494m66dgdm
<   namespace: integration-service
< ---
< apiVersion: v1
1398,1415d1387
<               optional: true
<         - name: PIPELINE_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: PIPELINE_TIMEOUT
<               name: pipelinerun-options-494m66dgdm
<               optional: true
<         - name: TASKS_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: TASKS_TIMEOUT
<               name: pipelinerun-options-494m66dgdm
<               optional: true
<         - name: FINALLY_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: FINALLY_TIMEOUT
<               name: pipelinerun-options-494m66dgdm 
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
<h3>2: Development changes from c6a7ec1c to 27d81bd4 on Tue May 7 13:19:22 2024 </h3>  
 
<details> 
<summary>Git Diff (126 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 9f50e0b8..a49d43c2 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -15,6 +15,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index b84108dc..fdee9558 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 0bcbef62..4ff19f69 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -16,6 +16,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index f02c8b95..745c4630 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 0e5663ec..ae03414b 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -16,6 +16,11 @@ configMapGenerator:
   literals:
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+- name: pipelinerun-options
+  literals:
+    - PIPELINE_TIMEOUT="3h"
+    - TASKS_TIMEOUT="2h"
+    - FINALLY_TIMEOUT="1h"
 
 namespace: integration-service
 
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index b84108dc..fdee9558 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -28,3 +28,21 @@ spec:
               name: console-url
               key: CONSOLE_URL_TASKLOG
               optional: true
+        - name: PIPELINE_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: PIPELINE_TIMEOUT
+              optional: true
+        - name: TASKS_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: TASKS_TIMEOUT
+              optional: true
+        - name: FINALLY_TIMEOUT
+          valueFrom:
+            configMapKeyRef:
+              name: pipelinerun-options
+              key: FINALLY_TIMEOUT
+              optional: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-c6a7ec1c/development/components/integration/development/kustomize.out.yaml
1294,1303d1293
< data:
<   FINALLY_TIMEOUT: 1h
<   PIPELINE_TIMEOUT: 3h
<   TASKS_TIMEOUT: 2h
< kind: ConfigMap
< metadata:
<   name: pipelinerun-options-494m66dgdm
<   namespace: integration-service
< ---
< apiVersion: v1
1396,1413d1385
<               optional: true
<         - name: PIPELINE_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: PIPELINE_TIMEOUT
<               name: pipelinerun-options-494m66dgdm
<               optional: true
<         - name: TASKS_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: TASKS_TIMEOUT
<               name: pipelinerun-options-494m66dgdm
<               optional: true
<         - name: FINALLY_TIMEOUT
<           valueFrom:
<             configMapKeyRef:
<               key: FINALLY_TIMEOUT
<               name: pipelinerun-options-494m66dgdm 
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
<h3>3: Production changes from da1f7647 to c6a7ec1c on Tue May 7 10:56:19 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 7f82f9e6..0bcbef62 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (206 lines)</summary>  

``` 
./commit-da1f7647/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
28d27
<       - v1beta2
247c246
<     served: true
---
>     served: false
255,257d253
<     deprecated: true
<     deprecationWarning: The v1beta1 version is deprecated and will be automatically
<       migrated to v1beta2
485,662d480
<     storage: false
<     subresources:
<       status: {}
<   - additionalPrinterColumns:
<     - jsonPath: .spec.application
<       name: Application
<       type: string
<     name: v1beta2
<     schema:
<       openAPIV3Schema:
<         description: IntegrationTestScenario is the Schema for the integrationtestscenarios
<           API
<         properties:
<           apiVersion:
<             description: 'APIVersion defines the versioned schema of this representation
<               of an object. Servers should convert recognized schemas to the latest
<               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
<             type: string
<           kind:
<             description: 'Kind is a string value representing the REST resource this
<               object represents. Servers may infer this from the endpoint the client
<               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
<             type: string
<           metadata:
<             type: object
<           spec:
<             description: IntegrationTestScenarioSpec defines the desired state of
<               IntegrationScenario
<             properties:
<               application:
<                 description: Application that's associated with the IntegrationTestScenario
<                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
<                 type: string
<               contexts:
<                 description: Contexts where this IntegrationTestScenario can be applied
<                 items:
<                   description: TestContext contains the name and values of a Test
<                     context
<                   properties:
<                     description:
<                       type: string
<                     name:
<                       type: string
<                   required:
<                   - name
<                   type: object
<                 type: array
<               params:
<                 description: Params to pass to the pipeline
<                 items:
<                   description: PipelineParameter contains the name and values of a
<                     Tekton Pipeline parameter
<                   properties:
<                     name:
<                       type: string
<                     value:
<                       type: string
<                     values:
<                       items:
<                         type: string
<                       type: array
<                   required:
<                   - name
<                   type: object
<                 type: array
<               resolverRef:
<                 description: Tekton Resolver where to store the Tekton resolverRef
<                   trigger Tekton pipeline used to refer to a Pipeline or Task in a
<                   remote location like a git repo.
<                 properties:
<                   params:
<                     description: Params contains the parameters used to identify the
<                       referenced Tekton resource. Example entries might include "repo"
<                       or "path" but the set of params ultimately depends on the chosen
<                       resolver.
<                     items:
<                       description: ResolverParameter contains the name and values
<                         used to identify the referenced Tekton resource
<                       properties:
<                         name:
<                           type: string
<                         value:
<                           type: string
<                       required:
<                       - name
<                       - value
<                       type: object
<                     type: array
<                   resolver:
<                     description: Resolver is the name of the resolver that should
<                       perform resolution of the referenced Tekton resource, such as
<                       "git" or "bundle"..
<                     type: string
<                 required:
<                 - params
<                 - resolver
<                 type: object
<             required:
<             - application
<             - resolverRef
<             type: object
<           status:
<             description: IntegrationTestScenarioStatus defines the observed state
<               of IntegrationTestScenario
<             properties:
<               conditions:
<                 items:
<                   description: "Condition contains details for one aspect of the current
<                     state of this API Resource. --- This struct is intended for direct
<                     use as an array at the field path .status.conditions.  For example,
<                     \n type FooStatus struct{ // Represents the observations of a
<                     foo's current state. // Known .status.conditions.type are: \"Available\",
<                     \"Progressing\", and \"Degraded\" // +patchMergeKey=type // +patchStrategy=merge
<                     // +listType=map // +listMapKey=type Conditions []metav1.Condition
<                     `json:\"conditions,omitempty\" patchStrategy:\"merge\" patchMergeKey:\"type\"
<                     protobuf:\"bytes,1,rep,name=conditions\"` \n // other fields }"
<                   properties:
<                     lastTransitionTime:
<                       description: lastTransitionTime is the last time the condition
<                         transitioned from one status to another. This should be when
<                         the underlying condition changed.  If that is not known, then
<                         using the time when the API field changed is acceptable.
<                       format: date-time
<                       type: string
<                     message:
<                       description: message is a human readable message indicating
<                         details about the transition. This may be an empty string.
<                       maxLength: 32768
<                       type: string
<                     observedGeneration:
<                       description: observedGeneration represents the .metadata.generation
<                         that the condition was set based upon. For instance, if .metadata.generation
<                         is currently 12, but the .status.conditions[x].observedGeneration
<                         is 9, the condition is out of date with respect to the current
<                         state of the instance.
<                       format: int64
<                       minimum: 0
<                       type: integer
<                     reason:
<                       description: reason contains a programmatic identifier indicating
<                         the reason for the condition's last transition. Producers
<                         of specific condition types may define expected values and
<                         meanings for this field, and whether the values are considered
<                         a guaranteed API. The value should be a CamelCase string.
<                         This field may not be empty.
<                       maxLength: 1024
<                       minLength: 1
<                       pattern: ^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$
<                       type: string
<                     status:
<                       description: status of the condition, one of True, False, Unknown.
<                       enum:
<                       - "True"
<                       - "False"
<                       - Unknown
<                       type: string
<                     type:
<                       description: type of condition in CamelCase or in foo.example.com/CamelCase.
<                         --- Many .condition.type values are consistent across resources
<                         like Available, but because arbitrary conditions can be useful
<                         (see .node.status.conditions), the ability to deconflict is
<                         important. The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
<                       maxLength: 316
<                       pattern: ^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$
<                       type: string
<                   required:
<                   - lastTransitionTime
<                   - message
<                   - reason
<                   - status
<                   - type
<                   type: object
<                 type: array
<             required:
<             - conditions
<             type: object
<         type: object
<     served: true
1389c1207
<         image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>         image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
1480c1298
<             image: quay.io/redhat-appstudio/integration-service:643d344cb36e0667c0471103ffe8db7d7ae71326
---
>             image: quay.io/redhat-appstudio/integration-service:91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
1559c1377
<       path: /validate-appstudio-redhat-com-v1beta2-integrationtestscenario
---
>       path: /validate-appstudio-redhat-com-v1beta1-integrationtestscenario
1566c1384
<     - v1beta2
---
>     - v1beta1 
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
<h3>3: Staging changes from da1f7647 to c6a7ec1c on Tue May 7 10:56:19 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 7f82f9e6..0bcbef62 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from da1f7647 to c6a7ec1c on Tue May 7 10:56:19 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 7f82f9e6..0bcbef62 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=643d344cb36e0667c0471103ffe8db7d7ae71326
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 91fb6c73fd6e988c12bd2b50fb05d0d353db1a16
+  newTag: 643d344cb36e0667c0471103ffe8db7d7ae71326
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 5ed1f0e6 to da1f7647 on Tue May 7 09:47:46 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index afc95ff1..1529f218 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46f869b8..23d2c9b5 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=eba25da684737cb9b0b4f79e8845cf9b453844b1
+      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5ed1f0e6/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
378c378
<   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
---
>   verify_ec_task_git_revision: eba25da684737cb9b0b4f79e8845cf9b453844b1
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18 
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
<h3>4: Staging changes from 5ed1f0e6 to da1f7647 on Tue May 7 09:47:46 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index afc95ff1..1529f218 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46f869b8..23d2c9b5 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=eba25da684737cb9b0b4f79e8845cf9b453844b1
+      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5ed1f0e6/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
378c378
<   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
---
>   verify_ec_task_git_revision: eba25da684737cb9b0b4f79e8845cf9b453844b1
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18 
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
<h3>4: Development changes from 5ed1f0e6 to da1f7647 on Tue May 7 09:47:46 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index afc95ff1..1529f218 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46f869b8..23d2c9b5 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=eba25da684737cb9b0b4f79e8845cf9b453844b1
+      - verify_ec_task_git_revision=5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5ed1f0e6/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5ae2ea26915a7948beaeb5a0e8b8049158ca66ce@sha256:11b48563c2bed84900939ea7616dcd9d79015e6d4351bb657b545a78723d86d1
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:eba25da684737cb9b0b4f79e8845cf9b453844b1@sha256:07444dcf07e30a3f8c21861d0fd6417b6476023699b201ebc424c08afcbe5897
378c378
<   verify_ec_task_git_revision: 5ae2ea26915a7948beaeb5a0e8b8049158ca66ce
---
>   verify_ec_task_git_revision: eba25da684737cb9b0b4f79e8845cf9b453844b1
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-9e347db@sha256:209d9d4c629e6caf5b6c1e94206969555192fbc6e2385d26c440607b7bc63cf7
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-fbe4116@sha256:d493c08361a6713fc4068139996bf87d2d1d1d5f0fea8209878539b62f5b7b18 
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
