# kustomize changes tracked by commits 
### This file generated at Fri Dec  6 04:05:10 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 247d757c to 3795fc47 on Thu Dec 5 19:27:35 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index eb0801c1..65b85519 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -kube-api-qps=50
-            - -kube-api-burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 494e6f49..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1232,9 +1232,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index b968a922..f92c41dd 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index c0a445a9..1af449b5 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ce1e059d..1a9129d8 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c2373675..5bbba8fb 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index a2b4e45e..13a07379 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index a6f52ed9..8af51969 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 1ebab2e3..df6c6a65 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1271,9 +1271,6 @@ spec:
             - -completed_run_grace_period
             - 10m
             - -logs_api=true
-            - -kube-api-qps=50
-            - -kube-api-burst=50
-            - -threadiness=32
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7d5b231d..8b3bbc79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1660,9 +1660,6 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4369e958..61aeefc8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1660,9 +1660,6 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-247d757c/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1616a1617,1619
>         - -kube-api-qps=50
>         - -kube-api-burst=50
>         - -threadiness=32
./commit-247d757c/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1616a1617,1619
>         - -kube-api-qps=50
>         - -kube-api-burst=50
>         - -threadiness=32
./commit-247d757c/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1616a1617,1619
>         - -kube-api-qps=50
>         - -kube-api-burst=50
>         - -threadiness=32
./commit-247d757c/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1616a1617,1619
>         - -kube-api-qps=50
>         - -kube-api-burst=50
>         - -threadiness=32 
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
<h3>1: Staging changes from 247d757c to 3795fc47 on Thu Dec 5 19:27:35 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index eb0801c1..65b85519 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -kube-api-qps=50
-            - -kube-api-burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 494e6f49..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1232,9 +1232,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index b968a922..f92c41dd 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index c0a445a9..1af449b5 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ce1e059d..1a9129d8 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c2373675..5bbba8fb 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index a2b4e45e..13a07379 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index a6f52ed9..8af51969 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 1ebab2e3..df6c6a65 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1271,9 +1271,6 @@ spec:
             - -completed_run_grace_period
             - 10m
             - -logs_api=true
-            - -kube-api-qps=50
-            - -kube-api-burst=50
-            - -threadiness=32
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7d5b231d..8b3bbc79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1660,9 +1660,6 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4369e958..61aeefc8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1660,9 +1660,6 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-247d757c/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1658a1659,1661
>         - -kube-api-qps=50
>         - -kube-api-burst=50
>         - -threadiness=32
./commit-247d757c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1658a1659,1661
>         - -kube-api-qps=50
>         - -kube-api-burst=50
>         - -threadiness=32 
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
<h3>1: Development changes from 247d757c to 3795fc47 on Thu Dec 5 19:27:35 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index eb0801c1..65b85519 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -kube-api-qps=50
-            - -kube-api-burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 494e6f49..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1232,9 +1232,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index b968a922..f92c41dd 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index c0a445a9..1af449b5 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index ce1e059d..1a9129d8 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c2373675..5bbba8fb 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index a2b4e45e..13a07379 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index a6f52ed9..8af51969 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1616,9 +1616,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 1ebab2e3..df6c6a65 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1271,9 +1271,6 @@ spec:
             - -completed_run_grace_period
             - 10m
             - -logs_api=true
-            - -kube-api-qps=50
-            - -kube-api-burst=50
-            - -threadiness=32
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7d5b231d..8b3bbc79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1660,9 +1660,6 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4369e958..61aeefc8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1660,9 +1660,6 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
-        - -kube-api-qps=50
-        - -kube-api-burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-247d757c/development/components/pipeline-service/development/kustomize.out.yaml
1484a1485,1487
>         - -kube-api-qps=50
>         - -kube-api-burst=50
>         - -threadiness=32 
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
<h3>2: Production changes from 6c6efc7f to 247d757c on Thu Dec 5 18:58:23 2024 </h3>  
 
