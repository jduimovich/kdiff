# kustomize changes tracked by commits 
### This file generated at Mon Dec  9 16:13:51 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1e5062b7 to afe65668 on Mon Dec 9 15:48:09 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index ba0120b3..deac35e3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ffa4ddf4..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1141,9 +1141,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index cec1c743..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 24593781..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1556,9 +1556,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 95fa05c4..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a2ee3e24..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 62eb0951..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 02437490..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bd45c294..52917d98 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1270,9 +1270,6 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b6199b05..ff60deed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7c36081b..26b32cb8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-1e5062b7/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1525a1526,1528
>         - -qps=50
>         - -burst=50
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
<h3>1: Staging changes from 1e5062b7 to afe65668 on Mon Dec 9 15:48:09 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index ba0120b3..deac35e3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ffa4ddf4..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1141,9 +1141,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index cec1c743..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 24593781..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1556,9 +1556,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 95fa05c4..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a2ee3e24..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 62eb0951..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 02437490..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bd45c294..52917d98 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1270,9 +1270,6 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b6199b05..ff60deed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7c36081b..26b32cb8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-1e5062b7/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1657a1658,1660
>         - -qps=50
>         - -burst=50
>         - -threadiness=32
./commit-1e5062b7/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1657a1658,1660
>         - -qps=50
>         - -burst=50
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
<h3>1: Development changes from 1e5062b7 to afe65668 on Mon Dec 9 15:48:09 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index ba0120b3..deac35e3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1278,9 +1278,6 @@ spec:
             - -completed_run_grace_period=2h
             - -store_deadline=1m
             - -forward_buffer=1m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index ffa4ddf4..0ded61fe 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1141,9 +1141,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
index cec1c743..83939f53 100644
--- a/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
+++ b/components/pipeline-service/production/kflux-ocp-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
index 24593781..84a4b362 100644
--- a/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
+++ b/components/pipeline-service/production/kflux-prd-rh02/deploy.yaml
@@ -1556,9 +1556,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 95fa05c4..d9c149d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a2ee3e24..6678afa2 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 62eb0951..a98bf9e6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 02437490..6d1df73f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1525,9 +1525,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bd45c294..52917d98 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1270,9 +1270,6 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
-            - -qps=50
-            - -burst=50
-            - -threadiness=32
             - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index b6199b05..ff60deed 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7c36081b..26b32cb8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1659,9 +1659,6 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
-        - -qps=50
-        - -burst=50
-        - -threadiness=32
         - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-1e5062b7/development/components/pipeline-service/development/kustomize.out.yaml
1484a1485,1487
>         - -qps=50
>         - -burst=50
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
<h3>2: Production changes from 97c6b109 to 1e5062b7 on Mon Dec 9 15:43:09 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
index 64a5fd6c..330d08db 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -5,6 +5,7 @@ metadata:
 rules:
   - verbs:
       - get
+      - list
     apiGroups:
       - ''
     resources: 
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
<h3>2: Staging changes from 97c6b109 to 1e5062b7 on Mon Dec 9 15:43:09 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
index 64a5fd6c..330d08db 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -5,6 +5,7 @@ metadata:
 rules:
   - verbs:
       - get
+      - list
     apiGroups:
       - ''
     resources: 
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
<h3>2: Development changes from 97c6b109 to 1e5062b7 on Mon Dec 9 15:43:09 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
index 64a5fd6c..330d08db 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/appstudio-pipelines-runner.yaml
@@ -5,6 +5,7 @@ metadata:
 rules:
   - verbs:
       - get
+      - list
     apiGroups:
       - ''
     resources: 
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
<h3>3: Production changes from e7c41a03 to 97c6b109 on Mon Dec 9 14:32:09 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 86488ceb..266eb43b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,8 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64\
+    linux-extra-fast/amd64,\
+    linux/s390x\
     "
   instance-tag: rhtap-prod
 
