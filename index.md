# kustomize changes tracked by commits 
### This file generated at Fri Sep 27 16:05:19 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 21a7c731 to be4abf7f on Fri Sep 27 13:57:59 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb54432f..b4d042e9 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1259,10 +1259,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 281bbfa9..085f506b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b1b3508b..04988fa9 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 0735f2d0..c8465596 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index b5e11e1f..b7091e13 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index beb080ed..dee33ce4 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1262,10 +1262,10 @@ spec:
           resources:
             limits:
               cpu: 250m
-              memory: 4Gi
+              memory: 8Gi
             requests:
               cpu: 250m
-              memory: 4Gi
+              memory: 8Gi
           securityContext:
             allowPrivilegeEscalation: false
             capabilities:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index dc5697ea..cbebb0cd 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1646,10 +1646,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -2063,12 +2063,12 @@ spec:
                       cpu: 100m
                       memory: 1Gi
                 topologySpreadConstraints:
-                  - maxSkew: 1
-                    topologyKey: topology.kubernetes.io/zone
-                    whenUnsatisfiable: DoNotSchedule
-                    labelSelector:
-                      matchLabels:
-                        app: tekton-pipelines-controller
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 80946c25..7a495ece 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1646,10 +1646,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -2063,12 +2063,12 @@ spec:
                       cpu: "1"
                       memory: 6Gi
                 topologySpreadConstraints:
-                  - maxSkew: 1
-                    topologyKey: topology.kubernetes.io/zone
-                    whenUnsatisfiable: DoNotSchedule
-                    labelSelector:
-                      matchLabels:
-                        app: tekton-pipelines-controller
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-21a7c731/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1646c1646
<             memory: 8Gi
---
>             memory: 6Gi
1649c1649
<             memory: 8Gi
---
>             memory: 6Gi
./commit-21a7c731/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1646c1646
<             memory: 8Gi
---
>             memory: 6Gi
1649c1649
<             memory: 8Gi
---
>             memory: 6Gi
./commit-21a7c731/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1646c1646
<             memory: 8Gi
---
>             memory: 6Gi
1649c1649
<             memory: 8Gi
---
>             memory: 6Gi
./commit-21a7c731/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1646c1646
<             memory: 8Gi
---
>             memory: 6Gi
1649c1649
<             memory: 8Gi
---
>             memory: 6Gi 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 21a7c731 to be4abf7f on Fri Sep 27 13:57:59 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb54432f..b4d042e9 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1259,10 +1259,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 281bbfa9..085f506b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b1b3508b..04988fa9 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 0735f2d0..c8465596 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index b5e11e1f..b7091e13 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index beb080ed..dee33ce4 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1262,10 +1262,10 @@ spec:
           resources:
             limits:
               cpu: 250m
-              memory: 4Gi
+              memory: 8Gi
             requests:
               cpu: 250m
-              memory: 4Gi
+              memory: 8Gi
           securityContext:
             allowPrivilegeEscalation: false
             capabilities:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index dc5697ea..cbebb0cd 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1646,10 +1646,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -2063,12 +2063,12 @@ spec:
                       cpu: 100m
                       memory: 1Gi
                 topologySpreadConstraints:
-                  - maxSkew: 1
-                    topologyKey: topology.kubernetes.io/zone
-                    whenUnsatisfiable: DoNotSchedule
-                    labelSelector:
-                      matchLabels:
-                        app: tekton-pipelines-controller
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 80946c25..7a495ece 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1646,10 +1646,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -2063,12 +2063,12 @@ spec:
                       cpu: "1"
                       memory: 6Gi
                 topologySpreadConstraints:
-                  - maxSkew: 1
-                    topologyKey: topology.kubernetes.io/zone
-                    whenUnsatisfiable: DoNotSchedule
-                    labelSelector:
-                      matchLabels:
-                        app: tekton-pipelines-controller
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-21a7c731/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1649c1649
<             memory: 8Gi
---
>             memory: 4Gi
1652c1652
<             memory: 8Gi
---
>             memory: 4Gi
./commit-21a7c731/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1649c1649
<             memory: 8Gi
---
>             memory: 4Gi
1652c1652
<             memory: 8Gi
---
>             memory: 4Gi 
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
<h3>1: Development changes from 21a7c731 to be4abf7f on Fri Sep 27 13:57:59 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb54432f..b4d042e9 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1259,10 +1259,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 281bbfa9..085f506b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b1b3508b..04988fa9 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 0735f2d0..c8465596 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index b5e11e1f..b7091e13 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1643,10 +1643,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 6Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index beb080ed..dee33ce4 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1262,10 +1262,10 @@ spec:
           resources:
             limits:
               cpu: 250m
