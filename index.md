# kustomize changes tracked by commits 
### This file generated at Wed Nov  6 00:09:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 138273e9 to b613ab56 on Tue Nov 5 21:34:51 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 3074af46..bbd7641e 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=455d6338dd74183ad591a651649cc17baade7dc3
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=dc703eea96e6409ae545c54e58ff2bf3d745011e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 138273e9 to b613ab56 on Tue Nov 5 21:34:51 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 3074af46..bbd7641e 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=455d6338dd74183ad591a651649cc17baade7dc3
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=dc703eea96e6409ae545c54e58ff2bf3d745011e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 138273e9 to b613ab56 on Tue Nov 5 21:34:51 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 3074af46..bbd7641e 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=455d6338dd74183ad591a651649cc17baade7dc3
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=dc703eea96e6409ae545c54e58ff2bf3d745011e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 7a8ea299 to 138273e9 on Tue Nov 5 18:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 126bb784..14cea452 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1526,7 +1526,7 @@ spec:
             default-timeout-minutes: "120"    
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1544,7 +1544,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e4c13a7d..d6fea7d0 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5627ba4..fd6c3c41 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b025f1b1..fe10f1a0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 9f699ed1..0467fd19 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-7a8ea299/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2002c2002
<             buckets: "8"
---
>             buckets: "4"
2068c2068
<             replicas: 4
---
>             replicas: 2
./commit-7a8ea299/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2002c2002
<             buckets: "8"
---
>             buckets: "4"
2068c2068
<             replicas: 4
---
>             replicas: 2
./commit-7a8ea299/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2002c2002
<             buckets: "8"
---
>             buckets: "4"
2068c2068
<             replicas: 4
---
>             replicas: 2
./commit-7a8ea299/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2002c2002
<             buckets: "8"
---
>             buckets: "4"
2068c2068
<             replicas: 4
---
>             replicas: 2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 7a8ea299 to 138273e9 on Tue Nov 5 18:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 126bb784..14cea452 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1526,7 +1526,7 @@ spec:
             default-timeout-minutes: "120"    
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1544,7 +1544,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e4c13a7d..d6fea7d0 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5627ba4..fd6c3c41 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b025f1b1..fe10f1a0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 9f699ed1..0467fd19 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 7a8ea299 to 138273e9 on Tue Nov 5 18:44:33 2024 </h3>  
 
<details> 
<summary>Git Diff (110 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 126bb784..14cea452 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1526,7 +1526,7 @@ spec:
             default-timeout-minutes: "120"    
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1544,7 +1544,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index e4c13a7d..d6fea7d0 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index b5627ba4..fd6c3c41 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b025f1b1..fe10f1a0 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 9f699ed1..0467fd19 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2001,7 +2001,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2067,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
             template:
               spec:
                 containers: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 11aef01e to 7a8ea299 on Tue Nov 5 18:32:08 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 00335a4f..ba91d581 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1533,7 +1533,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1551,7 +1551,7 @@ spec:
                         memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a9d05754..39a8e643 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2008,7 +2008,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2074,7 +2074,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 3f66da90..0d53bf73 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2008,7 +2008,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2074,7 +2074,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 11aef01e to 7a8ea299 on Tue Nov 5 18:32:08 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 00335a4f..ba91d581 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1533,7 +1533,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1551,7 +1551,7 @@ spec:
                         memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a9d05754..39a8e643 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2008,7 +2008,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2074,7 +2074,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 3f66da90..0d53bf73 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2008,7 +2008,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2074,7 +2074,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-11aef01e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2009c2009
<             buckets: "8"
---
>             buckets: "4"
2075c2075
<             replicas: 4
---
>             replicas: 2
./commit-11aef01e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2009c2009
<             buckets: "8"
---
>             buckets: "4"
2075c2075
<             replicas: 4
---
>             replicas: 2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 11aef01e to 7a8ea299 on Tue Nov 5 18:32:08 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 00335a4f..ba91d581 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1533,7 +1533,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1551,7 +1551,7 @@ spec:
                         memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a9d05754..39a8e643 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2008,7 +2008,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2074,7 +2074,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 3f66da90..0d53bf73 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2008,7 +2008,7 @@ spec:
             default-timeout-minutes: "120"
         config-leader-election-resolvers:
           data:
-            buckets: "4"
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2074,7 +2074,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 2
+            replicas: 4
         tekton-pipelines-webhook:
           spec:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 8c311af3 to 11aef01e on Tue Nov 5 16:45:38 2024 </h3>  
 
<details> 
<summary>Git Diff (115 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 03d6dc4a..126bb784 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1524,6 +1524,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"    
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1541,7 +1544,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c56d5594..e4c13a7d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 62246760..b5627ba4 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index eed46379..b025f1b1 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index cb948f2c..9f699ed1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-8c311af3/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2000,2002d1999
<         config-leader-election-resolvers:
<           data:
<             buckets: "4"
2068c2065
<             replicas: 2
---
>             replicas: 1
./commit-8c311af3/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2000,2002d1999
<         config-leader-election-resolvers:
<           data:
<             buckets: "4"
2068c2065
<             replicas: 2
---
>             replicas: 1
./commit-8c311af3/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2000,2002d1999
<         config-leader-election-resolvers:
<           data:
<             buckets: "4"
2068c2065
<             replicas: 2
---
>             replicas: 1
./commit-8c311af3/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2000,2002d1999
<         config-leader-election-resolvers:
<           data:
<             buckets: "4"
2068c2065
<             replicas: 2
---
>             replicas: 1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 8c311af3 to 11aef01e on Tue Nov 5 16:45:38 2024 </h3>  
 
<details> 
<summary>Git Diff (115 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 03d6dc4a..126bb784 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1524,6 +1524,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"    
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1541,7 +1544,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c56d5594..e4c13a7d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 62246760..b5627ba4 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index eed46379..b025f1b1 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index cb948f2c..9f699ed1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 8c311af3 to 11aef01e on Tue Nov 5 16:45:38 2024 </h3>  
 
<details> 
<summary>Git Diff (115 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 03d6dc4a..126bb784 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1524,6 +1524,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"    
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
@@ -1541,7 +1544,7 @@ spec:
                       memory: 100Mi
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index c56d5594..e4c13a7d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 62246760..b5627ba4 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index eed46379..b025f1b1 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index cb948f2c..9f699ed1 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1999,6 +1999,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "4"
         config-logging:
           data:
             loglevel.controller: info
@@ -2064,7 +2067,7 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
             template:
               spec:
                 containers: 
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
```
 
</details> 
<br> 


</div>