@@ -452,53 +453,53 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  host.sysz-rhtap-prod-1.address: "169.63.187.167"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "1"
-
-  host.sysz-rhtap-prod-2.address: "169.63.183.95"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "1"
-
-  host.sysz-rhtap-prod-3.address: "169.63.183.96"
-  host.sysz-rhtap-prod-3.platform: "linux/s390x"
-  host.sysz-rhtap-prod-3.user: "root"
-  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-3.concurrency: "1"
-
-  host.sysz-rhtap-prod-4.address: "169.59.188.187"
-  host.sysz-rhtap-prod-4.platform: "linux/s390x"
-  host.sysz-rhtap-prod-4.user: "root"
-  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-4.concurrency: "1"
-
-  host.sysz-rhtap-prod-5.address: "169.59.164.137"
-  host.sysz-rhtap-prod-5.platform: "linux/s390x"
-  host.sysz-rhtap-prod-5.user: "root"
-  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-5.concurrency: "1"
-
-  host.sysz-rhtap-prod-6.address: "150.240.2.156"
-  host.sysz-rhtap-prod-6.platform: "linux/s390x"
-  host.sysz-rhtap-prod-6.user: "root"
-  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-6.concurrency: "1"
-
-  host.sysz-rhtap-prod-7.address: "169.59.164.134"
-  host.sysz-rhtap-prod-7.platform: "linux/s390x"
-  host.sysz-rhtap-prod-7.user: "root"
-  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-7.concurrency: "1"
-
-  host.sysz-rhtap-prod-8.address: "150.240.0.18"
-  host.sysz-rhtap-prod-8.platform: "linux/s390x"
-  host.sysz-rhtap-prod-8.user: "root"
-  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-8.concurrency: "1"
+  # host.sysz-rhtap-prod-1.address: "169.63.187.167"
+  # host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-1.user: "root"
+  # host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-1.concurrency: "1"
+
+  # host.sysz-rhtap-prod-2.address: "169.63.183.95"
+  # host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-2.user: "root"
+  # host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-2.concurrency: "1"
+
+  # host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  # host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-3.user: "root"
+  # host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-3.concurrency: "1"
+
+  # host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  # host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-4.user: "root"
+  # host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-4.concurrency: "1"
+
+  # host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  # host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-5.user: "root"
+  # host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-5.concurrency: "1"
+
+  # host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  # host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-6.user: "root"
+  # host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-6.concurrency: "1"
+
+  # host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  # host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-7.user: "root"
+  # host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-7.concurrency: "1"
+
+  # host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  # host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-8.user: "root"
+  # host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-8.concurrency: "1"
 
   # host.sysz-rhtap-prod-9.address: "169.63.184.30"
   # host.sysz-rhtap-prod-9.platform: "linux/s390x"
@@ -512,18 +513,18 @@ data:
   # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
   # host.sysz-rhtap-prod-10.concurrency: "2"
 
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-4x16"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-4x16"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
 
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (59 lines)</summary>  