-              memory: 4Gi
+              memory: 8Gi
             requests:
               cpu: 250m
-              memory: 4Gi
+              memory: 8Gi
           securityContext:
             allowPrivilegeEscalation: false
             capabilities:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index dc5697ea..cbebb0cd 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1646,10 +1646,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -2063,12 +2063,12 @@ spec:
                       cpu: 100m
                       memory: 1Gi
                 topologySpreadConstraints:
-                  - maxSkew: 1
-                    topologyKey: topology.kubernetes.io/zone
-                    whenUnsatisfiable: DoNotSchedule
-                    labelSelector:
-                      matchLabels:
-                        app: tekton-pipelines-controller
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 80946c25..7a495ece 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1646,10 +1646,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
           requests:
             cpu: 250m
-            memory: 4Gi
+            memory: 8Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
@@ -2063,12 +2063,12 @@ spec:
                       cpu: "1"
                       memory: 6Gi
                 topologySpreadConstraints:
-                  - maxSkew: 1
-                    topologyKey: topology.kubernetes.io/zone
-                    whenUnsatisfiable: DoNotSchedule
-                    labelSelector:
-                      matchLabels:
-                        app: tekton-pipelines-controller
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2 
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
<h3>2: Production changes from 6b9d7aa2 to 21a7c731 on Fri Sep 27 02:24:52 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 6dc6cf7e..a1b43124 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-6b9d7aa2/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
./commit-6b9d7aa2/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 6b9d7aa2 to 21a7c731 on Fri Sep 27 02:24:52 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 6dc6cf7e..a1b43124 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-6b9d7aa2/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1 
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
<h3>2: Development changes from 6b9d7aa2 to 21a7c731 on Fri Sep 27 02:24:52 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 6dc6cf7e..a1b43124 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-6b9d7aa2/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:27c2d86a862f3d2134e198ac3b22edf451b54ab1
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:27c2d86a862f3d2134e198ac3b22edf451b54ab1
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:0ea2f673d9099e431e25ea14dc270087bb4b434a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:27c2d86a862f3d2134e198ac3b22edf451b54ab1 
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
<h3>3: Production changes from 6063cf84 to 6b9d7aa2 on Thu Sep 26 14:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e988c922..beb080ed 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1574,6 +1574,13 @@ spec:
                         cpu: 100m
                       limits:
                         memory: 2Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1611,11 +1618,11 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f479daaf..dc5697ea 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 1Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2bf23bad..80946c25 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 6063cf84 to 6b9d7aa2 on Thu Sep 26 14:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e988c922..beb080ed 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1574,6 +1574,13 @@ spec:
                         cpu: 100m
                       limits:
                         memory: 2Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1611,11 +1618,11 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f479daaf..dc5697ea 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 1Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2bf23bad..80946c25 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-6063cf84/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2065,2071d2064
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2125c2118
<       buckets: 8
---
>       buckets: 4
2129c2122
<       replicas: 4
---
>       replicas: 2
./commit-6063cf84/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2065,2071d2064
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2125c2118
<       buckets: 8
---
>       buckets: 4
2129c2122
<       replicas: 4
---
>       replicas: 2 
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
<h3>3: Development changes from 6063cf84 to 6b9d7aa2 on Thu Sep 26 14:32:44 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e988c922..beb080ed 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1574,6 +1574,13 @@ spec:
                         cpu: 100m
                       limits:
                         memory: 2Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -1611,11 +1618,11 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f479daaf..dc5697ea 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 1Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2bf23bad..80946c25 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2062,6 +2062,13 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
