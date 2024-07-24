# kustomize changes tracked by commits 
### This file generated at Wed Jul 24 16:05:27 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 49281e49 to 9965484a on Wed Jul 24 14:59:52 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index bfbd9b30..6b93d20b 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -36,7 +36,7 @@
   # replicas - default pipeline-service setting is 1
   # memory limit - default upstream setting is 4Gi
   value:
-    replicas: 2
+    replicas: 1
     template:
       spec:
         containers:
@@ -44,7 +44,7 @@
             resources:
               limits:
                 cpu: "1"
-                memory: 8Gi
+                memory: 16Gi
               requests:
                 cpu: 100m
                 memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 810a259c..f4903d5d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 2c34c2c1..6ed9f8ec 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5d03f487..bbbadf19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 4a7cf3f7..3bfdcd27 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-49281e49/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2075c2075
<             replicas: 1
---
>             replicas: 2
2083c2083
<                       memory: 16Gi
---
>                       memory: 8Gi
./commit-49281e49/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2075c2075
<             replicas: 1
---
>             replicas: 2
2083c2083
<                       memory: 16Gi
---
>                       memory: 8Gi
./commit-49281e49/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2075c2075
<             replicas: 1
---
>             replicas: 2
2083c2083
<                       memory: 16Gi
---
>                       memory: 8Gi
./commit-49281e49/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2075c2075
<             replicas: 1
---
>             replicas: 2
2083c2083
<                       memory: 16Gi
---
>                       memory: 8Gi 
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
<h3>1: Staging changes from 49281e49 to 9965484a on Wed Jul 24 14:59:52 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index bfbd9b30..6b93d20b 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -36,7 +36,7 @@
   # replicas - default pipeline-service setting is 1
   # memory limit - default upstream setting is 4Gi
   value:
-    replicas: 2
+    replicas: 1
     template:
       spec:
         containers:
@@ -44,7 +44,7 @@
             resources:
               limits:
                 cpu: "1"
-                memory: 8Gi
+                memory: 16Gi
               requests:
                 cpu: 100m
                 memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 810a259c..f4903d5d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 2c34c2c1..6ed9f8ec 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5d03f487..bbbadf19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 4a7cf3f7..3bfdcd27 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 49281e49 to 9965484a on Wed Jul 24 14:59:52 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index bfbd9b30..6b93d20b 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -36,7 +36,7 @@
   # replicas - default pipeline-service setting is 1
   # memory limit - default upstream setting is 4Gi
   value:
-    replicas: 2
+    replicas: 1
     template:
       spec:
         containers:
@@ -44,7 +44,7 @@
             resources:
               limits:
                 cpu: "1"
-                memory: 8Gi
+                memory: 16Gi
               requests:
                 cpu: 100m
                 memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 810a259c..f4903d5d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 2c34c2c1..6ed9f8ec 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 5d03f487..bbbadf19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 4a7cf3f7..3bfdcd27 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2072,7 +2072,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 1
             template:
               spec:
                 containers:
@@ -2080,7 +2080,7 @@ spec:
                   resources:
                     limits:
                       cpu: "1"
-                      memory: 8Gi
+                      memory: 16Gi
                     requests:
                       cpu: 100m
                       memory: 100Mi 
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
<h3>2: Production changes from 49e73e3d to 49281e49 on Wed Jul 24 12:21:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/tekton-ci/production/cleanup-cronjob.yaml b/components/tekton-ci/production/cleanup-cronjob.yaml
index 761e49d0..61f8b410 100644
--- a/components/tekton-ci/production/cleanup-cronjob.yaml
+++ b/components/tekton-ci/production/cleanup-cronjob.yaml
@@ -3,7 +3,7 @@ kind: CronJob
 metadata:
   name: cleanup-stale-resources
 spec:
-  schedule: "0 1 * * *" #Daily at 01:00
+  schedule: "0 * * * *"  # hourly
   jobTemplate:
     spec:
       template:
@@ -17,7 +17,7 @@ spec:
             - -c
             - |
               date; echo Cleaning up the stale applications
-              oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d'now-3 days' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
+              oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d '1 day ago' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
             resources:
               limits:
                 cpu: 100m 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-49e73e3d/production/components/tekton-ci/production/kustomize.out.yaml
68c68
<               oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d '1 day ago' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
---
>               oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d'now-3 days' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
83c83
<   schedule: 0 * * * *
---
>   schedule: 0 1 * * * 
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
<h3>2: Staging changes from 49e73e3d to 49281e49 on Wed Jul 24 12:21:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/tekton-ci/production/cleanup-cronjob.yaml b/components/tekton-ci/production/cleanup-cronjob.yaml
index 761e49d0..61f8b410 100644
--- a/components/tekton-ci/production/cleanup-cronjob.yaml
+++ b/components/tekton-ci/production/cleanup-cronjob.yaml
@@ -3,7 +3,7 @@ kind: CronJob
 metadata:
   name: cleanup-stale-resources
 spec:
-  schedule: "0 1 * * *" #Daily at 01:00
+  schedule: "0 * * * *"  # hourly
   jobTemplate:
     spec:
       template:
@@ -17,7 +17,7 @@ spec:
             - -c
             - |
               date; echo Cleaning up the stale applications
-              oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d'now-3 days' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
+              oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d '1 day ago' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
             resources:
               limits:
                 cpu: 100m 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 49e73e3d to 49281e49 on Wed Jul 24 12:21:26 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/tekton-ci/production/cleanup-cronjob.yaml b/components/tekton-ci/production/cleanup-cronjob.yaml
index 761e49d0..61f8b410 100644
--- a/components/tekton-ci/production/cleanup-cronjob.yaml
+++ b/components/tekton-ci/production/cleanup-cronjob.yaml
@@ -3,7 +3,7 @@ kind: CronJob
 metadata:
   name: cleanup-stale-resources
 spec:
-  schedule: "0 1 * * *" #Daily at 01:00
+  schedule: "0 * * * *"  # hourly
   jobTemplate:
     spec:
       template:
@@ -17,7 +17,7 @@ spec:
             - -c
             - |
               date; echo Cleaning up the stale applications
-              oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d'now-3 days' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
+              oc get application -n build-templates-e2e -o go-template --template '{{range .items}}{{.metadata.name}} {{.metadata.creationTimestamp}}{{"\n"}}{{end}}' | awk '$2 <= "'$(date -d '1 day ago' --iso-8601=seconds --utc | sed 's/+00:00/Z/')'" { print $1 }' | xargs --no-run-if-empty oc delete application -n build-templates-e2e
             resources:
               limits:
                 cpu: 100m 
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
<h3>3: Production changes from 5d0571c5 to 49e73e3d on Wed Jul 24 09:36:05 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index f8a4636f..0151ac7c 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -22,15 +22,3 @@ spec:
       destination:
         namespace: '{{path.basename}}'
         name: '{{path[2]}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-        retry:
-          limit: 10
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index c8088063..48257fb4 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -38,16 +38,3 @@ spec:
           jsonPointers:
             - /metadata/labels/release.appstudio.openshift.io~1author
             - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-          - RespectIgnoreDifferences=true
-        retry:
-          limit: 10
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 5d0571c5 to 49e73e3d on Wed Jul 24 09:36:05 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index f8a4636f..0151ac7c 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -22,15 +22,3 @@ spec:
       destination:
         namespace: '{{path.basename}}'
         name: '{{path[2]}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-        retry:
-          limit: 10
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index c8088063..48257fb4 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -38,16 +38,3 @@ spec:
           jsonPointers:
             - /metadata/labels/release.appstudio.openshift.io~1author
             - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-          - RespectIgnoreDifferences=true
-        retry:
-          limit: 10
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 5d0571c5 to 49e73e3d on Wed Jul 24 09:36:05 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
index f8a4636f..0151ac7c 100644
--- a/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
+++ b/argo-cd-apps/base/rh-managed-workspaces-config/rh-managed-workspaces-config.yaml
@@ -22,15 +22,3 @@ spec:
       destination:
         namespace: '{{path.basename}}'
         name: '{{path[2]}}'
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-        retry:
-          limit: 10
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m
diff --git a/argo-cd-apps/base/tenants-config/tenants-config.yaml b/argo-cd-apps/base/tenants-config/tenants-config.yaml
index c8088063..48257fb4 100644
--- a/argo-cd-apps/base/tenants-config/tenants-config.yaml
+++ b/argo-cd-apps/base/tenants-config/tenants-config.yaml
@@ -38,16 +38,3 @@ spec:
           jsonPointers:
             - /metadata/labels/release.appstudio.openshift.io~1author
             - /metadata/labels/release.appstudio.openshift.io~1standing-attribution
-      syncPolicy:
-        automated:
-          prune: true
-          selfHeal: true
-        syncOptions:
-          - CreateNamespace=true
-          - RespectIgnoreDifferences=true
-        retry:
-          limit: 10
-          backoff:
-            duration: 10s
-            factor: 2
-            maxDuration: 3m 
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
<h3>4: Production changes from 4acde656 to 5d0571c5 on Tue Jul 23 20:07:19 2024 </h3>  
 