``` 
./commit-e7c41a03/production/components/multi-platform-controller/production/kustomize.out.yaml
224c224
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
615,626d614
<   dynamic.linux-s390x.image-id: r014-96daa951-6026-4112-95b1-87e86e82fcf3
<   dynamic.linux-s390x.key: konflux-s390x-root
<   dynamic.linux-s390x.max-instances: "50"
<   dynamic.linux-s390x.private-ip: "true"
<   dynamic.linux-s390x.profile: bz2-4x16
<   dynamic.linux-s390x.region: us-east-2
<   dynamic.linux-s390x.secret: public-prod-ibm-api-key
<   dynamic.linux-s390x.ssh-secret: ibm-production-s390x-ssh-key
<   dynamic.linux-s390x.subnet: konflux-ext-prod-1
<   dynamic.linux-s390x.type: ibmz
<   dynamic.linux-s390x.url: https://us-east.iaas.cloud.ibm.com/v1
<   dynamic.linux-s390x.vpc: us-east-default-vpc
676a665,704
>   host.sysz-rhtap-prod-1.address: 169.63.187.167
>   host.sysz-rhtap-prod-1.concurrency: "1"
>   host.sysz-rhtap-prod-1.platform: linux/s390x
>   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-1.user: root
>   host.sysz-rhtap-prod-2.address: 169.63.183.95
>   host.sysz-rhtap-prod-2.concurrency: "1"
>   host.sysz-rhtap-prod-2.platform: linux/s390x
>   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-2.user: root
>   host.sysz-rhtap-prod-3.address: 169.63.183.96
>   host.sysz-rhtap-prod-3.concurrency: "1"
>   host.sysz-rhtap-prod-3.platform: linux/s390x
>   host.sysz-rhtap-prod-3.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-3.user: root
>   host.sysz-rhtap-prod-4.address: 169.59.188.187
>   host.sysz-rhtap-prod-4.concurrency: "1"
>   host.sysz-rhtap-prod-4.platform: linux/s390x
>   host.sysz-rhtap-prod-4.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-4.user: root
>   host.sysz-rhtap-prod-5.address: 169.59.164.137
>   host.sysz-rhtap-prod-5.concurrency: "1"
>   host.sysz-rhtap-prod-5.platform: linux/s390x
>   host.sysz-rhtap-prod-5.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-5.user: root
>   host.sysz-rhtap-prod-6.address: 150.240.2.156
>   host.sysz-rhtap-prod-6.concurrency: "1"
>   host.sysz-rhtap-prod-6.platform: linux/s390x
>   host.sysz-rhtap-prod-6.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-6.user: root
>   host.sysz-rhtap-prod-7.address: 169.59.164.134
>   host.sysz-rhtap-prod-7.concurrency: "1"
>   host.sysz-rhtap-prod-7.platform: linux/s390x
>   host.sysz-rhtap-prod-7.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-7.user: root
>   host.sysz-rhtap-prod-8.address: 150.240.0.18
>   host.sysz-rhtap-prod-8.concurrency: "1"
>   host.sysz-rhtap-prod-8.platform: linux/s390x
>   host.sysz-rhtap-prod-8.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-8.user: root 
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
<h3>3: Staging changes from e7c41a03 to 97c6b109 on Mon Dec 9 14:32:09 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 86488ceb..266eb43b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,8 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64\
+    linux-extra-fast/amd64,\
+    linux/s390x\
     "
   instance-tag: rhtap-prod
 
@@ -452,53 +453,53 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  host.sysz-rhtap-prod-1.address: "169.63.187.167"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "1"
-
-  host.sysz-rhtap-prod-2.address: "169.63.183.95"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "1"
-
-  host.sysz-rhtap-prod-3.address: "169.63.183.96"
-  host.sysz-rhtap-prod-3.platform: "linux/s390x"
-  host.sysz-rhtap-prod-3.user: "root"
-  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-3.concurrency: "1"
-
-  host.sysz-rhtap-prod-4.address: "169.59.188.187"
-  host.sysz-rhtap-prod-4.platform: "linux/s390x"
-  host.sysz-rhtap-prod-4.user: "root"
-  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-4.concurrency: "1"
-
-  host.sysz-rhtap-prod-5.address: "169.59.164.137"
-  host.sysz-rhtap-prod-5.platform: "linux/s390x"
-  host.sysz-rhtap-prod-5.user: "root"
-  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-5.concurrency: "1"
-
-  host.sysz-rhtap-prod-6.address: "150.240.2.156"
-  host.sysz-rhtap-prod-6.platform: "linux/s390x"
-  host.sysz-rhtap-prod-6.user: "root"
-  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-6.concurrency: "1"
-
-  host.sysz-rhtap-prod-7.address: "169.59.164.134"
-  host.sysz-rhtap-prod-7.platform: "linux/s390x"
-  host.sysz-rhtap-prod-7.user: "root"
-  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-7.concurrency: "1"
-
-  host.sysz-rhtap-prod-8.address: "150.240.0.18"
-  host.sysz-rhtap-prod-8.platform: "linux/s390x"
-  host.sysz-rhtap-prod-8.user: "root"
-  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-8.concurrency: "1"
+  # host.sysz-rhtap-prod-1.address: "169.63.187.167"
+  # host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-1.user: "root"
+  # host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-1.concurrency: "1"
+
+  # host.sysz-rhtap-prod-2.address: "169.63.183.95"
+  # host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-2.user: "root"
+  # host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-2.concurrency: "1"
+
+  # host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  # host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-3.user: "root"
+  # host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-3.concurrency: "1"
+
+  # host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  # host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-4.user: "root"
+  # host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-4.concurrency: "1"
+
+  # host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  # host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-5.user: "root"
+  # host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-5.concurrency: "1"
+
+  # host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  # host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-6.user: "root"
+  # host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-6.concurrency: "1"
+
+  # host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  # host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-7.user: "root"
+  # host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-7.concurrency: "1"
+
+  # host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  # host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-8.user: "root"
+  # host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-8.concurrency: "1"
 
   # host.sysz-rhtap-prod-9.address: "169.63.184.30"
   # host.sysz-rhtap-prod-9.platform: "linux/s390x"
@@ -512,18 +513,18 @@ data:
   # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
   # host.sysz-rhtap-prod-10.concurrency: "2"
 
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-4x16"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-4x16"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
 
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws 
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
<h3>3: Development changes from e7c41a03 to 97c6b109 on Mon Dec 9 14:32:09 2024 </h3>  
 
<details> 
<summary>Git Diff (146 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 86488ceb..266eb43b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,7 +36,8 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64\
+    linux-extra-fast/amd64,\
+    linux/s390x\
     "
   instance-tag: rhtap-prod
 
@@ -452,53 +453,53 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  host.sysz-rhtap-prod-1.address: "169.63.187.167"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "1"
-
-  host.sysz-rhtap-prod-2.address: "169.63.183.95"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "1"
-
-  host.sysz-rhtap-prod-3.address: "169.63.183.96"
-  host.sysz-rhtap-prod-3.platform: "linux/s390x"
-  host.sysz-rhtap-prod-3.user: "root"
-  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-3.concurrency: "1"
-
-  host.sysz-rhtap-prod-4.address: "169.59.188.187"
-  host.sysz-rhtap-prod-4.platform: "linux/s390x"
-  host.sysz-rhtap-prod-4.user: "root"
-  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-4.concurrency: "1"
-
-  host.sysz-rhtap-prod-5.address: "169.59.164.137"
-  host.sysz-rhtap-prod-5.platform: "linux/s390x"
-  host.sysz-rhtap-prod-5.user: "root"
-  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-5.concurrency: "1"
-
-  host.sysz-rhtap-prod-6.address: "150.240.2.156"
-  host.sysz-rhtap-prod-6.platform: "linux/s390x"
-  host.sysz-rhtap-prod-6.user: "root"
-  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-6.concurrency: "1"
-
-  host.sysz-rhtap-prod-7.address: "169.59.164.134"
-  host.sysz-rhtap-prod-7.platform: "linux/s390x"
-  host.sysz-rhtap-prod-7.user: "root"
-  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-7.concurrency: "1"
-
-  host.sysz-rhtap-prod-8.address: "150.240.0.18"
-  host.sysz-rhtap-prod-8.platform: "linux/s390x"
-  host.sysz-rhtap-prod-8.user: "root"
-  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-8.concurrency: "1"
+  # host.sysz-rhtap-prod-1.address: "169.63.187.167"
+  # host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-1.user: "root"
+  # host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-1.concurrency: "1"
+
+  # host.sysz-rhtap-prod-2.address: "169.63.183.95"
+  # host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-2.user: "root"
+  # host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-2.concurrency: "1"
+
+  # host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  # host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-3.user: "root"
+  # host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-3.concurrency: "1"
+
+  # host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  # host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-4.user: "root"
+  # host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-4.concurrency: "1"
+
+  # host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  # host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-5.user: "root"
+  # host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-5.concurrency: "1"
+
+  # host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  # host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-6.user: "root"
+  # host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-6.concurrency: "1"
+
+  # host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  # host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-7.user: "root"
+  # host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-7.concurrency: "1"
+
+  # host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  # host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-8.user: "root"
+  # host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-8.concurrency: "1"
 
   # host.sysz-rhtap-prod-9.address: "169.63.184.30"
   # host.sysz-rhtap-prod-9.platform: "linux/s390x"
@@ -512,18 +513,18 @@ data:
   # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
   # host.sysz-rhtap-prod-10.concurrency: "2"
 
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-4x16"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "true"
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-4x16"
+  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.private-ip: "true"
 
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws 
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
<h3>4: Production changes from 9c0fdcd0 to e7c41a03 on Mon Dec 9 14:06:45 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index db721ba0..ba0120b3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1628,9 +1628,6 @@ spec:
                       requests:
                         cpu: 100m
                         memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 2
         tekton-pipelines-webhook:
           spec:
             template:
@@ -1681,12 +1678,13 @@ spec:
                 type: Resource
             minReplicas: 2
     performance:
-      buckets: 4
+      buckets: 2
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+      statefulset-ordinals: true
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 98c69003..bd45c294 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1525,9 +1525,6 @@ spec:
                       requests:
                         cpu: 100m
                         memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -1541,6 +1538,7 @@ spec:
                       requests:
                         cpu: 400m
                         memory: 1Gi
+      statefusets:
         tekton-pipelines-controller:
           spec:
             template:
@@ -1597,12 +1595,13 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
       threads-per-controller: 32
+      statefulset-ordinals: true
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b77d1b7..b6199b05 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2207,28 +2207,6 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
-        tekton-pipelines-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: tekton-pipelines-controller
-                  resources:
-                    limits:
-                      memory: 12Gi
-                    requests:
-                      cpu: "1"
-                      memory: 12Gi
-                topologySpreadConstraints:
-                - labelSelector:
-                    matchLabels:
-                      app: tekton-pipelines-controller
-                  maxSkew: 1
-                  topologyKey: topology.kubernetes.io/zone
-                  whenUnsatisfiable: DoNotSchedule
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2278,12 +2256,33 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
+      statefusets:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 12Gi
+                    requests:
+                      cpu: "1"
+                      memory: 12Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
+      statefulset-ordinals: true
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2cfc98e8..7c36081b 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2219,16 +2219,6 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
-                topologySpreadConstraints:
-                - labelSelector:
-                    matchLabels:
-                      app: tekton-pipelines-controller
-                  maxSkew: 1
-                  topologyKey: topology.kubernetes.io/zone
-                  whenUnsatisfiable: DoNotSchedule
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2278,12 +2268,33 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
+      statefusets:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 12Gi
+                    requests:
+                      cpu: "1"
+                      memory: 12Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
+      statefulset-ordinals: true
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 9c0fdcd0 to e7c41a03 on Mon Dec 9 14:06:45 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index db721ba0..ba0120b3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1628,9 +1628,6 @@ spec:
                       requests:
                         cpu: 100m
                         memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 2
         tekton-pipelines-webhook:
           spec:
             template:
@@ -1681,12 +1678,13 @@ spec:
                 type: Resource
             minReplicas: 2
     performance:
-      buckets: 4
+      buckets: 2
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+      statefulset-ordinals: true
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 98c69003..bd45c294 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1525,9 +1525,6 @@ spec:
                       requests:
                         cpu: 100m
                         memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -1541,6 +1538,7 @@ spec:
                       requests:
                         cpu: 400m
                         memory: 1Gi
+      statefusets:
         tekton-pipelines-controller:
           spec:
             template:
@@ -1597,12 +1595,13 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
       threads-per-controller: 32
+      statefulset-ordinals: true
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b77d1b7..b6199b05 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2207,28 +2207,6 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
-        tekton-pipelines-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: tekton-pipelines-controller
-                  resources:
-                    limits:
-                      memory: 12Gi
-                    requests:
-                      cpu: "1"
-                      memory: 12Gi
-                topologySpreadConstraints:
-                - labelSelector:
-                    matchLabels:
-                      app: tekton-pipelines-controller
-                  maxSkew: 1
-                  topologyKey: topology.kubernetes.io/zone
-                  whenUnsatisfiable: DoNotSchedule
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2278,12 +2256,33 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
+      statefusets:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 12Gi
+                    requests:
+                      cpu: "1"
+                      memory: 12Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
+      statefulset-ordinals: true
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2cfc98e8..7c36081b 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2219,16 +2219,6 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
-                topologySpreadConstraints:
-                - labelSelector:
-                    matchLabels:
-                      app: tekton-pipelines-controller
-                  maxSkew: 1
-                  topologyKey: topology.kubernetes.io/zone
-                  whenUnsatisfiable: DoNotSchedule
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2278,12 +2268,33 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
+      statefusets:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 12Gi
+                    requests:
+                      cpu: "1"
+                      memory: 12Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
+      statefulset-ordinals: true
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (90 lines)</summary>  

``` 
./commit-9c0fdcd0/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2205a2206,2227
>         tekton-pipelines-controller:
>           spec:
>             template:
>               spec:
>                 containers:
>                 - name: tekton-pipelines-controller
>                   resources:
>                     limits:
>                       memory: 12Gi
>                     requests:
>                       cpu: "1"
>                       memory: 12Gi
>                 topologySpreadConstraints:
>                 - labelSelector:
>                     matchLabels:
>                       app: tekton-pipelines-controller
>                   maxSkew: 1
>                   topologyKey: topology.kubernetes.io/zone
>                   whenUnsatisfiable: DoNotSchedule
>         tekton-pipelines-remote-resolvers:
>           spec:
>             replicas: 4
2255,2274d2276
<       statefusets:
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 12Gi
<                     requests:
<                       cpu: "1"
<                       memory: 12Gi
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2276c2278
<       buckets: 4
---
>       buckets: 8
2281d2282
<       statefulset-ordinals: true
./commit-9c0fdcd0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2217a2218,2227
>                 topologySpreadConstraints:
>                 - labelSelector:
>                     matchLabels:
>                       app: tekton-pipelines-controller
>                   maxSkew: 1
>                   topologyKey: topology.kubernetes.io/zone
>                   whenUnsatisfiable: DoNotSchedule
>         tekton-pipelines-remote-resolvers:
>           spec:
>             replicas: 4
2267,2286d2276
<       statefusets:
<         tekton-pipelines-controller:
<           spec:
<             template:
<               spec:
<                 containers:
<                 - name: tekton-pipelines-controller
<                   resources:
<                     limits:
<                       memory: 12Gi
<                     requests:
<                       cpu: "1"
<                       memory: 12Gi
<                 topologySpreadConstraints:
<                 - labelSelector:
<                     matchLabels:
<                       app: tekton-pipelines-controller
<                   maxSkew: 1
<                   topologyKey: topology.kubernetes.io/zone
<                   whenUnsatisfiable: DoNotSchedule
2288c2278
<       buckets: 4
---
>       buckets: 8
2293d2282
<       statefulset-ordinals: true 
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
<h3>4: Development changes from 9c0fdcd0 to e7c41a03 on Mon Dec 9 14:06:45 2024 </h3>  
 