+                topologySpreadConstraints:
+                  - maxSkew: 1
+                    topologyKey: topology.kubernetes.io/zone
+                    whenUnsatisfiable: DoNotSchedule
+                    labelSelector:
+                      matchLabels:
+                        app: tekton-pipelines-controller
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
@@ -2115,11 +2122,11 @@ spec:
               type: Resource
             minReplicas: 6
     performance:
-      buckets: 4
+      buckets: 8
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 2
+      replicas: 4
       threads-per-controller: 32
   platforms:
     openshift: 
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
<h3>4: Production changes from 6819aae5 to 6063cf84 on Thu Sep 26 12:29:04 2024 </h3>  
 
<details> 
<summary>Git Diff (391 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 26e96a32..dde32258 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - nvme-storage-configurator
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
new file mode 100644
index 00000000..db67a811
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nvme-storage-configurator.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
new file mode 100644
index 00000000..505a3aa4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
@@ -0,0 +1,40 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/nvme-storage-configurator
+                environment: staging
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: nvme-storage-configurator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: default
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 588724c3..d9c1e73f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..ccca8a68 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/clusterrolebinding.yaml b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
new file mode 100644
index 00000000..aa240418
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
@@ -0,0 +1,67 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: node-maintenance
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - pods/eviction
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - extensions
+  resources:
+  - daemonsets
+  verbs:
+  - get
+- apiGroups:
+  - apps
+  resources:
+  - daemonsets
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: node-maintenance
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: node-maintenance
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: nvme-storage-configurator-privileged
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: system:openshift:scc:privileged
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
new file mode 100644
index 00000000..60ecaad6
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -0,0 +1,61 @@
+apiVersion: apps/v1
+kind: DaemonSet
+metadata:
+  name: nvme-storage-configurator
+  labels:
+    app: nvme-storage-configurator
+spec:
+  selector:
+    matchLabels:
+      app: nvme-storage-configurator
+  template:
+    metadata:
+      labels:
+        app: nvme-storage-configurator
+    spec:
+      nodeSelector:
+        konflux-ci.dev/storage: "nvme"
+      tolerations:
+        - key: konflux-ci.dev/storage
+          operator: "Equal"
+          value: "nvme"
+          effect: "NoSchedule"
+      hostPID: true
+      serviceAccount: nvme-storage-configurator
+      initContainers:
+        - name: install
+          image: "quay.io/openshift/origin-network-tools"
+          command: ['/bin/bash', '-c', '/bin/bash -x /scripts/install.sh']
+          env:
+          - name: NODE_NAME
+            valueFrom:
+              fieldRef:
+                apiVersion: v1
+                fieldPath: spec.nodeName
+          securityContext:
+            privileged: true
+          volumeMounts:
+            - mountPath: /scripts
+              name: script-config
+            - mountPath: /host-etc-systemd-dir
+              name: etc-systemd-dir
+            - mountPath: /host-usr-local-bin
+              name: usr-local-bin
+            - mountPath: /host-dev-dir
+              name: dev-dir
+      containers:
+        - name: pause
+          image: registry.redhat.io/rhel8/pause:8.10
+      volumes:
+        - name: etc-systemd-dir
+          hostPath:
+            path: /etc/systemd/system
+        - name: usr-local-bin
+          hostPath:
+            path: /usr/local/bin
+        - name: dev-dir
+          hostPath:
+            path: /dev
+        - name: script-config
+          configMap:
+            name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/base/install.sh b/configs/nvme-storage-configurator/base/install.sh
new file mode 100644
index 00000000..120d5ab9
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/install.sh
@@ -0,0 +1,24 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+if [ -f /host-etc-systemd-dir/nvme-init-done ]; then
+    echo 'NVMe init already done'
+    oc adm uncordon $NODE_NAME
+    exit 0
+fi
+
+cp /scripts/mount.sh /host-usr-local-bin/mount.sh
+chmod 0755 /host-usr-local-bin/mount.sh
+
+cp /scripts/nvme-storage.service /host-etc-systemd-dir/nvme-storage.service
+chmod 0644 /host-etc-systemd-dir/nvme-storage.service
+
+oc adm cordon $NODE_NAME
+oc adm drain $NODE_NAME --delete-emptydir-data --ignore-daemonsets --grace-period=-1
+
+nsenter -t 1 -m -u -i -n -p -- systemctl daemon-reload
+nsenter -t 1 -m -u -i -n -p -- systemctl enable nvme-storage.service
+touch /host-etc-systemd-dir/nvme-init-done
+nsenter -t 1 -m -u -i -n -p -- systemctl reboot
diff --git a/configs/nvme-storage-configurator/base/kustomization.yaml b/configs/nvme-storage-configurator/base/kustomization.yaml
new file mode 100644
index 00000000..dc340693
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - namespace.yaml
+  - serviceaccount.yaml
+  - clusterrolebinding.yaml
+  - daemonset.yaml
+configMapGenerator:
+- name: nvme-storage-configurator
+  files:
+  - install.sh
+  - mount.sh
+  - nvme-storage.service
diff --git a/configs/nvme-storage-configurator/base/mount.sh b/configs/nvme-storage-configurator/base/mount.sh
new file mode 100644
index 00000000..ac1ac009
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/mount.sh
@@ -0,0 +1,36 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+DEVICE="$( ls /dev/disk/by-id/nvme-Amazon_EC2_NVMe_Instance_Storage_* | sort | head -n1 )"
+echo "Going to use device $DEVICE"
+
+export MOUNT_POINT="/var/home/nvme"
+export TARGET_DIR="/var/lib"
+export FSTYPE="xfs"
+
+mkdir -p ${MOUNT_POINT}
+
+if lsblk -no FSTYPE "$DEVICE" | grep -qE '\S'; then
+    echo "File system already exists on $DEVICE."
+else
+    echo "No file system found on $DEVICE. Creating XFS filesystem..."
+    mkfs -t "$FSTYPE" "$DEVICE"
+fi
+
+if ! grep -q "$DEVICE $MOUNT_POINT" /etc/fstab; then
+    echo "$DEVICE $MOUNT_POINT $FSTYPE defaults 0 0" >> /etc/fstab
+fi
+
+mount ${MOUNT_POINT}
+
+mkdir -p ${MOUNT_POINT}/var-lib-kubelet-pods
+mount --bind ${MOUNT_POINT}/var-lib-kubelet-pods ${TARGET_DIR}/kubelet/pods
+
+mkdir -p ${MOUNT_POINT}/var-lib-containers
+mount --bind ${MOUNT_POINT}/var-lib-containers ${TARGET_DIR}/containers
+
+restorecon -R -v -F /var/lib/kubelet/pods /var/lib/containers
+
+echo "Filesystem setup and mounting complete."
diff --git a/configs/nvme-storage-configurator/base/namespace.yaml b/configs/nvme-storage-configurator/base/namespace.yaml
new file mode 100644
index 00000000..933e7fd2
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/nvme-storage.service b/configs/nvme-storage-configurator/base/nvme-storage.service
new file mode 100644
index 00000000..2eec30d3
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/nvme-storage.service
@@ -0,0 +1,15 @@
+[Unit]
+Description=Custom Service for NVMe Storage
+DefaultDependencies=no
+Before=kubelet-dependencies.target
+After=sysinit.target 
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+StandardOutput=tty
+StandardError=tty
+ExecStart=/usr/local/bin/configuration.sh
+
+[Install]
+RequiredBy=local-fs.target
diff --git a/configs/nvme-storage-configurator/base/serviceaccount.yaml b/configs/nvme-storage-configurator/base/serviceaccount.yaml
new file mode 100644
index 00000000..3935b20b
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/serviceaccount.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/production/kustomization.yaml b/configs/nvme-storage-configurator/production/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/production/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base
diff --git a/configs/nvme-storage-configurator/staging/kustomization.yaml b/configs/nvme-storage-configurator/staging/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6819aae5 to 6063cf84 on Thu Sep 26 12:29:04 2024 </h3>  
 
<details> 
<summary>Git Diff (391 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 26e96a32..dde32258 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - nvme-storage-configurator
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
new file mode 100644
index 00000000..db67a811
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nvme-storage-configurator.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
new file mode 100644
index 00000000..505a3aa4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
@@ -0,0 +1,40 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/nvme-storage-configurator
+                environment: staging
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: nvme-storage-configurator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: default
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 588724c3..d9c1e73f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..ccca8a68 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/clusterrolebinding.yaml b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
new file mode 100644
index 00000000..aa240418
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
@@ -0,0 +1,67 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: node-maintenance
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - pods/eviction
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - extensions
+  resources:
+  - daemonsets
+  verbs:
+  - get
+- apiGroups:
+  - apps
+  resources:
+  - daemonsets
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: node-maintenance
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: node-maintenance
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: nvme-storage-configurator-privileged
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: system:openshift:scc:privileged
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
new file mode 100644
index 00000000..60ecaad6
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -0,0 +1,61 @@
+apiVersion: apps/v1
+kind: DaemonSet
+metadata:
+  name: nvme-storage-configurator
+  labels:
+    app: nvme-storage-configurator
+spec:
+  selector:
+    matchLabels:
+      app: nvme-storage-configurator
+  template:
+    metadata:
+      labels:
+        app: nvme-storage-configurator
+    spec:
+      nodeSelector:
+        konflux-ci.dev/storage: "nvme"
+      tolerations:
+        - key: konflux-ci.dev/storage
+          operator: "Equal"
+          value: "nvme"
+          effect: "NoSchedule"
+      hostPID: true
+      serviceAccount: nvme-storage-configurator
+      initContainers:
+        - name: install
+          image: "quay.io/openshift/origin-network-tools"
+          command: ['/bin/bash', '-c', '/bin/bash -x /scripts/install.sh']
+          env:
+          - name: NODE_NAME
+            valueFrom:
+              fieldRef:
+                apiVersion: v1
+                fieldPath: spec.nodeName
+          securityContext:
+            privileged: true
+          volumeMounts:
+            - mountPath: /scripts
+              name: script-config
+            - mountPath: /host-etc-systemd-dir
+              name: etc-systemd-dir
+            - mountPath: /host-usr-local-bin
+              name: usr-local-bin
+            - mountPath: /host-dev-dir
+              name: dev-dir
+      containers:
+        - name: pause
+          image: registry.redhat.io/rhel8/pause:8.10
+      volumes:
+        - name: etc-systemd-dir
+          hostPath:
+            path: /etc/systemd/system
+        - name: usr-local-bin
+          hostPath:
+            path: /usr/local/bin
+        - name: dev-dir
+          hostPath:
+            path: /dev
+        - name: script-config
+          configMap:
+            name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/base/install.sh b/configs/nvme-storage-configurator/base/install.sh
new file mode 100644
index 00000000..120d5ab9
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/install.sh
@@ -0,0 +1,24 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+if [ -f /host-etc-systemd-dir/nvme-init-done ]; then
+    echo 'NVMe init already done'
+    oc adm uncordon $NODE_NAME
+    exit 0
+fi
+
+cp /scripts/mount.sh /host-usr-local-bin/mount.sh
+chmod 0755 /host-usr-local-bin/mount.sh
+
+cp /scripts/nvme-storage.service /host-etc-systemd-dir/nvme-storage.service
+chmod 0644 /host-etc-systemd-dir/nvme-storage.service
+
+oc adm cordon $NODE_NAME
+oc adm drain $NODE_NAME --delete-emptydir-data --ignore-daemonsets --grace-period=-1
+
+nsenter -t 1 -m -u -i -n -p -- systemctl daemon-reload
+nsenter -t 1 -m -u -i -n -p -- systemctl enable nvme-storage.service
+touch /host-etc-systemd-dir/nvme-init-done
+nsenter -t 1 -m -u -i -n -p -- systemctl reboot
diff --git a/configs/nvme-storage-configurator/base/kustomization.yaml b/configs/nvme-storage-configurator/base/kustomization.yaml
new file mode 100644
index 00000000..dc340693
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - namespace.yaml
+  - serviceaccount.yaml
+  - clusterrolebinding.yaml
+  - daemonset.yaml
+configMapGenerator:
+- name: nvme-storage-configurator
+  files:
+  - install.sh
+  - mount.sh
+  - nvme-storage.service
diff --git a/configs/nvme-storage-configurator/base/mount.sh b/configs/nvme-storage-configurator/base/mount.sh
new file mode 100644
index 00000000..ac1ac009
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/mount.sh
@@ -0,0 +1,36 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+DEVICE="$( ls /dev/disk/by-id/nvme-Amazon_EC2_NVMe_Instance_Storage_* | sort | head -n1 )"
+echo "Going to use device $DEVICE"
+
+export MOUNT_POINT="/var/home/nvme"
+export TARGET_DIR="/var/lib"
+export FSTYPE="xfs"
+
+mkdir -p ${MOUNT_POINT}
+
+if lsblk -no FSTYPE "$DEVICE" | grep -qE '\S'; then
+    echo "File system already exists on $DEVICE."
+else
+    echo "No file system found on $DEVICE. Creating XFS filesystem..."
+    mkfs -t "$FSTYPE" "$DEVICE"
+fi
+
+if ! grep -q "$DEVICE $MOUNT_POINT" /etc/fstab; then
+    echo "$DEVICE $MOUNT_POINT $FSTYPE defaults 0 0" >> /etc/fstab
+fi
+
+mount ${MOUNT_POINT}
+
+mkdir -p ${MOUNT_POINT}/var-lib-kubelet-pods
+mount --bind ${MOUNT_POINT}/var-lib-kubelet-pods ${TARGET_DIR}/kubelet/pods
+
+mkdir -p ${MOUNT_POINT}/var-lib-containers
+mount --bind ${MOUNT_POINT}/var-lib-containers ${TARGET_DIR}/containers
+
+restorecon -R -v -F /var/lib/kubelet/pods /var/lib/containers
+
+echo "Filesystem setup and mounting complete."
diff --git a/configs/nvme-storage-configurator/base/namespace.yaml b/configs/nvme-storage-configurator/base/namespace.yaml
new file mode 100644
index 00000000..933e7fd2
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/nvme-storage.service b/configs/nvme-storage-configurator/base/nvme-storage.service
new file mode 100644
index 00000000..2eec30d3
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/nvme-storage.service
@@ -0,0 +1,15 @@
+[Unit]
+Description=Custom Service for NVMe Storage
+DefaultDependencies=no
+Before=kubelet-dependencies.target
+After=sysinit.target 
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+StandardOutput=tty
+StandardError=tty
+ExecStart=/usr/local/bin/configuration.sh
+
+[Install]
+RequiredBy=local-fs.target
diff --git a/configs/nvme-storage-configurator/base/serviceaccount.yaml b/configs/nvme-storage-configurator/base/serviceaccount.yaml
new file mode 100644
index 00000000..3935b20b
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/serviceaccount.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/production/kustomization.yaml b/configs/nvme-storage-configurator/production/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/production/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base
diff --git a/configs/nvme-storage-configurator/staging/kustomization.yaml b/configs/nvme-storage-configurator/staging/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base 
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
<h3>4: Development changes from 6819aae5 to 6063cf84 on Thu Sep 26 12:29:04 2024 </h3>  
 
<details> 
<summary>Git Diff (391 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
index 26e96a32..dde32258 100644
--- a/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/kustomization.yaml
@@ -18,6 +18,7 @@ resources:
   - project-controller
   - spacerequest-cleaner
   - mintmaker
+  - nvme-storage-configurator
   - tracing-workload-otel-collector
   - tempo
   - notification-controller
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
new file mode 100644
index 00000000..db67a811
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nvme-storage-configurator.yaml
diff --git a/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
new file mode 100644
index 00000000..505a3aa4
--- /dev/null
+++ b/argo-cd-apps/base/member/infra-deployments/nvme-storage-configurator/nvme-storage-configurator.yaml
@@ -0,0 +1,40 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/nvme-storage-configurator
+                environment: staging
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: nvme-storage-configurator-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}'
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: default
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+        - CreateNamespace=true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 588724c3..d9c1e73f 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,3 +11,9 @@ kind: ApplicationSet
 metadata:
   name: tempo
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..ccca8a68 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: nvme-storage-configurator
+$patch: delete
diff --git a/configs/nvme-storage-configurator/base/clusterrolebinding.yaml b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
new file mode 100644
index 00000000..aa240418
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/clusterrolebinding.yaml
@@ -0,0 +1,67 @@
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: node-maintenance
+rules:
+- apiGroups:
+  - ""
+  resources:
+  - nodes
+  verbs:
+  - get
+  - list
+  - watch
+  - patch
+- apiGroups:
+  - ""
+  resources:
+  - pods/eviction
+  verbs:
+  - create
+- apiGroups:
+  - ""
+  resources:
+  - pods
+  verbs:
+  - get
+  - list
+  - watch
+- apiGroups:
+  - extensions
+  resources:
+  - daemonsets
+  verbs:
+  - get
+- apiGroups:
+  - apps
+  resources:
+  - daemonsets
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: node-maintenance
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: node-maintenance
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: nvme-storage-configurator-privileged
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: system:openshift:scc:privileged
+subjects:
+  - kind: ServiceAccount
+    name: nvme-storage-configurator
+    namespace: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/daemonset.yaml b/configs/nvme-storage-configurator/base/daemonset.yaml
new file mode 100644
index 00000000..60ecaad6
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/daemonset.yaml
@@ -0,0 +1,61 @@
+apiVersion: apps/v1
+kind: DaemonSet
+metadata:
+  name: nvme-storage-configurator
+  labels:
+    app: nvme-storage-configurator
+spec:
+  selector:
+    matchLabels:
+      app: nvme-storage-configurator
+  template:
+    metadata:
+      labels:
+        app: nvme-storage-configurator
+    spec:
+      nodeSelector:
+        konflux-ci.dev/storage: "nvme"
+      tolerations:
+        - key: konflux-ci.dev/storage
+          operator: "Equal"
+          value: "nvme"
+          effect: "NoSchedule"
+      hostPID: true
+      serviceAccount: nvme-storage-configurator
+      initContainers:
+        - name: install
+          image: "quay.io/openshift/origin-network-tools"
+          command: ['/bin/bash', '-c', '/bin/bash -x /scripts/install.sh']
+          env:
+          - name: NODE_NAME
+            valueFrom:
+              fieldRef:
+                apiVersion: v1
+                fieldPath: spec.nodeName
+          securityContext:
+            privileged: true
+          volumeMounts:
+            - mountPath: /scripts
+              name: script-config
+            - mountPath: /host-etc-systemd-dir
+              name: etc-systemd-dir
+            - mountPath: /host-usr-local-bin
+              name: usr-local-bin
+            - mountPath: /host-dev-dir
+              name: dev-dir
+      containers:
+        - name: pause
+          image: registry.redhat.io/rhel8/pause:8.10
+      volumes:
+        - name: etc-systemd-dir
+          hostPath:
+            path: /etc/systemd/system
+        - name: usr-local-bin
+          hostPath:
+            path: /usr/local/bin
+        - name: dev-dir
+          hostPath:
+            path: /dev
+        - name: script-config
+          configMap:
+            name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/base/install.sh b/configs/nvme-storage-configurator/base/install.sh
new file mode 100644
index 00000000..120d5ab9
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/install.sh
@@ -0,0 +1,24 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+if [ -f /host-etc-systemd-dir/nvme-init-done ]; then
+    echo 'NVMe init already done'
+    oc adm uncordon $NODE_NAME
+    exit 0
+fi
+
+cp /scripts/mount.sh /host-usr-local-bin/mount.sh
+chmod 0755 /host-usr-local-bin/mount.sh
+
+cp /scripts/nvme-storage.service /host-etc-systemd-dir/nvme-storage.service
+chmod 0644 /host-etc-systemd-dir/nvme-storage.service
+
+oc adm cordon $NODE_NAME
+oc adm drain $NODE_NAME --delete-emptydir-data --ignore-daemonsets --grace-period=-1
+
+nsenter -t 1 -m -u -i -n -p -- systemctl daemon-reload
+nsenter -t 1 -m -u -i -n -p -- systemctl enable nvme-storage.service
+touch /host-etc-systemd-dir/nvme-init-done
+nsenter -t 1 -m -u -i -n -p -- systemctl reboot
diff --git a/configs/nvme-storage-configurator/base/kustomization.yaml b/configs/nvme-storage-configurator/base/kustomization.yaml
new file mode 100644
index 00000000..dc340693
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/kustomization.yaml
@@ -0,0 +1,14 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - namespace.yaml
+  - serviceaccount.yaml
+  - clusterrolebinding.yaml
+  - daemonset.yaml
+configMapGenerator:
+- name: nvme-storage-configurator
+  files:
+  - install.sh
+  - mount.sh
+  - nvme-storage.service
diff --git a/configs/nvme-storage-configurator/base/mount.sh b/configs/nvme-storage-configurator/base/mount.sh
new file mode 100644
index 00000000..ac1ac009
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/mount.sh
@@ -0,0 +1,36 @@
+#!/usr/bin/env bash
+
+# Enable debugging
+set -eux
+
+DEVICE="$( ls /dev/disk/by-id/nvme-Amazon_EC2_NVMe_Instance_Storage_* | sort | head -n1 )"
+echo "Going to use device $DEVICE"
+
+export MOUNT_POINT="/var/home/nvme"
+export TARGET_DIR="/var/lib"
+export FSTYPE="xfs"
+
+mkdir -p ${MOUNT_POINT}
+
+if lsblk -no FSTYPE "$DEVICE" | grep -qE '\S'; then
+    echo "File system already exists on $DEVICE."
+else
+    echo "No file system found on $DEVICE. Creating XFS filesystem..."
+    mkfs -t "$FSTYPE" "$DEVICE"
+fi
+
+if ! grep -q "$DEVICE $MOUNT_POINT" /etc/fstab; then
+    echo "$DEVICE $MOUNT_POINT $FSTYPE defaults 0 0" >> /etc/fstab
+fi
+
+mount ${MOUNT_POINT}
+
+mkdir -p ${MOUNT_POINT}/var-lib-kubelet-pods
+mount --bind ${MOUNT_POINT}/var-lib-kubelet-pods ${TARGET_DIR}/kubelet/pods
+
+mkdir -p ${MOUNT_POINT}/var-lib-containers
+mount --bind ${MOUNT_POINT}/var-lib-containers ${TARGET_DIR}/containers
+
+restorecon -R -v -F /var/lib/kubelet/pods /var/lib/containers
+
+echo "Filesystem setup and mounting complete."
diff --git a/configs/nvme-storage-configurator/base/namespace.yaml b/configs/nvme-storage-configurator/base/namespace.yaml
new file mode 100644
index 00000000..933e7fd2
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/namespace.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: Namespace
+metadata:
+  name: nvme-storage-config
diff --git a/configs/nvme-storage-configurator/base/nvme-storage.service b/configs/nvme-storage-configurator/base/nvme-storage.service
new file mode 100644
index 00000000..2eec30d3
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/nvme-storage.service
@@ -0,0 +1,15 @@
+[Unit]
+Description=Custom Service for NVMe Storage
+DefaultDependencies=no
+Before=kubelet-dependencies.target
+After=sysinit.target 
+
+[Service]
+Type=oneshot
+RemainAfterExit=yes
+StandardOutput=tty
+StandardError=tty
+ExecStart=/usr/local/bin/configuration.sh
+
+[Install]
+RequiredBy=local-fs.target
diff --git a/configs/nvme-storage-configurator/base/serviceaccount.yaml b/configs/nvme-storage-configurator/base/serviceaccount.yaml
new file mode 100644
index 00000000..3935b20b
--- /dev/null
+++ b/configs/nvme-storage-configurator/base/serviceaccount.yaml
@@ -0,0 +1,4 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: nvme-storage-configurator
diff --git a/configs/nvme-storage-configurator/production/kustomization.yaml b/configs/nvme-storage-configurator/production/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/production/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base
diff --git a/configs/nvme-storage-configurator/staging/kustomization.yaml b/configs/nvme-storage-configurator/staging/kustomization.yaml
new file mode 100644
index 00000000..ebd64652
--- /dev/null
+++ b/configs/nvme-storage-configurator/staging/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: nvme-storage-config
+resources:
+  - ../base 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-6819aae5/development/app-of-apps-development.yaml
868,909d867
<   name: nvme-storage-configurator
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           values:
<             environment: staging
<             sourceRoot: configs/nvme-storage-configurator
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: nvme-storage-configurator-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: default
<         server: '{{server}}'
<       project: default
<       source:
<         path: '{{values.sourceRoot}}/{{values.environment}}'
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata: 
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