<details> 
<summary>Git Diff (278 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 65b85519..eb0801c1 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,6 +1278,9 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
+            - -kube-api-qps=50
+            - -kube-api-burst=50
+            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 82c45934..494e6f49 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1232,6 +1232,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index 77197c5f..b968a922 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1714,8 +1717,8 @@ spec:
                 cpu: 200m
                 memory: 200Mi
               requests:
-                cpu: 10m
-                memory: 10Mi
+                cpu: 200m
+                memory: 200Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
@@ -1999,6 +2003,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2051,10 +2058,10 @@ spec:
                 - name: tekton-pipelines-controller
                   resources:
                     limits:
-                      memory: 8Gi
+                      memory: 12Gi
                     requests:
                       cpu: "1"
-                      memory: 6Gi
+                      memory: 12Gi
                 topologySpreadConstraints:
                 - labelSelector:
                     matchLabels:
@@ -2064,17 +2071,17 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 4
             template:
               spec:
                 containers:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2086,8 +2093,8 @@ spec:
                       cpu: "1"
                       memory: 1Gi
                     requests:
-                      cpu: 200m
-                      memory: 200Mi
+                      cpu: 400m
+                      memory: 1Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -2203,7 +2210,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2218,7 +2225,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 1af449b5..c0a445a9 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index a0cbb22a..ce1e059d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4e6cd249..c2373675 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 8e6454a5..a2b4e45e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 46488583..a6f52ed9 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index df6c6a65..1ebab2e3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1271,6 +1271,9 @@ spec:
             - -completed_run_grace_period
             - 10m
             - -logs_api=true
+            - -kube-api-qps=50
+            - -kube-api-burst=50
+            - -threadiness=32
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8b3bbc79..7d5b231d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1660,6 +1660,9 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 61aeefc8..4369e958 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1660,6 +1660,9 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-6c6efc7f/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1617,1619d1616
<         - -kube-api-qps=50
<         - -kube-api-burst=50
<         - -threadiness=32
1852d1848
<         s3_url: s3://{{ .bucket }}
./commit-6c6efc7f/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1617,1619d1616
<         - -kube-api-qps=50
<         - -kube-api-burst=50
<         - -threadiness=32
1852d1848
<         s3_url: s3://{{ .bucket }}
./commit-6c6efc7f/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1617,1619d1616
<         - -kube-api-qps=50
<         - -kube-api-burst=50
<         - -threadiness=32
1852d1848
<         s3_url: s3://{{ .bucket }}
./commit-6c6efc7f/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1617,1619d1616
<         - -kube-api-qps=50
<         - -kube-api-burst=50
<         - -threadiness=32
1852d1848
<         s3_url: s3://{{ .bucket }} 
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
<h3>2: Staging changes from 6c6efc7f to 247d757c on Thu Dec 5 18:58:23 2024 </h3>  
 
<details> 
<summary>Git Diff (278 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 65b85519..eb0801c1 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,6 +1278,9 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
+            - -kube-api-qps=50
+            - -kube-api-burst=50
+            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 82c45934..494e6f49 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1232,6 +1232,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index 77197c5f..b968a922 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1714,8 +1717,8 @@ spec:
                 cpu: 200m
                 memory: 200Mi
               requests:
-                cpu: 10m
-                memory: 10Mi
+                cpu: 200m
+                memory: 200Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
@@ -1999,6 +2003,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2051,10 +2058,10 @@ spec:
                 - name: tekton-pipelines-controller
                   resources:
                     limits:
-                      memory: 8Gi
+                      memory: 12Gi
                     requests:
                       cpu: "1"
-                      memory: 6Gi
+                      memory: 12Gi
                 topologySpreadConstraints:
                 - labelSelector:
                     matchLabels:
@@ -2064,17 +2071,17 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 4
             template:
               spec:
                 containers:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2086,8 +2093,8 @@ spec:
                       cpu: "1"
                       memory: 1Gi
                     requests:
-                      cpu: 200m
-                      memory: 200Mi
+                      cpu: 400m
+                      memory: 1Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -2203,7 +2210,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2218,7 +2225,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 1af449b5..c0a445a9 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index a0cbb22a..ce1e059d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4e6cd249..c2373675 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 8e6454a5..a2b4e45e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 46488583..a6f52ed9 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index df6c6a65..1ebab2e3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1271,6 +1271,9 @@ spec:
             - -completed_run_grace_period
             - 10m
             - -logs_api=true
+            - -kube-api-qps=50
+            - -kube-api-burst=50
+            - -threadiness=32
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8b3bbc79..7d5b231d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1660,6 +1660,9 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 61aeefc8..4369e958 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1660,6 +1660,9 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-6c6efc7f/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1659,1661d1658
<         - -kube-api-qps=50
<         - -kube-api-burst=50
<         - -threadiness=32
./commit-6c6efc7f/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1659,1661d1658
<         - -kube-api-qps=50
<         - -kube-api-burst=50
<         - -threadiness=32 
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
<h3>2: Development changes from 6c6efc7f to 247d757c on Thu Dec 5 18:58:23 2024 </h3>  
 
<details> 
<summary>Git Diff (278 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 65b85519..eb0801c1 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,6 +1278,9 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
+            - -kube-api-qps=50
+            - -kube-api-burst=50
+            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 82c45934..494e6f49 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1232,6 +1232,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index 77197c5f..b968a922 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1714,8 +1717,8 @@ spec:
                 cpu: 200m
                 memory: 200Mi
               requests:
-                cpu: 10m
-                memory: 10Mi
+                cpu: 200m
+                memory: 200Mi
             securityContext:
               allowPrivilegeEscalation: false
               capabilities:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
@@ -1999,6 +2003,9 @@ spec:
                   value: "konflux-tenants"
                   effect: "NoSchedule"
             default-timeout-minutes: "120"
+        config-leader-election-resolvers:
+          data:
+            buckets: "8"
         config-logging:
           data:
             loglevel.controller: info
@@ -2051,10 +2058,10 @@ spec:
                 - name: tekton-pipelines-controller
                   resources:
                     limits:
-                      memory: 8Gi
+                      memory: 12Gi
                     requests:
                       cpu: "1"
-                      memory: 6Gi
+                      memory: 12Gi
                 topologySpreadConstraints:
                 - labelSelector:
                     matchLabels:
@@ -2064,17 +2071,17 @@ spec:
                   whenUnsatisfiable: DoNotSchedule
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 4
             template:
               spec:
                 containers:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2086,8 +2093,8 @@ spec:
                       cpu: "1"
                       memory: 1Gi
                     requests:
-                      cpu: 200m
-                      memory: 200Mi
+                      cpu: 400m
+                      memory: 1Gi
       disabled: false
       horizontalPodAutoscalers:
         tekton-operator-proxy-webhook:
@@ -2203,7 +2210,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:e4d37f9107e3f772bf63871a71c63dc9c84d6de484c077b98f7b79935a975e64
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2218,7 +2225,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 1af449b5..c0a445a9 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index a0cbb22a..ce1e059d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 4e6cd249..c2373675 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 8e6454a5..a2b4e45e 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 46488583..a6f52ed9 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1616,6 +1616,9 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1848,6 +1851,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index df6c6a65..1ebab2e3 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1271,6 +1271,9 @@ spec:
             - -completed_run_grace_period
             - 10m
             - -logs_api=true
+            - -kube-api-qps=50
+            - -kube-api-burst=50
+            - -threadiness=32
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 8b3bbc79..7d5b231d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1660,6 +1660,9 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 61aeefc8..4369e958 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1660,6 +1660,9 @@ spec:
         - -completed_run_grace_period
         - 10m
         - -logs_api=true
+        - -kube-api-qps=50
+        - -kube-api-burst=50
+        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-6c6efc7f/development/components/pipeline-service/development/kustomize.out.yaml
1485,1487d1484
<         - -kube-api-qps=50
<         - -kube-api-burst=50
<         - -threadiness=32 
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
<h3>3: Production changes from 55177fce to 6c6efc7f on Thu Dec 5 17:33:25 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/production/kflux-prd-rh02/console-url-config-patch.json b/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
index cf982ce2..a3e1b952 100644
--- a/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
+++ b/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
@@ -2,11 +2,11 @@
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
-    "value": "https://TBA/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    "value": "https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
   },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL_TASKLOG",
-    "value": "TBA/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    "value": "https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
   }
 ]
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index e5338056..1af449b5 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -2153,10 +2153,10 @@ spec:
           application-name: Konflux kflux-prd-rh02
           custom-console-name: Konflux kflux-prd-rh02
           custom-console-url: TBA
