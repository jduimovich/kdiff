# kustomize changes tracked by commits 
### This file generated at Wed Apr 17 08:05:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0c3bb7fe to b3063195 on Wed Apr 17 07:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 8d10617c..3f1091d9 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -43,3 +43,6 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
+  value: 6
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index fe44b535..94ace71f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a8fd13f7..06316805 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d8fe1084..de75e0f7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 0c3bb7fe to b3063195 on Wed Apr 17 07:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 8d10617c..3f1091d9 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -43,3 +43,6 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
+  value: 6
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index fe44b535..94ace71f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a8fd13f7..06316805 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d8fe1084..de75e0f7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-0c3bb7fe/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1977c1977
<             minReplicas: 6
---
>             minReplicas: 2
./commit-0c3bb7fe/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1977c1977
<             minReplicas: 6
---
>             minReplicas: 2
./commit-0c3bb7fe/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1977c1977
<             minReplicas: 6
---
>             minReplicas: 2 
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
<h3>1: Development changes from 0c3bb7fe to b3063195 on Wed Apr 17 07:31:08 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 8d10617c..3f1091d9 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -43,3 +43,6 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pipeline/options/horizontalPodAutoscalers/tekton-pipelines-webhook/spec/minReplicas
+  value: 6
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index fe44b535..94ace71f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a8fd13f7..06316805 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index d8fe1084..de75e0f7 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1974,7 +1974,7 @@ spec:
                   averageUtilization: 100
                   type: Utilization
               type: Resource
-            minReplicas: 2
+            minReplicas: 6
     performance:
       buckets: 4
       disable-ha: false 
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
<h3>2: Production changes from 42bf65b9 to 0c3bb7fe on Wed Apr 17 04:26:51 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ce87bded..79cac3b9 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,7 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG=""="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
  
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 42bf65b9 to 0c3bb7fe on Wed Apr 17 04:26:51 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ce87bded..79cac3b9 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,7 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG=""="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
  
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
<h3>2: Development changes from 42bf65b9 to 0c3bb7fe on Wed Apr 17 04:26:51 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index ce87bded..79cac3b9 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -15,7 +15,7 @@ configMapGenerator:
 - name: console-url
   literals:
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
-    - CONSOLE_URL_TASKLOG=""="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 
 namespace: integration-service
  
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
<h3>3: Production changes from 67a03966 to 42bf65b9 on Wed Apr 17 03:09:52 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 82a5977c..a781902b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=84a78472781814a2827af663659f2672a07f0f8f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 20c84154..b86c3f93 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 84a78472781814a2827af663659f2672a07f0f8f
+    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 67a03966 to 42bf65b9 on Wed Apr 17 03:09:52 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 82a5977c..a781902b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=84a78472781814a2827af663659f2672a07f0f8f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 20c84154..b86c3f93 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 84a78472781814a2827af663659f2672a07f0f8f
+    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
 
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
<h3>3: Development changes from 67a03966 to 42bf65b9 on Wed Apr 17 03:09:52 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 82a5977c..a781902b 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=84a78472781814a2827af663659f2672a07f0f8f
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 20c84154..b86c3f93 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 84a78472781814a2827af663659f2672a07f0f8f
+    newTag: ec5cca73ee273dcfa4b49aa5bde471f824171405
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-67a03966/development/components/release/development/kustomize.out.yaml
1765c1765
<         image: quay.io/redhat-appstudio/release-service:ec5cca73ee273dcfa4b49aa5bde471f824171405
---
>         image: quay.io/redhat-appstudio/release-service:84a78472781814a2827af663659f2672a07f0f8f 
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
<h3>4: Production changes from 3eb398bd to 67a03966 on Tue Apr 16 21:15:07 2024 </h3>  
 