<details> 
<summary>Git Diff (190 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index db721ba0..ba0120b3 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1628,9 +1628,6 @@ spec:
                       requests:
                         cpu: 100m
                         memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 2
         tekton-pipelines-webhook:
           spec:
             template:
@@ -1681,12 +1678,13 @@ spec:
                 type: Resource
             minReplicas: 2
     performance:
-      buckets: 4
+      buckets: 2
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
+      statefulset-ordinals: true
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 98c69003..bd45c294 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1525,9 +1525,6 @@ spec:
                       requests:
                         cpu: 100m
                         memory: 100Mi
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -1541,6 +1538,7 @@ spec:
                       requests:
                         cpu: 400m
                         memory: 1Gi
+      statefusets:
         tekton-pipelines-controller:
           spec:
             template:
@@ -1597,12 +1595,13 @@ spec:
                 type: Resource
             minReplicas: 6
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
       threads-per-controller: 32
+      statefulset-ordinals: true
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b77d1b7..b6199b05 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2207,28 +2207,6 @@ spec:
                     requests:
                       cpu: 100m
                       memory: 100Mi
-        tekton-pipelines-controller:
-          spec:
-            template:
-              spec:
-                containers:
-                - name: tekton-pipelines-controller
-                  resources:
-                    limits:
-                      memory: 12Gi
-                    requests:
-                      cpu: "1"
-                      memory: 12Gi
-                topologySpreadConstraints:
-                - labelSelector:
-                    matchLabels:
-                      app: tekton-pipelines-controller
-                  maxSkew: 1
-                  topologyKey: topology.kubernetes.io/zone
-                  whenUnsatisfiable: DoNotSchedule
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2278,12 +2256,33 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
+      statefusets:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 12Gi
+                    requests:
+                      cpu: "1"
+                      memory: 12Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
+      statefulset-ordinals: true
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 2cfc98e8..7c36081b 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2219,16 +2219,6 @@ spec:
                     requests:
                       cpu: "1"
                       memory: 6Gi
-                topologySpreadConstraints:
-                - labelSelector:
-                    matchLabels:
-                      app: tekton-pipelines-controller
-                  maxSkew: 1
-                  topologyKey: topology.kubernetes.io/zone
-                  whenUnsatisfiable: DoNotSchedule
-        tekton-pipelines-remote-resolvers:
-          spec:
-            replicas: 4
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2278,12 +2268,33 @@ spec:
                   type: Utilization
               type: Resource
             minReplicas: 6
+      statefusets:
+        tekton-pipelines-controller:
+          spec:
+            template:
+              spec:
+                containers:
+                - name: tekton-pipelines-controller
+                  resources:
+                    limits:
+                      memory: 12Gi
+                    requests:
+                      cpu: "1"
+                      memory: 12Gi
+                topologySpreadConstraints:
+                - labelSelector:
+                    matchLabels:
+                      app: tekton-pipelines-controller
+                  maxSkew: 1
+                  topologyKey: topology.kubernetes.io/zone
+                  whenUnsatisfiable: DoNotSchedule
     performance:
-      buckets: 8
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
       replicas: 4
+      statefulset-ordinals: true
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-9c0fdcd0/development/components/pipeline-service/development/kustomize.out.yaml
2050a2051,2053
>         tekton-pipelines-remote-resolvers:
>           spec:
>             replicas: 2
2101c2104
<       buckets: 2
---
>       buckets: 4
2106d2108
<       statefulset-ordinals: true 
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