-          custom-console-url-pr-details: https://TBA/ns/{{ namespace }}/pipelinerun/{{
-            pr }}
-          custom-console-url-pr-tasklog: https://TBA/application-pipeline/ns/{{ namespace
-            }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
index 33fa3291..bf1e4255 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux kflux-prd-rh02 
     custom-console-name: Konflux kflux-prd-rh02
     custom-console-url: TBA
-    custom-console-url-pr-details: https://TBA/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://TBA/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
<h3>3: Staging changes from 55177fce to 6c6efc7f on Thu Dec 5 17:33:25 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/production/kflux-prd-rh02/console-url-config-patch.json b/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
index cf982ce2..a3e1b952 100644
--- a/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
+++ b/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
@@ -2,11 +2,11 @@
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
-    "value": "https://TBA/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    "value": "https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
   },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL_TASKLOG",
-    "value": "TBA/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    "value": "https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
   }
 ]
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index e5338056..1af449b5 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -2153,10 +2153,10 @@ spec:
           application-name: Konflux kflux-prd-rh02
           custom-console-name: Konflux kflux-prd-rh02
           custom-console-url: TBA
-          custom-console-url-pr-details: https://TBA/ns/{{ namespace }}/pipelinerun/{{
-            pr }}
-          custom-console-url-pr-tasklog: https://TBA/application-pipeline/ns/{{ namespace
-            }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
index 33fa3291..bf1e4255 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux kflux-prd-rh02 
     custom-console-name: Konflux kflux-prd-rh02
     custom-console-url: TBA
