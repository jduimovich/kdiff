# kustomize changes tracked by commits 
### This file generated at Thu Sep 19 16:08:06 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 27c2d3b8 to 4a768262 on Thu Sep 19 15:03:24 2024 </h3>  
 
<details> 
<summary>Git Diff (140 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb8a5909..cb54432f 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,6 +1566,18 @@ spec:
                     requests:
                       cpu: 200m
                       memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: "1"
+                      limits:
+                        memory: 8Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 83e8d587..281bbfa9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9c64a4fa..b1b3508b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index e1a822f8..0735f2d0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6d592572..b5e11e1f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c7667781..2bf23bad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2060,7 +2060,7 @@ spec:
                     limits:
                       memory: 8Gi
                     requests:
-                      cpu: 500m
+                      cpu: "1"
                       memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
index 408130cc..0cbd0acc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -15,6 +15,6 @@ spec:
                     resources:
                       requests:
                         memory: 6Gi
-                        cpu: 500m
+                        cpu: "1"
                       limits:
                         memory: 8Gi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (56 lines)</summary>  

``` 
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi
./commit-27c2d3b8/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2046,2057d2045
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: "1"
<                       memory: 6Gi 
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
<h3>1: Staging changes from 27c2d3b8 to 4a768262 on Thu Sep 19 15:03:24 2024 </h3>  
 
<details> 
<summary>Git Diff (140 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb8a5909..cb54432f 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,6 +1566,18 @@ spec:
                     requests:
                       cpu: 200m
                       memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: "1"
+                      limits:
+                        memory: 8Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 83e8d587..281bbfa9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9c64a4fa..b1b3508b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index e1a822f8..0735f2d0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6d592572..b5e11e1f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c7667781..2bf23bad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2060,7 +2060,7 @@ spec:
                     limits:
                       memory: 8Gi
                     requests:
-                      cpu: 500m
+                      cpu: "1"
                       memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
index 408130cc..0cbd0acc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -15,6 +15,6 @@ spec:
                     resources:
                       requests:
                         memory: 6Gi
-                        cpu: 500m
+                        cpu: "1"
                       limits:
                         memory: 8Gi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-27c2d3b8/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2063c2063
<                       cpu: "1"
---
>                       cpu: 500m 
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
<h3>1: Development changes from 27c2d3b8 to 4a768262 on Thu Sep 19 15:03:24 2024 </h3>  
 
<details> 
<summary>Git Diff (140 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index cb8a5909..cb54432f 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,6 +1566,18 @@ spec:
                     requests:
                       cpu: 200m
                       memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: "1"
+                      limits:
+                        memory: 8Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 83e8d587..281bbfa9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9c64a4fa..b1b3508b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index e1a822f8..0735f2d0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 6d592572..b5e11e1f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2043,6 +2043,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: "1"
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c7667781..2bf23bad 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2060,7 +2060,7 @@ spec:
                     limits:
                       memory: 8Gi
                     requests:
-                      cpu: 500m
+                      cpu: "1"
                       memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
index 408130cc..0cbd0acc 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -15,6 +15,6 @@ spec:
                     resources:
                       requests:
                         memory: 6Gi
-                        cpu: 500m
+                        cpu: "1"
                       limits:
                         memory: 8Gi 
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
<h3>2: Production changes from 90ee9cb7 to 27c2d3b8 on Thu Sep 19 14:30:29 2024 </h3>  
 
<details> 
<summary>Git Diff (340 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index 65050ae3..fc809ded 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -45,8 +45,6 @@ spec:
               value: hypershift
             - name: serviceAccount
               value: cluster-provisioner
-            - name: hypershiftImageTag
-              value: "4.14"
             - name: nodePoolReplicas
               value: "3"
       syncPolicy:
diff --git a/components/cluster-as-a-service/development/add-base-domain-param.yaml b/components/cluster-as-a-service/development/add-base-domain-param.yaml
deleted file mode 100644
index d5459a58..00000000
--- a/components/cluster-as-a-service/development/add-base-domain-param.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/source/helm/parameters/-
-  value:
-    name: baseDomain
-    value: eaasdemo.com
diff --git a/components/cluster-as-a-service/development/add-hypershift-params.yaml b/components/cluster-as-a-service/development/add-hypershift-params.yaml
new file mode 100644
index 00000000..5ef8b493
--- /dev/null
+++ b/components/cluster-as-a-service/development/add-hypershift-params.yaml
@@ -0,0 +1,18 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: ""
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: ""
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
new file mode 100644
index 00000000..858f3b13
--- /dev/null
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -0,0 +1,9 @@
+---
+# Workaround for multicluster-engine 2.6 installation status stuck when using a ROSA HCP cluster
+# See https://issues.redhat.com/browse/ACM-13416
+apiVersion: config.open-cluster-management.io/v1alpha1
+kind: KlusterletConfig
+metadata:
+  name: global
+spec:
+  hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index d4c4d41a..5bda7a54 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -3,12 +3,29 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - klusterlet-config.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/template/spec/source/targetRevision
+        value: 0.1.0
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/channel
+        value: stable-2.6
+    target:
+      group: operators.coreos.com
+      kind: Subscription
+      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
similarity index 51%
rename from components/cluster-as-a-service/production/add-base-domain-param.yaml
rename to components/cluster-as-a-service/production/add-hypershift-params.yaml
index 70237afc..793d5207 100644
--- a/components/cluster-as-a-service/production/add-base-domain-param.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -4,3 +4,9 @@
   value:
     name: baseDomain
     value: prod.konfluxeaas.com
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.14"
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index 0258ccfc..c82b467d 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -6,8 +6,8 @@ resources:
   - ../../openshift-gitops
   - external-secrets.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
diff --git a/components/cluster-as-a-service/staging/add-base-domain-param.yaml b/components/cluster-as-a-service/staging/add-base-domain-param.yaml
deleted file mode 100644
index e3f8a81f..00000000
--- a/components/cluster-as-a-service/staging/add-base-domain-param.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/source/helm/parameters/-
-  value:
-    name: baseDomain
-    value: stage.konfluxeaas.com
diff --git a/components/cluster-as-a-service/staging/add-hypershift-params.yaml b/components/cluster-as-a-service/staging/add-hypershift-params.yaml
new file mode 100644
index 00000000..f9da369e
--- /dev/null
+++ b/components/cluster-as-a-service/staging/add-hypershift-params.yaml
@@ -0,0 +1,18 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: stage.konfluxeaas.com
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::767397671005:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/staging/external-secrets.yaml b/components/cluster-as-a-service/staging/external-secrets.yaml
index b7b1024f..13105883 100644
--- a/components/cluster-as-a-service/staging/external-secrets.yaml
+++ b/components/cluster-as-a-service/staging/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: stage.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 0258ccfc..7999773d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -6,8 +6,24 @@ resources:
   - ../../openshift-gitops
   - external-secrets.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/template/spec/source/targetRevision
+        value: 0.1.0
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/channel
+        value: stable-2.6
+    target:
+      group: operators.coreos.com
+      kind: Subscription
+      name: multicluster-engine
diff --git a/hack/bootstrap-eaas-cluster.sh b/hack/bootstrap-eaas-cluster.sh
index ef7bd0e4..83f15926 100755
--- a/hack/bootstrap-eaas-cluster.sh
+++ b/hack/bootstrap-eaas-cluster.sh
@@ -5,12 +5,10 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/create-eaas-secrets.sh" \
-      "$EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID" \
-      "$EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY" \
+      "$EAAS_HYPERSHIFT_AWS_CREDENTIALS_PATH" \
       "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION" \
       "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET" \
-      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH" \
-      "$EAAS_HYPERSHIFT_BASE_DOMAIN"
+      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH"
 }
 
 load_global_vars() {
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..36f48dde 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -116,9 +116,10 @@ export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
 export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
 
 # Environment as a service
-export EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID=
-export EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY=
+# See https://github.com/konflux-ci/cluster-template-charts/blob/main/README.md#prerequisites for more details
+export EAAS_HYPERSHIFT_AWS_CREDENTIALS_PATH=
 export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET=
 export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION=
 export EAAS_HYPERSHIFT_PULL_SECRET_PATH=
 export EAAS_HYPERSHIFT_BASE_DOMAIN=
+export EAAS_HYPERSHIFT_CLI_ROLE_ARN=
diff --git a/hack/preview.sh b/hack/preview.sh
index c724f440..d4fbb4a1 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -220,6 +220,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newTag=\"${MULTI_ARCH_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 [[ -n "${MULTI_ARCH_CONTROLLER_PR_OWNER}" && "${MULTI_ARCH_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/multi-platform-controller*\")) |= \"https://github.com/${MULTI_ARCH_CONTROLLER_PR_OWNER}/multi-platform-controller/config/default?ref=${MULTI_ARCH_CONTROLLER_PR_SHA}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 
+[ -n "${EAAS_HYPERSHIFT_BASE_DOMAIN}" ] && yq -i e "(.[] | select(.value.name==\"baseDomain\")).value.value |= \"${EAAS_HYPERSHIFT_BASE_DOMAIN}\"" $ROOT/components/cluster-as-a-service/development/add-hypershift-params.yaml
+[ -n "${EAAS_HYPERSHIFT_CLI_ROLE_ARN}" ] && yq -i e "(.[] | select(.value.name==\"hypershiftRoleArn\")).value.value |= \"${EAAS_HYPERSHIFT_CLI_ROLE_ARN}\"" $ROOT/components/cluster-as-a-service/development/add-hypershift-params.yaml
 
 [[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e ".resources[] |= sub(\"ref=[^ ]*\"; \"ref=${PIPELINE_PR_SHA}\") | .resources[] |= sub(\"openshift-pipelines\"; \"${PIPELINE_PR_OWNER}\")" $ROOT/components/pipeline-service/development/kustomization.yaml
 
diff --git a/hack/secret-creator/create-eaas-secrets.sh b/hack/secret-creator/create-eaas-secrets.sh
index e0df4eb0..9ebe4c93 100755
--- a/hack/secret-creator/create-eaas-secrets.sh
+++ b/hack/secret-creator/create-eaas-secrets.sh
@@ -4,25 +4,20 @@ set -eo pipefail
 main() {
   echo "Setting secrets for EaaS (Environment as a Service)"
 
-  local aws_access_key_id=${1:?"AWS access key id was not provided"}
-  local aws_secret_access_key=${2:?"AWS secret access key was not provided"}
-  local oidc_provider_s3_region=${3:?"OIDC provider S3 region was not provided"}
-  local oidc_provider_s3_bucket=${4:?"OIDC provider S3 bucket was not provided"}
-  local pull_secret_path=${5:?"OpenShift pull secret path was not provided"}
-  local base_domain=${6:?"Route53 base domain was not provided"}
+  local aws_credentials_path=${1:?"AWS credentials path was not provided"}
+  local oidc_provider_s3_region=${2:?"OIDC provider S3 region was not provided"}
+  local oidc_provider_s3_bucket=${3:?"OIDC provider S3 bucket was not provided"}
+  local pull_secret_path=${4:?"OpenShift pull secret path was not provided"}
 
   create_namespace "local-cluster"
   create_namespace "clusters"
   create_oidc_provider_s3_secret \
-    $aws_access_key_id \
-    $aws_secret_access_key \
+    $aws_credentials_path \
     $oidc_provider_s3_region \
     $oidc_provider_s3_bucket
   create_hypershift_credentials \
-    $aws_access_key_id \
-    $aws_secret_access_key \
-    $pull_secret_path \
-    $base_domain
+    $aws_credentials_path \
+    $pull_secret_path
 }
 
 create_namespace() {
@@ -32,29 +27,22 @@ create_namespace() {
 
 create_oidc_provider_s3_secret() {
   echo "Creating hypershift OIDC provider S3 secret"
-  local creds=$(mktemp)
-  echo "[default]" >> $creds
-  echo "aws_access_key_id=$1" >> $creds
-  echo "aws_secret_access_key=$2" >> $creds
   kubectl create secret generic hypershift-operator-oidc-provider-s3-credentials \
-    --from-file=credentials=$creds \
-    --from-literal=region=$3 \
-    --from-literal=bucket=$4 \
+    --from-file=credentials=$1 \
+    --from-literal=region=$2 \
+    --from-literal=bucket=$3 \
     --save-config=true \
     --dry-run=client \
     -n local-cluster \
     -o yaml \
     | kubectl apply -f -
-  rm "$creds"
 }
 
 create_hypershift_credentials() {
   echo "Creating hypershift secret"
   kubectl create secret generic hypershift \
-    --from-literal=aws_access_key_id=$1 \
-    --from-literal=aws_secret_access_key=$2 \
-    --from-file=pullSecret=$3 \
-    --from-literal=baseDomain=$4 \
+    --from-file=aws-credentials=$1 \
+    --from-file=pull-secret=$2 \
     --from-literal=ssh-privatekey="not yet implemented" \
     --from-literal=ssh-publickey="not yet implemented" \
     --save-config=true \ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-90ee9cb7/production/components/cluster-as-a-service/production/kustomize.out.yaml
228a229,230
>           - name: hypershiftImageTag
>             value: "4.14"
233,234d234
<           - name: hypershiftImageTag
<             value: "4.14" 
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
<h3>2: Staging changes from 90ee9cb7 to 27c2d3b8 on Thu Sep 19 14:30:29 2024 </h3>  
 
<details> 
<summary>Git Diff (340 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index 65050ae3..fc809ded 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -45,8 +45,6 @@ spec:
               value: hypershift
             - name: serviceAccount
               value: cluster-provisioner
-            - name: hypershiftImageTag
-              value: "4.14"
             - name: nodePoolReplicas
               value: "3"
       syncPolicy:
diff --git a/components/cluster-as-a-service/development/add-base-domain-param.yaml b/components/cluster-as-a-service/development/add-base-domain-param.yaml
deleted file mode 100644
index d5459a58..00000000
--- a/components/cluster-as-a-service/development/add-base-domain-param.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/source/helm/parameters/-
-  value:
-    name: baseDomain
-    value: eaasdemo.com
diff --git a/components/cluster-as-a-service/development/add-hypershift-params.yaml b/components/cluster-as-a-service/development/add-hypershift-params.yaml
new file mode 100644
index 00000000..5ef8b493
--- /dev/null
+++ b/components/cluster-as-a-service/development/add-hypershift-params.yaml
@@ -0,0 +1,18 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: ""
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: ""
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
new file mode 100644
index 00000000..858f3b13
--- /dev/null
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -0,0 +1,9 @@
+---
+# Workaround for multicluster-engine 2.6 installation status stuck when using a ROSA HCP cluster
+# See https://issues.redhat.com/browse/ACM-13416
+apiVersion: config.open-cluster-management.io/v1alpha1
+kind: KlusterletConfig
+metadata:
+  name: global
+spec:
+  hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index d4c4d41a..5bda7a54 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -3,12 +3,29 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - klusterlet-config.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/template/spec/source/targetRevision
+        value: 0.1.0
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/channel
+        value: stable-2.6
+    target:
+      group: operators.coreos.com
+      kind: Subscription
+      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
similarity index 51%
rename from components/cluster-as-a-service/production/add-base-domain-param.yaml
rename to components/cluster-as-a-service/production/add-hypershift-params.yaml
index 70237afc..793d5207 100644
--- a/components/cluster-as-a-service/production/add-base-domain-param.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -4,3 +4,9 @@
   value:
     name: baseDomain
     value: prod.konfluxeaas.com
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.14"
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index 0258ccfc..c82b467d 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -6,8 +6,8 @@ resources:
   - ../../openshift-gitops
   - external-secrets.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
diff --git a/components/cluster-as-a-service/staging/add-base-domain-param.yaml b/components/cluster-as-a-service/staging/add-base-domain-param.yaml
deleted file mode 100644
index e3f8a81f..00000000
--- a/components/cluster-as-a-service/staging/add-base-domain-param.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/source/helm/parameters/-
-  value:
-    name: baseDomain
-    value: stage.konfluxeaas.com
diff --git a/components/cluster-as-a-service/staging/add-hypershift-params.yaml b/components/cluster-as-a-service/staging/add-hypershift-params.yaml
new file mode 100644
index 00000000..f9da369e
--- /dev/null
+++ b/components/cluster-as-a-service/staging/add-hypershift-params.yaml
@@ -0,0 +1,18 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: stage.konfluxeaas.com
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::767397671005:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/staging/external-secrets.yaml b/components/cluster-as-a-service/staging/external-secrets.yaml
index b7b1024f..13105883 100644
--- a/components/cluster-as-a-service/staging/external-secrets.yaml
+++ b/components/cluster-as-a-service/staging/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: stage.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 0258ccfc..7999773d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -6,8 +6,24 @@ resources:
   - ../../openshift-gitops
   - external-secrets.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/template/spec/source/targetRevision
+        value: 0.1.0
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/channel
+        value: stable-2.6
+    target:
+      group: operators.coreos.com
+      kind: Subscription
+      name: multicluster-engine
diff --git a/hack/bootstrap-eaas-cluster.sh b/hack/bootstrap-eaas-cluster.sh
index ef7bd0e4..83f15926 100755
--- a/hack/bootstrap-eaas-cluster.sh
+++ b/hack/bootstrap-eaas-cluster.sh
@@ -5,12 +5,10 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/create-eaas-secrets.sh" \
-      "$EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID" \
-      "$EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY" \
+      "$EAAS_HYPERSHIFT_AWS_CREDENTIALS_PATH" \
       "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION" \
       "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET" \
-      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH" \
-      "$EAAS_HYPERSHIFT_BASE_DOMAIN"
+      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH"
 }
 
 load_global_vars() {
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..36f48dde 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -116,9 +116,10 @@ export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
 export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
 
 # Environment as a service
-export EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID=
-export EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY=
+# See https://github.com/konflux-ci/cluster-template-charts/blob/main/README.md#prerequisites for more details
+export EAAS_HYPERSHIFT_AWS_CREDENTIALS_PATH=
 export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET=
 export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION=
 export EAAS_HYPERSHIFT_PULL_SECRET_PATH=
 export EAAS_HYPERSHIFT_BASE_DOMAIN=
+export EAAS_HYPERSHIFT_CLI_ROLE_ARN=
diff --git a/hack/preview.sh b/hack/preview.sh
index c724f440..d4fbb4a1 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -220,6 +220,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newTag=\"${MULTI_ARCH_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 [[ -n "${MULTI_ARCH_CONTROLLER_PR_OWNER}" && "${MULTI_ARCH_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/multi-platform-controller*\")) |= \"https://github.com/${MULTI_ARCH_CONTROLLER_PR_OWNER}/multi-platform-controller/config/default?ref=${MULTI_ARCH_CONTROLLER_PR_SHA}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 
+[ -n "${EAAS_HYPERSHIFT_BASE_DOMAIN}" ] && yq -i e "(.[] | select(.value.name==\"baseDomain\")).value.value |= \"${EAAS_HYPERSHIFT_BASE_DOMAIN}\"" $ROOT/components/cluster-as-a-service/development/add-hypershift-params.yaml
+[ -n "${EAAS_HYPERSHIFT_CLI_ROLE_ARN}" ] && yq -i e "(.[] | select(.value.name==\"hypershiftRoleArn\")).value.value |= \"${EAAS_HYPERSHIFT_CLI_ROLE_ARN}\"" $ROOT/components/cluster-as-a-service/development/add-hypershift-params.yaml
 
 [[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e ".resources[] |= sub(\"ref=[^ ]*\"; \"ref=${PIPELINE_PR_SHA}\") | .resources[] |= sub(\"openshift-pipelines\"; \"${PIPELINE_PR_OWNER}\")" $ROOT/components/pipeline-service/development/kustomization.yaml
 
diff --git a/hack/secret-creator/create-eaas-secrets.sh b/hack/secret-creator/create-eaas-secrets.sh
index e0df4eb0..9ebe4c93 100755
--- a/hack/secret-creator/create-eaas-secrets.sh
+++ b/hack/secret-creator/create-eaas-secrets.sh
@@ -4,25 +4,20 @@ set -eo pipefail
 main() {
   echo "Setting secrets for EaaS (Environment as a Service)"
 
-  local aws_access_key_id=${1:?"AWS access key id was not provided"}
-  local aws_secret_access_key=${2:?"AWS secret access key was not provided"}
-  local oidc_provider_s3_region=${3:?"OIDC provider S3 region was not provided"}
-  local oidc_provider_s3_bucket=${4:?"OIDC provider S3 bucket was not provided"}
-  local pull_secret_path=${5:?"OpenShift pull secret path was not provided"}
-  local base_domain=${6:?"Route53 base domain was not provided"}
+  local aws_credentials_path=${1:?"AWS credentials path was not provided"}
+  local oidc_provider_s3_region=${2:?"OIDC provider S3 region was not provided"}
+  local oidc_provider_s3_bucket=${3:?"OIDC provider S3 bucket was not provided"}
+  local pull_secret_path=${4:?"OpenShift pull secret path was not provided"}
 
   create_namespace "local-cluster"
   create_namespace "clusters"
   create_oidc_provider_s3_secret \
-    $aws_access_key_id \
-    $aws_secret_access_key \
+    $aws_credentials_path \
     $oidc_provider_s3_region \
     $oidc_provider_s3_bucket
   create_hypershift_credentials \
-    $aws_access_key_id \
-    $aws_secret_access_key \
-    $pull_secret_path \
-    $base_domain
+    $aws_credentials_path \
+    $pull_secret_path
 }
 
 create_namespace() {
@@ -32,29 +27,22 @@ create_namespace() {
 
 create_oidc_provider_s3_secret() {
   echo "Creating hypershift OIDC provider S3 secret"
-  local creds=$(mktemp)
-  echo "[default]" >> $creds
-  echo "aws_access_key_id=$1" >> $creds
-  echo "aws_secret_access_key=$2" >> $creds
   kubectl create secret generic hypershift-operator-oidc-provider-s3-credentials \
-    --from-file=credentials=$creds \
-    --from-literal=region=$3 \
-    --from-literal=bucket=$4 \
+    --from-file=credentials=$1 \
+    --from-literal=region=$2 \
+    --from-literal=bucket=$3 \
     --save-config=true \
     --dry-run=client \
     -n local-cluster \
     -o yaml \
     | kubectl apply -f -
-  rm "$creds"
 }
 
 create_hypershift_credentials() {
   echo "Creating hypershift secret"
   kubectl create secret generic hypershift \
-    --from-literal=aws_access_key_id=$1 \
-    --from-literal=aws_secret_access_key=$2 \
-    --from-file=pullSecret=$3 \
-    --from-literal=baseDomain=$4 \
+    --from-file=aws-credentials=$1 \
+    --from-file=pull-secret=$2 \
     --from-literal=ssh-privatekey="not yet implemented" \
     --from-literal=ssh-publickey="not yet implemented" \
     --save-config=true \ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-90ee9cb7/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
228a229,230
>           - name: hypershiftImageTag
>             value: "4.14"
233,236d234
<           - name: hypershiftImageTag
<             value: "4.16"
<           - name: hypershiftRoleArn
<             value: arn:aws:iam::767397671005:role/eaas-hypershift-cli-role
238c236
<         targetRevision: 0.1.0
---
>         targetRevision: 0.0.4
315,319c313,316
<         aws-credentials: |
<           [default]
<           aws_access_key_id={{ .aws_access_key_id }}
<           aws_secret_access_key={{ .aws_secret_access_key }}
<         pull-secret: '{{ .ocp_pull_secret }}'
---
>         aws_access_key_id: '{{ .aws_access_key_id }}'
>         aws_secret_access_key: '{{ .aws_secret_access_key }}'
>         baseDomain: stage.konfluxeaas.com
>         pullSecret: '{{ .ocp_pull_secret }}'
375c372
<   channel: stable-2.6
---
>   channel: stable-2.5 
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
<h3>2: Development changes from 90ee9cb7 to 27c2d3b8 on Thu Sep 19 14:30:29 2024 </h3>  
 
<details> 
<summary>Git Diff (340 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index 65050ae3..fc809ded 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -45,8 +45,6 @@ spec:
               value: hypershift
             - name: serviceAccount
               value: cluster-provisioner
-            - name: hypershiftImageTag
-              value: "4.14"
             - name: nodePoolReplicas
               value: "3"
       syncPolicy:
diff --git a/components/cluster-as-a-service/development/add-base-domain-param.yaml b/components/cluster-as-a-service/development/add-base-domain-param.yaml
deleted file mode 100644
index d5459a58..00000000
--- a/components/cluster-as-a-service/development/add-base-domain-param.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/source/helm/parameters/-
-  value:
-    name: baseDomain
-    value: eaasdemo.com
diff --git a/components/cluster-as-a-service/development/add-hypershift-params.yaml b/components/cluster-as-a-service/development/add-hypershift-params.yaml
new file mode 100644
index 00000000..5ef8b493
--- /dev/null
+++ b/components/cluster-as-a-service/development/add-hypershift-params.yaml
@@ -0,0 +1,18 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: ""
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: ""
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
new file mode 100644
index 00000000..858f3b13
--- /dev/null
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -0,0 +1,9 @@
+---
+# Workaround for multicluster-engine 2.6 installation status stuck when using a ROSA HCP cluster
+# See https://issues.redhat.com/browse/ACM-13416
+apiVersion: config.open-cluster-management.io/v1alpha1
+kind: KlusterletConfig
+metadata:
+  name: global
+spec:
+  hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg=="
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index d4c4d41a..5bda7a54 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -3,12 +3,29 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - klusterlet-config.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/template/spec/source/targetRevision
+        value: 0.1.0
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/channel
+        value: stable-2.6
+    target:
+      group: operators.coreos.com
+      kind: Subscription
+      name: multicluster-engine
   - path: argocd-rbac.yaml
     target:
       group: argoproj.io
diff --git a/components/cluster-as-a-service/production/add-base-domain-param.yaml b/components/cluster-as-a-service/production/add-hypershift-params.yaml
similarity index 51%
rename from components/cluster-as-a-service/production/add-base-domain-param.yaml
rename to components/cluster-as-a-service/production/add-hypershift-params.yaml
index 70237afc..793d5207 100644
--- a/components/cluster-as-a-service/production/add-base-domain-param.yaml
+++ b/components/cluster-as-a-service/production/add-hypershift-params.yaml
@@ -4,3 +4,9 @@
   value:
     name: baseDomain
     value: prod.konfluxeaas.com
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.14"
diff --git a/components/cluster-as-a-service/production/kustomization.yaml b/components/cluster-as-a-service/production/kustomization.yaml
index 0258ccfc..c82b467d 100644
--- a/components/cluster-as-a-service/production/kustomization.yaml
+++ b/components/cluster-as-a-service/production/kustomization.yaml
@@ -6,8 +6,8 @@ resources:
   - ../../openshift-gitops
   - external-secrets.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
diff --git a/components/cluster-as-a-service/staging/add-base-domain-param.yaml b/components/cluster-as-a-service/staging/add-base-domain-param.yaml
deleted file mode 100644
index e3f8a81f..00000000
--- a/components/cluster-as-a-service/staging/add-base-domain-param.yaml
+++ /dev/null
@@ -1,6 +0,0 @@
----
-- op: add
-  path: /spec/template/spec/source/helm/parameters/-
-  value:
-    name: baseDomain
-    value: stage.konfluxeaas.com
diff --git a/components/cluster-as-a-service/staging/add-hypershift-params.yaml b/components/cluster-as-a-service/staging/add-hypershift-params.yaml
new file mode 100644
index 00000000..f9da369e
--- /dev/null
+++ b/components/cluster-as-a-service/staging/add-hypershift-params.yaml
@@ -0,0 +1,18 @@
+---
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: baseDomain
+    value: stage.konfluxeaas.com
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftImageTag
+    value: "4.16"
+
+- op: add
+  path: /spec/template/spec/source/helm/parameters/-
+  value:
+    name: hypershiftRoleArn
+    value: arn:aws:iam::767397671005:role/eaas-hypershift-cli-role
diff --git a/components/cluster-as-a-service/staging/external-secrets.yaml b/components/cluster-as-a-service/staging/external-secrets.yaml
index b7b1024f..13105883 100644
--- a/components/cluster-as-a-service/staging/external-secrets.yaml
+++ b/components/cluster-as-a-service/staging/external-secrets.yaml
@@ -21,10 +21,11 @@ spec:
     name: hypershift
     template:
       data:
-        aws_access_key_id: "{{ .aws_access_key_id }}"
-        aws_secret_access_key: "{{ .aws_secret_access_key }}"
-        pullSecret: "{{ .ocp_pull_secret }}"
-        baseDomain: stage.konfluxeaas.com
+        aws-credentials: |
+          [default]
+          aws_access_key_id={{ .aws_access_key_id }}
+          aws_secret_access_key={{ .aws_secret_access_key }}
+        pull-secret: "{{ .ocp_pull_secret }}"
         ssh-privatekey: unused
         ssh-publickey: unused
 
diff --git a/components/cluster-as-a-service/staging/kustomization.yaml b/components/cluster-as-a-service/staging/kustomization.yaml
index 0258ccfc..7999773d 100644
--- a/components/cluster-as-a-service/staging/kustomization.yaml
+++ b/components/cluster-as-a-service/staging/kustomization.yaml
@@ -6,8 +6,24 @@ resources:
   - ../../openshift-gitops
   - external-secrets.yaml
 patches:
-  - path: add-base-domain-param.yaml
+  - path: add-hypershift-params.yaml
     target:
       group: argoproj.io
       kind: ApplicationSet
-      version: v1alpha1
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/template/spec/source/targetRevision
+        value: 0.1.0
+    target:
+      group: argoproj.io
+      kind: ApplicationSet
+      name: hypershift-aws-cluster
+  - patch: |
+      - op: replace
+        path: /spec/channel
+        value: stable-2.6
+    target:
+      group: operators.coreos.com
+      kind: Subscription
+      name: multicluster-engine
diff --git a/hack/bootstrap-eaas-cluster.sh b/hack/bootstrap-eaas-cluster.sh
index ef7bd0e4..83f15926 100755
--- a/hack/bootstrap-eaas-cluster.sh
+++ b/hack/bootstrap-eaas-cluster.sh
@@ -5,12 +5,10 @@ declare -r ROOT="${BASH_SOURCE[0]%/*}"
 main() {
     load_global_vars
     "${ROOT}/secret-creator/create-eaas-secrets.sh" \
-      "$EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID" \
-      "$EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY" \
+      "$EAAS_HYPERSHIFT_AWS_CREDENTIALS_PATH" \
       "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION" \
       "$EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET" \
-      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH" \
-      "$EAAS_HYPERSHIFT_BASE_DOMAIN"
+      "$EAAS_HYPERSHIFT_PULL_SECRET_PATH"
 }
 
 load_global_vars() {
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..36f48dde 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -116,9 +116,10 @@ export CI_HELPER_GITHUB_APP_PRIVATE_KEY=
 export CI_HELPER_GITHUB_APP_WEBHOOK_SECRET=
 
 # Environment as a service
-export EAAS_HYPERSHIFT_AWS_ACCESS_KEY_ID=
-export EAAS_HYPERSHIFT_AWS_SECRET_ACCESS_KEY=
+# See https://github.com/konflux-ci/cluster-template-charts/blob/main/README.md#prerequisites for more details
+export EAAS_HYPERSHIFT_AWS_CREDENTIALS_PATH=
 export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_BUCKET=
 export EAAS_HYPERSHIFT_OIDC_PROVIDER_S3_REGION=
 export EAAS_HYPERSHIFT_PULL_SECRET_PATH=
 export EAAS_HYPERSHIFT_BASE_DOMAIN=
+export EAAS_HYPERSHIFT_CLI_ROLE_ARN=
diff --git a/hack/preview.sh b/hack/preview.sh
index c724f440..d4fbb4a1 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -220,6 +220,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${MULTI_ARCH_CONTROLLER_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"multi-platform-controller\")) |=.newTag=\"${MULTI_ARCH_CONTROLLER_IMAGE_TAG}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 [[ -n "${MULTI_ARCH_CONTROLLER_PR_OWNER}" && "${MULTI_ARCH_CONTROLLER_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/multi-platform-controller*\")) |= \"https://github.com/${MULTI_ARCH_CONTROLLER_PR_OWNER}/multi-platform-controller/config/default?ref=${MULTI_ARCH_CONTROLLER_PR_SHA}\"" $ROOT/components/multi-platform-controller/base/kustomization.yaml
 
+[ -n "${EAAS_HYPERSHIFT_BASE_DOMAIN}" ] && yq -i e "(.[] | select(.value.name==\"baseDomain\")).value.value |= \"${EAAS_HYPERSHIFT_BASE_DOMAIN}\"" $ROOT/components/cluster-as-a-service/development/add-hypershift-params.yaml
+[ -n "${EAAS_HYPERSHIFT_CLI_ROLE_ARN}" ] && yq -i e "(.[] | select(.value.name==\"hypershiftRoleArn\")).value.value |= \"${EAAS_HYPERSHIFT_CLI_ROLE_ARN}\"" $ROOT/components/cluster-as-a-service/development/add-hypershift-params.yaml
 
 [[ -n "${PIPELINE_PR_OWNER}" && "${PIPELINE_PR_SHA}" ]] && yq -i e ".resources[] |= sub(\"ref=[^ ]*\"; \"ref=${PIPELINE_PR_SHA}\") | .resources[] |= sub(\"openshift-pipelines\"; \"${PIPELINE_PR_OWNER}\")" $ROOT/components/pipeline-service/development/kustomization.yaml
 
diff --git a/hack/secret-creator/create-eaas-secrets.sh b/hack/secret-creator/create-eaas-secrets.sh
index e0df4eb0..9ebe4c93 100755
--- a/hack/secret-creator/create-eaas-secrets.sh
+++ b/hack/secret-creator/create-eaas-secrets.sh
@@ -4,25 +4,20 @@ set -eo pipefail
 main() {
   echo "Setting secrets for EaaS (Environment as a Service)"
 
-  local aws_access_key_id=${1:?"AWS access key id was not provided"}
-  local aws_secret_access_key=${2:?"AWS secret access key was not provided"}
-  local oidc_provider_s3_region=${3:?"OIDC provider S3 region was not provided"}
-  local oidc_provider_s3_bucket=${4:?"OIDC provider S3 bucket was not provided"}
-  local pull_secret_path=${5:?"OpenShift pull secret path was not provided"}
-  local base_domain=${6:?"Route53 base domain was not provided"}
+  local aws_credentials_path=${1:?"AWS credentials path was not provided"}
+  local oidc_provider_s3_region=${2:?"OIDC provider S3 region was not provided"}
+  local oidc_provider_s3_bucket=${3:?"OIDC provider S3 bucket was not provided"}
+  local pull_secret_path=${4:?"OpenShift pull secret path was not provided"}
 
   create_namespace "local-cluster"
   create_namespace "clusters"
   create_oidc_provider_s3_secret \
-    $aws_access_key_id \
-    $aws_secret_access_key \
+    $aws_credentials_path \
     $oidc_provider_s3_region \
     $oidc_provider_s3_bucket
   create_hypershift_credentials \
-    $aws_access_key_id \
-    $aws_secret_access_key \
-    $pull_secret_path \
-    $base_domain
+    $aws_credentials_path \
+    $pull_secret_path
 }
 
 create_namespace() {
@@ -32,29 +27,22 @@ create_namespace() {
 
 create_oidc_provider_s3_secret() {
   echo "Creating hypershift OIDC provider S3 secret"
-  local creds=$(mktemp)
-  echo "[default]" >> $creds
-  echo "aws_access_key_id=$1" >> $creds
-  echo "aws_secret_access_key=$2" >> $creds
   kubectl create secret generic hypershift-operator-oidc-provider-s3-credentials \
-    --from-file=credentials=$creds \
-    --from-literal=region=$3 \
-    --from-literal=bucket=$4 \
+    --from-file=credentials=$1 \
+    --from-literal=region=$2 \
+    --from-literal=bucket=$3 \
     --save-config=true \
     --dry-run=client \
     -n local-cluster \
     -o yaml \
     | kubectl apply -f -
-  rm "$creds"
 }
 
 create_hypershift_credentials() {
   echo "Creating hypershift secret"
   kubectl create secret generic hypershift \
-    --from-literal=aws_access_key_id=$1 \
-    --from-literal=aws_secret_access_key=$2 \
-    --from-file=pullSecret=$3 \
-    --from-literal=baseDomain=$4 \
+    --from-file=aws-credentials=$1 \
+    --from-file=pull-secret=$2 \
     --from-literal=ssh-privatekey="not yet implemented" \
     --from-literal=ssh-publickey="not yet implemented" \
     --save-config=true \ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-90ee9cb7/development/components/cluster-as-a-service/development/kustomize.out.yaml
159a160,161
>           - name: hypershiftImageTag
>             value: "4.14"
163,167c165
<             value: ""
<           - name: hypershiftImageTag
<             value: "4.16"
<           - name: hypershiftRoleArn
<             value: ""
---
>             value: eaasdemo.com
169c167
<         targetRevision: 0.1.0
---
>         targetRevision: 0.0.4
219,225d216
< apiVersion: config.open-cluster-management.io/v1alpha1
< kind: KlusterletConfig
< metadata:
<   name: global
< spec:
<   hubKubeAPIServerCABundle: LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==
< ---
252c243
<   channel: stable-2.6
---
>   channel: stable-2.5 
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
<h3>3: Production changes from fbcd2dcf to 90ee9cb7 on Thu Sep 19 13:51:50 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 669d31a9..e988c922 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1562,6 +1562,18 @@ spec:
                       requests:
                         cpu: 200m
                         memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 1Gi
+                        cpu: 100m
+                      limits:
+                        memory: 2Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a20129b9..f479daaf 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2050,6 +2050,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 2Gi
+                    requests:
+                      cpu: 100m
+                      memory: 1Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index dce10120..c7667781 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2050,6 +2050,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: 500m
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index 2bd243ef..43c0c1ac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -27,3 +27,4 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: update-tekton-controller-resources.yaml
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
new file mode 100644
index 00000000..408130cc
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -0,0 +1,20 @@
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    options:
+      deployments:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: 500m
+                      limits:
+                        memory: 8Gi 
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
<h3>3: Staging changes from fbcd2dcf to 90ee9cb7 on Thu Sep 19 13:51:50 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 669d31a9..e988c922 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1562,6 +1562,18 @@ spec:
                       requests:
                         cpu: 200m
                         memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 1Gi
+                        cpu: 100m
+                      limits:
+                        memory: 2Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a20129b9..f479daaf 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2050,6 +2050,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 2Gi
+                    requests:
+                      cpu: 100m
+                      memory: 1Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index dce10120..c7667781 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2050,6 +2050,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: 500m
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index 2bd243ef..43c0c1ac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -27,3 +27,4 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: update-tekton-controller-resources.yaml
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
new file mode 100644
index 00000000..408130cc
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -0,0 +1,20 @@
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    options:
+      deployments:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: 500m
+                      limits:
+                        memory: 8Gi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-fbcd2dcf/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2053,2064d2052
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 2Gi
<                     requests:
<                       cpu: 100m
<                       memory: 1Gi
./commit-fbcd2dcf/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2053,2064d2052
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 8Gi
<                     requests:
<                       cpu: 500m
<                       memory: 6Gi 
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
<h3>3: Development changes from fbcd2dcf to 90ee9cb7 on Thu Sep 19 13:51:50 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 669d31a9..e988c922 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1562,6 +1562,18 @@ spec:
                       requests:
                         cpu: 200m
                         memory: 200Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 1Gi
+                        cpu: 100m
+                      limits:
+                        memory: 2Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a20129b9..f479daaf 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2050,6 +2050,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 2Gi
+                    requests:
+                      cpu: 100m
+                      memory: 1Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index dce10120..c7667781 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2050,6 +2050,18 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 8Gi
+                    requests:
+                      cpu: 500m
+                      memory: 6Gi
         tekton-pipelines-remote-resolvers:
           spec:
             replicas: 2
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index 2bd243ef..43c0c1ac 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -27,3 +27,4 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: update-tekton-controller-resources.yaml
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
new file mode 100644
index 00000000..408130cc
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/update-tekton-controller-resources.yaml
@@ -0,0 +1,20 @@
+apiVersion: operator.tekton.dev/v1alpha1
+kind: TektonConfig
+metadata:
+  name: config
+spec:
+  pipeline:
+    options:
+      deployments:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                  - name: tekton-pipelines-controller
+                    resources:
+                      requests:
+                        memory: 6Gi
+                        cpu: 500m
+                      limits:
+                        memory: 8Gi 
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
<h3>4: Production changes from ed51cc05 to fbcd2dcf on Thu Sep 19 13:49:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 8baa9151..6ecf188e 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -15,8 +15,8 @@ spec:
                 clusterDir: ""
           - list:
               elements:
-                - nameNormalized: stone-prod-m01
-                  values.clusterDir: stone-prod-m01
+                - nameNormalized: stone-prd-m01
+                  values.clusterDir: stone-prd-m01
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production/stone-prod-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
similarity index 100%
rename from components/multi-platform-controller/production/stone-prod-m01/kustomization.yaml
rename to components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (2 lines)</summary>  

``` 
./commit-fbcd2dcf/production/components/multi-platform-controller/production: stone-prd-m01
./commit-ed51cc05/production/components/multi-platform-controller/production: stone-prod-m01 
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
<h3>4: Staging changes from ed51cc05 to fbcd2dcf on Thu Sep 19 13:49:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 8baa9151..6ecf188e 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -15,8 +15,8 @@ spec:
                 clusterDir: ""
           - list:
               elements:
-                - nameNormalized: stone-prod-m01
-                  values.clusterDir: stone-prod-m01
+                - nameNormalized: stone-prd-m01
+                  values.clusterDir: stone-prd-m01
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production/stone-prod-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
similarity index 100%
rename from components/multi-platform-controller/production/stone-prod-m01/kustomization.yaml
rename to components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml 
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
<h3>4: Development changes from ed51cc05 to fbcd2dcf on Thu Sep 19 13:49:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
index 8baa9151..6ecf188e 100644
--- a/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/multi-platform-controller/multi-platform-controller.yaml
@@ -15,8 +15,8 @@ spec:
                 clusterDir: ""
           - list:
               elements:
-                - nameNormalized: stone-prod-m01
-                  values.clusterDir: stone-prod-m01
+                - nameNormalized: stone-prd-m01
+                  values.clusterDir: stone-prd-m01
   template:
     metadata:
       name: multi-platform-controller-{{nameNormalized}}
diff --git a/components/multi-platform-controller/production/stone-prod-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
similarity index 100%
rename from components/multi-platform-controller/production/stone-prod-m01/kustomization.yaml
rename to components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-ed51cc05/development/app-of-apps-development.yaml
836,837c836,837
<           - nameNormalized: stone-prd-m01
<             values.clusterDir: stone-prd-m01
---
>           - nameNormalized: stone-prod-m01
>             values.clusterDir: stone-prod-m01 
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