<details> 
<summary>Git Diff (514 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/quality-dashboard/kustomization.yaml b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
new file mode 100644
index 00000000..bbc115a9
--- /dev/null
+++ b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quality-dashboard.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
\ No newline at end of file
diff --git a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
new file mode 100644
index 00000000..f5415d6a
--- /dev/null
+++ b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/quality-dashboard: "true"
+              values:
+                sourceRoot: components/quality-dashboard
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: quality-dashboard-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: quality-dashboard
+        server: '{{server}}'
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
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 1555167e..293eeaf4 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -76,3 +76,9 @@ kind: ApplicationSet
 metadata:
   name: toolchain-member-operator
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 781a4059..652ec837 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
+  - ../../base/quality-dashboard
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -129,3 +130,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: quality-dashboard
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 4b38053e..6fa98637 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -4,4 +4,5 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/quality-dashboard
 namespace: konflux-public-staging
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index f052a540..3c51647e 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -41,6 +41,7 @@ spec:
         - multi-platform-controller
         - jvm-build-service
         - openshift-logging
+        - quality-dashboard
         - sprayproxy
         - appstudio-monitoring
         - openshift-pipelines
diff --git a/components/quality-dashboard/OWNERS b/components/quality-dashboard/OWNERS
new file mode 100644
index 00000000..67230d19
--- /dev/null
+++ b/components/quality-dashboard/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- sawood14012
+- rhopp
+- jkopriva
+- flacatus
+- psturc
\ No newline at end of file
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
new file mode 100644
index 00000000..e762cd1c
--- /dev/null
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -0,0 +1,11 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+
+images:
+  - name: quay.io/redhat-appstudio/quality-dashboard-backend
+    newName: quay.io/redhat-appstudio/quality-dashboard-backend
+    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
new file mode 100644
index 00000000..f198b1fa
--- /dev/null
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0b072313be6e68ea933f0189242f966f0a42a807
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
new file mode 100644
index 00000000..8c921cfb
--- /dev/null
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -0,0 +1,10 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+images:
+  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
+    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
+    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
diff --git a/components/quality-dashboard/base/kustomization.yaml b/components/quality-dashboard/base/kustomization.yaml
new file mode 100644
index 00000000..b8ea403e
--- /dev/null
+++ b/components/quality-dashboard/base/kustomization.yaml
@@ -0,0 +1,7 @@
+resources:
+  - backend/
+  - dex/
+  - frontend/
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/rbac/kustomization.yaml b/components/quality-dashboard/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..4482f6c9
--- /dev/null
+++ b/components/quality-dashboard/base/rbac/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - quality-dashboard.yaml
\ No newline at end of file
diff --git a/components/quality-dashboard/base/rbac/quality-dashboard.yaml b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
new file mode 100644
index 00000000..386c7bcd
--- /dev/null
+++ b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
@@ -0,0 +1,29 @@
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: quality-dashboard-maintainer
+  namespace: quality-dashboard
+rules:
+  - verbs:
+      - create
+      - delete
+      - edit
+      - list
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: quality-dashboard-maintainers
+  namespace: quality-dashboard
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-qe-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: quality-dashboard-maintainer
\ No newline at end of file
diff --git a/components/quality-dashboard/development/kustomization.yaml b/components/quality-dashboard/development/kustomization.yaml
new file mode 100644
index 00000000..443762b7
--- /dev/null
+++ b/components/quality-dashboard/development/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..b78a1ad5
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quality-dashboard-secrets.yaml
+namespace: quality-dashboard
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
new file mode 100644
index 00000000..86f53769
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quality-dashboard-secrets
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/quality-dashboard-secrets
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quality-dashboard-secrets
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/kustomization.yaml b/components/quality-dashboard/staging/kustomization.yaml
new file mode 100644
index 00000000..4b967627
--- /dev/null
+++ b/components/quality-dashboard/staging/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- external-secrets
+- ../base/rbac
\ No newline at end of file
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 7bee3147..d6eec769 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -55,5 +55,7 @@ docs-en:
         url: /components/ui/README.html
   - title: Misc
     children:
+      - title: Quality Dashboard
+        url: /docs/misc/quality-dashboard.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
new file mode 100644
index 00000000..91d86bc3
--- /dev/null
+++ b/docs/misc/quality-dashboard.md
@@ -0,0 +1,10 @@
+---
+title: Quality Dashboard
+---
+
+The purpose of the Quality Dashboard is to provide information that indicates the quality
+of the different Konflux services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
+
+The manifests can be found [here](../../components/quality-dashboard/)
+
+For validating changes to Quality Dashboard on a dev cluster, configure related environment variables specified in [preview-template.env](../../hack/preview-template.env)
\ No newline at end of file
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index c5827b15..830516ca 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -4,6 +4,7 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 
 main() {
     load_global_vars
+    "${ROOT}/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index a5509b67..09de2ba9 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops internal-services application-api
+oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 4dd5a413..20828816 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -120,3 +120,21 @@ export IMAGE_CONTROLLER_IMAGE_REPO=
 export IMAGE_CONTROLLER_IMAGE_TAG=
 export IMAGE_CONTROLLER_PR_OWNER=
 export IMAGE_CONTROLLER_PR_SHA=
+
+# Quality Dashboard
+export QD_APP_ID=
+## QD_IN_CLUSTER_DB=true - deploy postgresql DB on an OpenShift cluster
+## QD_IN_CLUSTER_DB=false - test with DB deployed remotely, e.g. AWS RDS
+export QD_IN_CLUSTER_DB=
+export QD_DB_NAME=
+export QD_DB_USER=
+export QD_DB_PASSWORD=
+export QD_DB_HOST=
+export QD_GITHUB_TOKEN=
+export QD_JIRA_TOKEN=
+export QD_SLACK_TOKEN=
+## Dex issuer specific secrets
+export QD_GITHUB_ORG=
+### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
+export QD_OAUTH_CLIENT_ID=
+export QD_OAUTH_CLIENT_SECRET=
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/.gitignore b/hack/secret-creator/quality-dashboard/.gitignore
new file mode 100644
index 00000000..88357e40
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/.gitignore
@@ -0,0 +1 @@
+dex-config.yaml
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh b/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh
new file mode 100755
index 00000000..1621bb98
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh
@@ -0,0 +1,66 @@
+#!/bin/bash -e
+SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
+
+main() {
+    echo "Setting secrets for Quality Dashboard"
+    DOMAIN=$(oc get ingresses.config.openshift.io cluster --template={{.spec.domain}})
+
+    NS=quality-dashboard
+
+    BACKEND_URL="https://backend-$NS.${DOMAIN}"
+    DEX_URL="https://dex-$NS.${DOMAIN}"
+    FRONTEND_URL="https://frontend-$NS.${DOMAIN}"
+    
+    SECRET_NAME=$NS-secrets
+
+    APP_ID=${QD_APP_ID:-redhat-quality-studio-app}
+
+    IN_CLUSTER_DB=${QD_IN_CLUSTER_DB:-false}
+    DB_NAME=${QD_DB_NAME:-quality}
+    DB_USER=${QD_DB_USER:-qd}
+    DB_PASSWORD=${QD_DB_PASSWORD:-qd}
+    DB_HOST=${QD_DB_HOST:-postgresql}
+
+    JIRA_TOKEN=${QD_JIRA_TOKEN:-}
+    GITHUB_TOKEN=${QD_GITHUB_TOKEN:-$MY_GITHUB_TOKEN}
+    SLACK_TOKEN=${QD_SLACK_TOKEN:-}
+
+    DEX_CONFIG_TEMPLATE_PATH=$SCRIPT_DIR/dex-config-template.yaml
+    DEX_CONFIG_PATH=$SCRIPT_DIR/dex-config.yaml
+
+    GITHUB_ORG=${QD_GITHUB_ORG:-$MY_GITHUB_ORG}
+    OAUTH_CLIENT_ID=${QD_OAUTH_CLIENT_ID:-}
+    OAUTH_CLIENT_SECRET=${QD_OAUTH_CLIENT_SECRET:-}
+
+    kubectl create namespace $NS -o yaml --dry-run=client | oc apply -f-
+
+    if [ "${IN_CLUSTER_DB}" = "true" ]; then
+        oc process postgresql-ephemeral -n openshift -p POSTGRESQL_USER="$DB_USER" -p POSTGRESQL_PASSWORD="$DB_PASSWORD" -p POSTGRESQL_DATABASE="$DB_NAME" | oc apply -n $NS -f -
+    fi
+
+    cp "$DEX_CONFIG_TEMPLATE_PATH" "$DEX_CONFIG_PATH"
+    yq -i ".issuer=\"https://dex-$NS.$DOMAIN/dex\"" $DEX_CONFIG_PATH
+    yq -i "(.staticClients.[] | select(.name==\"Red Hat Quality Studio\")) |=(.id=\"$APP_ID\",.redirectURIs=[\"$FRONTEND_URL/home/overview\", \"$FRONTEND_URL/login\", \"$FRONTEND_URL/\"])" $DEX_CONFIG_PATH
+    yq -i "(.connectors.[] | select(.name==\"GitHub\").config) |=(.clientID=\"$OAUTH_CLIENT_ID\",.clientSecret=\"$OAUTH_CLIENT_SECRET\",.redirectURI=\"$DEX_URL/dex/callback\",.orgs=[{\"name\":\"$GITHUB_ORG\"}])" $DEX_CONFIG_PATH
+
+    if ! kubectl get secret $SECRET_NAME -n $NS  &>/dev/null; then
+        kubectl create secret generic $SECRET_NAME \
+            --namespace=$NS \
+            --from-literal=backend-route=$BACKEND_URL \
+            --from-literal=dex-application-id=$APP_ID \
+            --from-literal=dex-issuer="$DEX_URL/dex" \
+            --from-literal=frontend-route=$FRONTEND_URL/login \
+            --from-literal=github-token=$GITHUB_TOKEN \
+            --from-literal=jira-token=$JIRA_TOKEN \
+            --from-literal=rds-endpoint=$DB_HOST \
+            --from-literal=slack_token=$SLACK_TOKEN \
+            --from-literal=storage-database=$DB_NAME \
+            --from-literal=storage-password=$DB_PASSWORD \
+            --from-literal=storage-user=$DB_USER \
+            --from-file=$DEX_CONFIG_PATH
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/dex-config-template.yaml b/hack/secret-creator/quality-dashboard/dex-config-template.yaml
new file mode 100644
index 00000000..fd5645de
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/dex-config-template.yaml
@@ -0,0 +1,39 @@
+---
+issuer: https://dex-quality-dashboard.<cluster-domain>/dex
+storage:
+  type: sqlite3
+web:
+  http: 0.0.0.0:5556
+  allowedOrigins: ["*"]
+oauth2:
+  skipApprovalScreen: true
+telemetry:
+  http: 0.0.0.0:5558
+  enableProfiling: true
+expiry:
+  deviceRequests: "5m"
+  signingKeys: "6h"
+  idTokens: "1h"
+  refreshTokens:
+    reuseInterval: "3s"
+    validIfNotUsedFor: "2160h"
+    absoluteLifetime: "3960h"
+staticClients:
+- id: "<APP_ID>"
+  redirectURIs:
+  - "https://frontend-quality-dashboard.<cluster-domain>/home/overview"
+  - "https://frontend-quality-dashboard.<cluster-domain>/login"
+  - "https://frontend-quality-dashboard.<cluster-domain>/"
+  name: "Red Hat Quality Studio"
+  public: true
+connectors:
+- type: github
+  id: github
+  name: GitHub
+  config:
+    orgs:
+    - name: <GITHUB_ORG>
+    clientID: <OAUTH_CLIENT_ID>
+    clientSecret: <OAUTH_CLIENT_SECRET>
+    # Dex's issuer URL + "/callback"
+    redirectURI: https://dex-quality-dashboard.<cluster-domain>/dex/callback
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-3eb398bd/production/components/cluster-secret-store/production/kustomize.out.yaml
24d23
<     - quality-dashboard 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 3eb398bd to 67a03966 on Tue Apr 16 21:15:07 2024 </h3>  
 
<details> 
<summary>Git Diff (514 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/quality-dashboard/kustomization.yaml b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
new file mode 100644
index 00000000..bbc115a9
--- /dev/null
+++ b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quality-dashboard.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
\ No newline at end of file
diff --git a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
new file mode 100644
index 00000000..f5415d6a
--- /dev/null
+++ b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/quality-dashboard: "true"
+              values:
+                sourceRoot: components/quality-dashboard
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: quality-dashboard-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: quality-dashboard
+        server: '{{server}}'
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
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 1555167e..293eeaf4 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -76,3 +76,9 @@ kind: ApplicationSet
 metadata:
   name: toolchain-member-operator
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 781a4059..652ec837 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
+  - ../../base/quality-dashboard
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -129,3 +130,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: quality-dashboard
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 4b38053e..6fa98637 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -4,4 +4,5 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/quality-dashboard
 namespace: konflux-public-staging
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index f052a540..3c51647e 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -41,6 +41,7 @@ spec:
         - multi-platform-controller
         - jvm-build-service
         - openshift-logging
+        - quality-dashboard
         - sprayproxy
         - appstudio-monitoring
         - openshift-pipelines
diff --git a/components/quality-dashboard/OWNERS b/components/quality-dashboard/OWNERS
new file mode 100644
index 00000000..67230d19
--- /dev/null
+++ b/components/quality-dashboard/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- sawood14012
+- rhopp
+- jkopriva
+- flacatus
+- psturc
\ No newline at end of file
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
new file mode 100644
index 00000000..e762cd1c
--- /dev/null
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -0,0 +1,11 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+
+images:
+  - name: quay.io/redhat-appstudio/quality-dashboard-backend
+    newName: quay.io/redhat-appstudio/quality-dashboard-backend
+    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
new file mode 100644
index 00000000..f198b1fa
--- /dev/null
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0b072313be6e68ea933f0189242f966f0a42a807
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
new file mode 100644
index 00000000..8c921cfb
--- /dev/null
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -0,0 +1,10 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+images:
+  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
+    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
+    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
diff --git a/components/quality-dashboard/base/kustomization.yaml b/components/quality-dashboard/base/kustomization.yaml
new file mode 100644
index 00000000..b8ea403e
--- /dev/null
+++ b/components/quality-dashboard/base/kustomization.yaml
@@ -0,0 +1,7 @@
+resources:
+  - backend/
+  - dex/
+  - frontend/
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/rbac/kustomization.yaml b/components/quality-dashboard/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..4482f6c9
--- /dev/null
+++ b/components/quality-dashboard/base/rbac/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - quality-dashboard.yaml
\ No newline at end of file
diff --git a/components/quality-dashboard/base/rbac/quality-dashboard.yaml b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
new file mode 100644
index 00000000..386c7bcd
--- /dev/null
+++ b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
@@ -0,0 +1,29 @@
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: quality-dashboard-maintainer
+  namespace: quality-dashboard
+rules:
+  - verbs:
+      - create
+      - delete
+      - edit
+      - list
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: quality-dashboard-maintainers
+  namespace: quality-dashboard
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-qe-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: quality-dashboard-maintainer
\ No newline at end of file
diff --git a/components/quality-dashboard/development/kustomization.yaml b/components/quality-dashboard/development/kustomization.yaml
new file mode 100644
index 00000000..443762b7
--- /dev/null
+++ b/components/quality-dashboard/development/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..b78a1ad5
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quality-dashboard-secrets.yaml
+namespace: quality-dashboard
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
new file mode 100644
index 00000000..86f53769
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quality-dashboard-secrets
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/quality-dashboard-secrets
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quality-dashboard-secrets
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/kustomization.yaml b/components/quality-dashboard/staging/kustomization.yaml
new file mode 100644
index 00000000..4b967627
--- /dev/null
+++ b/components/quality-dashboard/staging/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- external-secrets
+- ../base/rbac
\ No newline at end of file
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 7bee3147..d6eec769 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -55,5 +55,7 @@ docs-en:
         url: /components/ui/README.html
   - title: Misc
     children:
+      - title: Quality Dashboard
+        url: /docs/misc/quality-dashboard.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
new file mode 100644
index 00000000..91d86bc3
--- /dev/null
+++ b/docs/misc/quality-dashboard.md
@@ -0,0 +1,10 @@
+---
+title: Quality Dashboard
+---
+
+The purpose of the Quality Dashboard is to provide information that indicates the quality
+of the different Konflux services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
+
+The manifests can be found [here](../../components/quality-dashboard/)
+
+For validating changes to Quality Dashboard on a dev cluster, configure related environment variables specified in [preview-template.env](../../hack/preview-template.env)
\ No newline at end of file
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index c5827b15..830516ca 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -4,6 +4,7 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 
 main() {
     load_global_vars
+    "${ROOT}/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index a5509b67..09de2ba9 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops internal-services application-api
+oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 4dd5a413..20828816 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -120,3 +120,21 @@ export IMAGE_CONTROLLER_IMAGE_REPO=
 export IMAGE_CONTROLLER_IMAGE_TAG=
 export IMAGE_CONTROLLER_PR_OWNER=
 export IMAGE_CONTROLLER_PR_SHA=
+
+# Quality Dashboard
+export QD_APP_ID=
+## QD_IN_CLUSTER_DB=true - deploy postgresql DB on an OpenShift cluster
+## QD_IN_CLUSTER_DB=false - test with DB deployed remotely, e.g. AWS RDS
+export QD_IN_CLUSTER_DB=
+export QD_DB_NAME=
+export QD_DB_USER=
+export QD_DB_PASSWORD=
+export QD_DB_HOST=
+export QD_GITHUB_TOKEN=
+export QD_JIRA_TOKEN=
+export QD_SLACK_TOKEN=
+## Dex issuer specific secrets
+export QD_GITHUB_ORG=
+### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
+export QD_OAUTH_CLIENT_ID=
+export QD_OAUTH_CLIENT_SECRET=
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/.gitignore b/hack/secret-creator/quality-dashboard/.gitignore
new file mode 100644
index 00000000..88357e40
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/.gitignore
@@ -0,0 +1 @@
+dex-config.yaml
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh b/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh
new file mode 100755
index 00000000..1621bb98
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh
@@ -0,0 +1,66 @@
+#!/bin/bash -e
+SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
+
+main() {
+    echo "Setting secrets for Quality Dashboard"
+    DOMAIN=$(oc get ingresses.config.openshift.io cluster --template={{.spec.domain}})
+
+    NS=quality-dashboard
+
+    BACKEND_URL="https://backend-$NS.${DOMAIN}"
+    DEX_URL="https://dex-$NS.${DOMAIN}"
+    FRONTEND_URL="https://frontend-$NS.${DOMAIN}"
+    
+    SECRET_NAME=$NS-secrets
+
+    APP_ID=${QD_APP_ID:-redhat-quality-studio-app}
+
+    IN_CLUSTER_DB=${QD_IN_CLUSTER_DB:-false}
+    DB_NAME=${QD_DB_NAME:-quality}
+    DB_USER=${QD_DB_USER:-qd}
+    DB_PASSWORD=${QD_DB_PASSWORD:-qd}
+    DB_HOST=${QD_DB_HOST:-postgresql}
+
+    JIRA_TOKEN=${QD_JIRA_TOKEN:-}
+    GITHUB_TOKEN=${QD_GITHUB_TOKEN:-$MY_GITHUB_TOKEN}
+    SLACK_TOKEN=${QD_SLACK_TOKEN:-}
+
+    DEX_CONFIG_TEMPLATE_PATH=$SCRIPT_DIR/dex-config-template.yaml
+    DEX_CONFIG_PATH=$SCRIPT_DIR/dex-config.yaml
+
+    GITHUB_ORG=${QD_GITHUB_ORG:-$MY_GITHUB_ORG}
+    OAUTH_CLIENT_ID=${QD_OAUTH_CLIENT_ID:-}
+    OAUTH_CLIENT_SECRET=${QD_OAUTH_CLIENT_SECRET:-}
+
+    kubectl create namespace $NS -o yaml --dry-run=client | oc apply -f-
+
+    if [ "${IN_CLUSTER_DB}" = "true" ]; then
+        oc process postgresql-ephemeral -n openshift -p POSTGRESQL_USER="$DB_USER" -p POSTGRESQL_PASSWORD="$DB_PASSWORD" -p POSTGRESQL_DATABASE="$DB_NAME" | oc apply -n $NS -f -
+    fi
+
+    cp "$DEX_CONFIG_TEMPLATE_PATH" "$DEX_CONFIG_PATH"
+    yq -i ".issuer=\"https://dex-$NS.$DOMAIN/dex\"" $DEX_CONFIG_PATH
+    yq -i "(.staticClients.[] | select(.name==\"Red Hat Quality Studio\")) |=(.id=\"$APP_ID\",.redirectURIs=[\"$FRONTEND_URL/home/overview\", \"$FRONTEND_URL/login\", \"$FRONTEND_URL/\"])" $DEX_CONFIG_PATH
+    yq -i "(.connectors.[] | select(.name==\"GitHub\").config) |=(.clientID=\"$OAUTH_CLIENT_ID\",.clientSecret=\"$OAUTH_CLIENT_SECRET\",.redirectURI=\"$DEX_URL/dex/callback\",.orgs=[{\"name\":\"$GITHUB_ORG\"}])" $DEX_CONFIG_PATH
+
+    if ! kubectl get secret $SECRET_NAME -n $NS  &>/dev/null; then
+        kubectl create secret generic $SECRET_NAME \
+            --namespace=$NS \
+            --from-literal=backend-route=$BACKEND_URL \
+            --from-literal=dex-application-id=$APP_ID \
+            --from-literal=dex-issuer="$DEX_URL/dex" \
+            --from-literal=frontend-route=$FRONTEND_URL/login \
+            --from-literal=github-token=$GITHUB_TOKEN \
+            --from-literal=jira-token=$JIRA_TOKEN \
+            --from-literal=rds-endpoint=$DB_HOST \
+            --from-literal=slack_token=$SLACK_TOKEN \
+            --from-literal=storage-database=$DB_NAME \
+            --from-literal=storage-password=$DB_PASSWORD \
+            --from-literal=storage-user=$DB_USER \
+            --from-file=$DEX_CONFIG_PATH
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/dex-config-template.yaml b/hack/secret-creator/quality-dashboard/dex-config-template.yaml
new file mode 100644
index 00000000..fd5645de
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/dex-config-template.yaml
@@ -0,0 +1,39 @@
+---
+issuer: https://dex-quality-dashboard.<cluster-domain>/dex
+storage:
+  type: sqlite3
+web:
+  http: 0.0.0.0:5556
+  allowedOrigins: ["*"]
+oauth2:
+  skipApprovalScreen: true
+telemetry:
+  http: 0.0.0.0:5558
+  enableProfiling: true
+expiry:
+  deviceRequests: "5m"
+  signingKeys: "6h"
+  idTokens: "1h"
+  refreshTokens:
+    reuseInterval: "3s"
+    validIfNotUsedFor: "2160h"
+    absoluteLifetime: "3960h"
+staticClients:
+- id: "<APP_ID>"
+  redirectURIs:
+  - "https://frontend-quality-dashboard.<cluster-domain>/home/overview"
+  - "https://frontend-quality-dashboard.<cluster-domain>/login"
+  - "https://frontend-quality-dashboard.<cluster-domain>/"
+  name: "Red Hat Quality Studio"
+  public: true
+connectors:
+- type: github
+  id: github
+  name: GitHub
+  config:
+    orgs:
+    - name: <GITHUB_ORG>
+    clientID: <OAUTH_CLIENT_ID>
+    clientSecret: <OAUTH_CLIENT_SECRET>
+    # Dex's issuer URL + "/callback"
+    redirectURI: https://dex-quality-dashboard.<cluster-domain>/dex/callback
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-3eb398bd/staging/components/cluster-secret-store/staging/kustomize.out.yaml
24d23
<     - quality-dashboard
./commit-67a03966/staging/components: quality-dashboard 
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
<h3>4: Development changes from 3eb398bd to 67a03966 on Tue Apr 16 21:15:07 2024 </h3>  
 
<details> 
<summary>Git Diff (514 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/quality-dashboard/kustomization.yaml b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
new file mode 100644
index 00000000..bbc115a9
--- /dev/null
+++ b/argo-cd-apps/base/quality-dashboard/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quality-dashboard.yaml
+components:
+  - ../../k-components/inject-infra-deployments-repo-details
\ No newline at end of file
diff --git a/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
new file mode 100644
index 00000000..f5415d6a
--- /dev/null
+++ b/argo-cd-apps/base/quality-dashboard/quality-dashboard.yaml
@@ -0,0 +1,44 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/quality-dashboard: "true"
+              values:
+                sourceRoot: components/quality-dashboard
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: quality-dashboard-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: quality-dashboard
+        server: '{{server}}'
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
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 1555167e..293eeaf4 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -76,3 +76,9 @@ kind: ApplicationSet
 metadata:
   name: toolchain-member-operator
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: quality-dashboard
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 781a4059..652ec837 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -9,6 +9,7 @@ resources:
   - ../../base/all-clusters
   - ../../base/ca-bundle
   - ../../base/repository-validator
+  - ../../base/quality-dashboard
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -129,3 +130,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: spacerequest-cleaner
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: quality-dashboard
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index 4b38053e..6fa98637 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -4,4 +4,5 @@ resources:
   - ../../base/host
   - ../../base/member
   - ../../base/all-clusters
+  - ../../base/quality-dashboard
 namespace: konflux-public-staging
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index f052a540..3c51647e 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -41,6 +41,7 @@ spec:
         - multi-platform-controller
         - jvm-build-service
         - openshift-logging
+        - quality-dashboard
         - sprayproxy
         - appstudio-monitoring
         - openshift-pipelines
diff --git a/components/quality-dashboard/OWNERS b/components/quality-dashboard/OWNERS
new file mode 100644
index 00000000..67230d19
--- /dev/null
+++ b/components/quality-dashboard/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- sawood14012
+- rhopp
+- jkopriva
+- flacatus
+- psturc
\ No newline at end of file
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
new file mode 100644
index 00000000..e762cd1c
--- /dev/null
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -0,0 +1,11 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+
+images:
+  - name: quay.io/redhat-appstudio/quality-dashboard-backend
+    newName: quay.io/redhat-appstudio/quality-dashboard-backend
+    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
new file mode 100644
index 00000000..f198b1fa
--- /dev/null
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -0,0 +1,5 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0b072313be6e68ea933f0189242f966f0a42a807
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
new file mode 100644
index 00000000..8c921cfb
--- /dev/null
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -0,0 +1,10 @@
+resources:
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+images:
+  - name: quay.io/redhat-appstudio/quality-dashboard-frontend
+    newName: quay.io/redhat-appstudio/quality-dashboard-frontend
+    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
diff --git a/components/quality-dashboard/base/kustomization.yaml b/components/quality-dashboard/base/kustomization.yaml
new file mode 100644
index 00000000..b8ea403e
--- /dev/null
+++ b/components/quality-dashboard/base/kustomization.yaml
@@ -0,0 +1,7 @@
+resources:
+  - backend/
+  - dex/
+  - frontend/
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/rbac/kustomization.yaml b/components/quality-dashboard/base/rbac/kustomization.yaml
new file mode 100644
index 00000000..4482f6c9
--- /dev/null
+++ b/components/quality-dashboard/base/rbac/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - quality-dashboard.yaml
\ No newline at end of file
diff --git a/components/quality-dashboard/base/rbac/quality-dashboard.yaml b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
new file mode 100644
index 00000000..386c7bcd
--- /dev/null
+++ b/components/quality-dashboard/base/rbac/quality-dashboard.yaml
@@ -0,0 +1,29 @@
+kind: Role
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: quality-dashboard-maintainer
+  namespace: quality-dashboard
+rules:
+  - verbs:
+      - create
+      - delete
+      - edit
+      - list
+    apiGroups:
+      - ''
+    resources:
+      - secrets
+---
+kind: RoleBinding
+apiVersion: rbac.authorization.k8s.io/v1
+metadata:
+  name: quality-dashboard-maintainers
+  namespace: quality-dashboard
+subjects:
+  - kind: Group
+    apiGroup: rbac.authorization.k8s.io
+    name: konflux-qe-admins
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: Role
+  name: quality-dashboard-maintainer
\ No newline at end of file
diff --git a/components/quality-dashboard/development/kustomization.yaml b/components/quality-dashboard/development/kustomization.yaml
new file mode 100644
index 00000000..443762b7
--- /dev/null
+++ b/components/quality-dashboard/development/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/external-secrets/kustomization.yaml b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..b78a1ad5
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- quality-dashboard-secrets.yaml
+namespace: quality-dashboard
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
new file mode 100644
index 00000000..86f53769
--- /dev/null
+++ b/components/quality-dashboard/staging/external-secrets/quality-dashboard-secrets.yaml
@@ -0,0 +1,19 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: quality-dashboard-secrets
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/qe/quality-dashboard-secrets
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: quality-dashboard-secrets
\ No newline at end of file
diff --git a/components/quality-dashboard/staging/kustomization.yaml b/components/quality-dashboard/staging/kustomization.yaml
new file mode 100644
index 00000000..4b967627
--- /dev/null
+++ b/components/quality-dashboard/staging/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- external-secrets
+- ../base/rbac
\ No newline at end of file
diff --git a/docs/_data/navigation.yml b/docs/_data/navigation.yml
index 7bee3147..d6eec769 100644
--- a/docs/_data/navigation.yml
+++ b/docs/_data/navigation.yml
@@ -55,5 +55,7 @@ docs-en:
         url: /components/ui/README.html
   - title: Misc
     children:
+      - title: Quality Dashboard
+        url: /docs/misc/quality-dashboard.html
       - title: FAQs/Troubleshooting
         url: /docs/misc/faq.html
diff --git a/docs/misc/quality-dashboard.md b/docs/misc/quality-dashboard.md
new file mode 100644
index 00000000..91d86bc3
--- /dev/null
+++ b/docs/misc/quality-dashboard.md
@@ -0,0 +1,10 @@
+---
+title: Quality Dashboard
+---
+
+The purpose of the Quality Dashboard is to provide information that indicates the quality
+of the different Konflux services. More details can be found here https://github.com/redhat-appstudio/quality-dashboard
+
+The manifests can be found [here](../../components/quality-dashboard/)
+
+For validating changes to Quality Dashboard on a dev cluster, configure related environment variables specified in [preview-template.env](../../hack/preview-template.env)
\ No newline at end of file
diff --git a/hack/bootstrap-host-cluster.sh b/hack/bootstrap-host-cluster.sh
index c5827b15..830516ca 100755
--- a/hack/bootstrap-host-cluster.sh
+++ b/hack/bootstrap-host-cluster.sh
@@ -4,6 +4,7 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 
 main() {
     load_global_vars
+    "${ROOT}/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh"
 }
 
 load_global_vars() {
diff --git a/hack/destroy-cluster.sh b/hack/destroy-cluster.sh
index a5509b67..09de2ba9 100755
--- a/hack/destroy-cluster.sh
+++ b/hack/destroy-cluster.sh
@@ -41,7 +41,7 @@ oc delete clusterserviceversions.operators.coreos.com --all -n openshift-operato
 
 echo
 echo "Removing custom projects"
-oc delete project enterprise-contract-service gitops internal-services application-api
+oc delete project enterprise-contract-service gitops quality-dashboard internal-services application-api
 
 echo
 echo "Removing dev-sso"
diff --git a/hack/preview-template.env b/hack/preview-template.env
index 4dd5a413..20828816 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -120,3 +120,21 @@ export IMAGE_CONTROLLER_IMAGE_REPO=
 export IMAGE_CONTROLLER_IMAGE_TAG=
 export IMAGE_CONTROLLER_PR_OWNER=
 export IMAGE_CONTROLLER_PR_SHA=
+
+# Quality Dashboard
+export QD_APP_ID=
+## QD_IN_CLUSTER_DB=true - deploy postgresql DB on an OpenShift cluster
+## QD_IN_CLUSTER_DB=false - test with DB deployed remotely, e.g. AWS RDS
+export QD_IN_CLUSTER_DB=
+export QD_DB_NAME=
+export QD_DB_USER=
+export QD_DB_PASSWORD=
+export QD_DB_HOST=
+export QD_GITHUB_TOKEN=
+export QD_JIRA_TOKEN=
+export QD_SLACK_TOKEN=
+## Dex issuer specific secrets
+export QD_GITHUB_ORG=
+### Client ID/Secret for OAuth app - see https://github.com/redhat-appstudio/quality-dashboard?tab=readme-ov-file#dex-for-oauth for more details
+export QD_OAUTH_CLIENT_ID=
+export QD_OAUTH_CLIENT_SECRET=
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/.gitignore b/hack/secret-creator/quality-dashboard/.gitignore
new file mode 100644
index 00000000..88357e40
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/.gitignore
@@ -0,0 +1 @@
+dex-config.yaml
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh b/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh
new file mode 100755
index 00000000..1621bb98
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/create-quality-dashboard-secrets.sh
@@ -0,0 +1,66 @@
+#!/bin/bash -e
+SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
+
+main() {
+    echo "Setting secrets for Quality Dashboard"
+    DOMAIN=$(oc get ingresses.config.openshift.io cluster --template={{.spec.domain}})
+
+    NS=quality-dashboard
+
+    BACKEND_URL="https://backend-$NS.${DOMAIN}"
+    DEX_URL="https://dex-$NS.${DOMAIN}"
+    FRONTEND_URL="https://frontend-$NS.${DOMAIN}"
+    
+    SECRET_NAME=$NS-secrets
+
+    APP_ID=${QD_APP_ID:-redhat-quality-studio-app}
+
+    IN_CLUSTER_DB=${QD_IN_CLUSTER_DB:-false}
+    DB_NAME=${QD_DB_NAME:-quality}
+    DB_USER=${QD_DB_USER:-qd}
+    DB_PASSWORD=${QD_DB_PASSWORD:-qd}
+    DB_HOST=${QD_DB_HOST:-postgresql}
+
+    JIRA_TOKEN=${QD_JIRA_TOKEN:-}
+    GITHUB_TOKEN=${QD_GITHUB_TOKEN:-$MY_GITHUB_TOKEN}
+    SLACK_TOKEN=${QD_SLACK_TOKEN:-}
+
+    DEX_CONFIG_TEMPLATE_PATH=$SCRIPT_DIR/dex-config-template.yaml
+    DEX_CONFIG_PATH=$SCRIPT_DIR/dex-config.yaml
+
+    GITHUB_ORG=${QD_GITHUB_ORG:-$MY_GITHUB_ORG}
+    OAUTH_CLIENT_ID=${QD_OAUTH_CLIENT_ID:-}
+    OAUTH_CLIENT_SECRET=${QD_OAUTH_CLIENT_SECRET:-}
+
+    kubectl create namespace $NS -o yaml --dry-run=client | oc apply -f-
+
+    if [ "${IN_CLUSTER_DB}" = "true" ]; then
+        oc process postgresql-ephemeral -n openshift -p POSTGRESQL_USER="$DB_USER" -p POSTGRESQL_PASSWORD="$DB_PASSWORD" -p POSTGRESQL_DATABASE="$DB_NAME" | oc apply -n $NS -f -
+    fi
+
+    cp "$DEX_CONFIG_TEMPLATE_PATH" "$DEX_CONFIG_PATH"
+    yq -i ".issuer=\"https://dex-$NS.$DOMAIN/dex\"" $DEX_CONFIG_PATH
+    yq -i "(.staticClients.[] | select(.name==\"Red Hat Quality Studio\")) |=(.id=\"$APP_ID\",.redirectURIs=[\"$FRONTEND_URL/home/overview\", \"$FRONTEND_URL/login\", \"$FRONTEND_URL/\"])" $DEX_CONFIG_PATH
+    yq -i "(.connectors.[] | select(.name==\"GitHub\").config) |=(.clientID=\"$OAUTH_CLIENT_ID\",.clientSecret=\"$OAUTH_CLIENT_SECRET\",.redirectURI=\"$DEX_URL/dex/callback\",.orgs=[{\"name\":\"$GITHUB_ORG\"}])" $DEX_CONFIG_PATH
+
+    if ! kubectl get secret $SECRET_NAME -n $NS  &>/dev/null; then
+        kubectl create secret generic $SECRET_NAME \
+            --namespace=$NS \
+            --from-literal=backend-route=$BACKEND_URL \
+            --from-literal=dex-application-id=$APP_ID \
+            --from-literal=dex-issuer="$DEX_URL/dex" \
+            --from-literal=frontend-route=$FRONTEND_URL/login \
+            --from-literal=github-token=$GITHUB_TOKEN \
+            --from-literal=jira-token=$JIRA_TOKEN \
+            --from-literal=rds-endpoint=$DB_HOST \
+            --from-literal=slack_token=$SLACK_TOKEN \
+            --from-literal=storage-database=$DB_NAME \
+            --from-literal=storage-password=$DB_PASSWORD \
+            --from-literal=storage-user=$DB_USER \
+            --from-file=$DEX_CONFIG_PATH
+    fi
+}
+
+if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
+    main "$@"
+fi
\ No newline at end of file
diff --git a/hack/secret-creator/quality-dashboard/dex-config-template.yaml b/hack/secret-creator/quality-dashboard/dex-config-template.yaml
new file mode 100644
index 00000000..fd5645de
--- /dev/null
+++ b/hack/secret-creator/quality-dashboard/dex-config-template.yaml
@@ -0,0 +1,39 @@
+---
+issuer: https://dex-quality-dashboard.<cluster-domain>/dex
+storage:
+  type: sqlite3
+web:
+  http: 0.0.0.0:5556
+  allowedOrigins: ["*"]
+oauth2:
+  skipApprovalScreen: true
+telemetry:
+  http: 0.0.0.0:5558
+  enableProfiling: true
+expiry:
+  deviceRequests: "5m"
+  signingKeys: "6h"
+  idTokens: "1h"
+  refreshTokens:
+    reuseInterval: "3s"
+    validIfNotUsedFor: "2160h"
+    absoluteLifetime: "3960h"
+staticClients:
+- id: "<APP_ID>"
+  redirectURIs:
+  - "https://frontend-quality-dashboard.<cluster-domain>/home/overview"
+  - "https://frontend-quality-dashboard.<cluster-domain>/login"
+  - "https://frontend-quality-dashboard.<cluster-domain>/"
+  name: "Red Hat Quality Studio"
+  public: true
+connectors:
+- type: github
+  id: github
+  name: GitHub
+  config:
+    orgs:
+    - name: <GITHUB_ORG>
+    clientID: <OAUTH_CLIENT_ID>
+    clientSecret: <OAUTH_CLIENT_SECRET>
+    # Dex's issuer URL + "/callback"
+    redirectURI: https://dex-quality-dashboard.<cluster-domain>/dex/callback
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-67a03966/development/components: quality-dashboard 
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