-    custom-console-url-pr-details: https://TBA/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://TBA/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
<h3>3: Development changes from 55177fce to 6c6efc7f on Thu Dec 5 17:33:25 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/integration/production/kflux-prd-rh02/console-url-config-patch.json b/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
index cf982ce2..a3e1b952 100644
--- a/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
+++ b/components/integration/production/kflux-prd-rh02/console-url-config-patch.json
@@ -2,11 +2,11 @@
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
-    "value": "https://TBA/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
+    "value": "https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
   },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL_TASKLOG",
-    "value": "TBA/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
+    "value": "https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
   }
 ]
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index e5338056..1af449b5 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -2153,10 +2153,10 @@ spec:
           application-name: Konflux kflux-prd-rh02
           custom-console-name: Konflux kflux-prd-rh02
           custom-console-url: TBA
-          custom-console-url-pr-details: https://TBA/ns/{{ namespace }}/pipelinerun/{{
-            pr }}
-          custom-console-url-pr-tasklog: https://TBA/application-pipeline/ns/{{ namespace
-            }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{
+            namespace }}/pipelinerun/{{ pr }}
+          custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{
+            namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
index 33fa3291..bf1e4255 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/resources/update-tekton-config-pac.yaml
@@ -5,5 +5,5 @@
     application-name: Konflux kflux-prd-rh02 
     custom-console-name: Konflux kflux-prd-rh02
     custom-console-url: TBA
-    custom-console-url-pr-details: https://TBA/ns/{{ namespace }}/pipelinerun/{{ pr }}
-    custom-console-url-pr-tasklog: https://TBA/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+    custom-console-url-pr-details: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/ns/{{ namespace }}/pipelinerun/{{ pr }}
+    custom-console-url-pr-tasklog: https://konflux-ui.apps.kflux-prd-rh02.0fk9.p1.openshiftapps.com/application-pipeline/ns/{{ namespace }}/pipelinerun/{{ pr }}/logs/{{ task }} 
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
<h3>4: Production changes from faa47379 to 55177fce on Thu Dec 5 17:02:51 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index b74a704a..c856a75e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      additional-params:
+      - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (38 lines)</summary>  

``` 
./commit-faa47379/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439,441c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
<       additional-params:
<       - build-platforms
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
445c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
447c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
./commit-faa47379/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439,441c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
<       additional-params:
<       - build-platforms
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
445c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
447c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b 
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
<h3>4: Staging changes from faa47379 to 55177fce on Thu Dec 5 17:02:51 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index b74a704a..c856a75e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      additional-params:
+      - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-faa47379/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439,441c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
<       additional-params:
<       - build-platforms
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
445c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
447c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b 
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
<h3>4: Development changes from faa47379 to 55177fce on Thu Dec 5 17:02:51 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index b74a704a..c856a75e 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,12 +8,14 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
+      additional-params:
+      - build-platforms
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
       additional-params:
       - build-platforms 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-faa47379/development/components/build-service/development/kustomize.out.yaml
439,441c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:d550bc5f4610fe09081d2c177bf4aef64775a66a
<       additional-params:
<       - build-platforms
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:a338892bcedb1044a0494ee8f3c73522c19db02b
443c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:a338892bcedb1044a0494ee8f3c73522c19db02b
445c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b
447c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:d550bc5f4610fe09081d2c177bf4aef64775a66a
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:a338892bcedb1044a0494ee8f3c73522c19db02b 
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