<details> 
<summary>Git Diff (720 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
index 7b406985..42015206 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -241,6 +241,35 @@ objects:
     - update
     - patch
     - delete
+  - apiGroups:
+    - rbac.authorization.k8s.io
+    resources:
+    - roles
+    - rolebindings
+    verbs:
+    - get
+    - list
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts
+    verbs:
+    - get
+    - list
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts/token
+    verbs:
+    - create
 # RoleBinding that grants limited CRUD permissions to the User
 - apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 3f9879e1..b097223c 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 0e11825a..fa81fa04 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-2415879015-2415879015
+      templateRef: appstudio-admin-1876853981-1876853981
     contributor:
       templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
new file mode 100644
index 00000000..c831d07b
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-1876853981-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1876853981-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index af4b81d4..381f5d08 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index af3b1d1f..76f3bd78 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-2415879015
+      templateRef: appstudiolarge-admin-1884308846-1876853981
     contributor:
       templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
new file mode 100644
index 00000000..5d0eee26
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 4acde656 to 5d0571c5 on Tue Jul 23 20:07:19 2024 </h3>  
 
<details> 
<summary>Git Diff (720 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
index 7b406985..42015206 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -241,6 +241,35 @@ objects:
     - update
     - patch
     - delete
+  - apiGroups:
+    - rbac.authorization.k8s.io
+    resources:
+    - roles
+    - rolebindings
+    verbs:
+    - get
+    - list
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts
+    verbs:
+    - get
+    - list
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts/token
+    verbs:
+    - create
 # RoleBinding that grants limited CRUD permissions to the User
 - apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 3f9879e1..b097223c 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 0e11825a..fa81fa04 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-2415879015-2415879015
+      templateRef: appstudio-admin-1876853981-1876853981
     contributor:
       templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
new file mode 100644
index 00000000..c831d07b
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-1876853981-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1876853981-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index af4b81d4..381f5d08 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index af3b1d1f..76f3bd78 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-2415879015
+      templateRef: appstudiolarge-admin-1884308846-1876853981
     contributor:
       templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
new file mode 100644
index 00000000..5d0eee26
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 4acde656 to 5d0571c5 on Tue Jul 23 20:07:19 2024 </h3>  
 
<details> 
<summary>Git Diff (720 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
index 7b406985..42015206 100644
--- a/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
+++ b/components/sandbox/tiers/src/appstudio/spacerole_admin.yaml
@@ -241,6 +241,35 @@ objects:
     - update
     - patch
     - delete
+  - apiGroups:
+    - rbac.authorization.k8s.io
+    resources:
+    - roles
+    - rolebindings
+    verbs:
+    - get
+    - list
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts
+    verbs:
+    - get
+    - list
+    - create
+    - update
+    - patch
+    - delete
+  - apiGroups:
+    - ""
+    resources:
+    - serviceaccounts/token
+    verbs:
+    - create
 # RoleBinding that grants limited CRUD permissions to the User
 - apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index 3f9879e1..b097223c 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudio.yaml
+- tiertemplate-appstudio-admin-1876853981-1876853981.yaml
 - tiertemplate-appstudio-admin-2415879015-2415879015.yaml
 - tiertemplate-appstudio-clusterresources-809836689-809836689.yaml
 - tiertemplate-appstudio-contributor-1817914940-1817914940.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 0e11825a..fa81fa04 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudio-tenant-199961605-199961605
   spaceRoles:
     admin:
-      templateRef: appstudio-admin-2415879015-2415879015
+      templateRef: appstudio-admin-1876853981-1876853981
     contributor:
       templateRef: appstudio-contributor-1817914940-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
new file mode 100644
index 00000000..c831d07b
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-admin-1876853981-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-admin-1876853981-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1876853981-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudio
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index af4b81d4..381f5d08 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -6,6 +6,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - nstemplatetier-appstudiolarge.yaml
+- tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
 - tiertemplate-appstudiolarge-admin-1884308846-2415879015.yaml
 - tiertemplate-appstudiolarge-clusterresources-1884308846-809836689.yaml
 - tiertemplate-appstudiolarge-contributor-1884308846-1817914940.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index af3b1d1f..76f3bd78 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -14,7 +14,7 @@ spec:
   - templateRef: appstudiolarge-tenant-1884308846-199961605
   spaceRoles:
     admin:
-      templateRef: appstudiolarge-admin-1884308846-2415879015
+      templateRef: appstudiolarge-admin-1884308846-1876853981
     contributor:
       templateRef: appstudiolarge-contributor-1884308846-1817914940
     maintainer:
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
new file mode 100644
index 00000000..5d0eee26
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-admin-1884308846-1876853981.yaml
@@ -0,0 +1,309 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-admin-1884308846-1876853981
+  namespace: toolchain-host-operator
+spec:
+  revision: 1884308846-1876853981
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - spiaccesstokenbindings
+        - spiaccesschecks
+        - spiaccesstokens
+        - spifilecontentrequests
+        - spiaccesstokendataupdates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - remotesecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudiolarge
+  type: admin 
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
