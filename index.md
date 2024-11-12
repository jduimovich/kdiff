# kustomize changes tracked by commits 
### This file generated at Tue Nov 12 16:07:18 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c914a256 to fd032668 on Tue Nov 12 12:25:30 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 981d296c..72d36e5b 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1330,8 +1330,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 9d84fcd0..eff71022 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ac0b5fa8..378915eb 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 15077e19..103106f7 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index ac4f3937..c849f373 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index d836487f..63d7bddb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1333,8 +1333,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c1b66858..764213ca 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1717,8 +1717,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4911ed5c..841823d9 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1717,8 +1717,8 @@ spec:
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-c914a256/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1715,1716c1715,1716
<                 cpu: 200m
<                 memory: 200Mi
---
>                 cpu: 10m
>                 memory: 10Mi
./commit-c914a256/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1715,1716c1715,1716
<                 cpu: 200m
<                 memory: 200Mi
---
>                 cpu: 10m
>                 memory: 10Mi
./commit-c914a256/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1715,1716c1715,1716
<                 cpu: 200m
<                 memory: 200Mi
---
>                 cpu: 10m
>                 memory: 10Mi
./commit-c914a256/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1715,1716c1715,1716
<                 cpu: 200m
<                 memory: 200Mi
---
>                 cpu: 10m
>                 memory: 10Mi 
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
<h3>1: Staging changes from c914a256 to fd032668 on Tue Nov 12 12:25:30 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 981d296c..72d36e5b 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1330,8 +1330,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 9d84fcd0..eff71022 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ac0b5fa8..378915eb 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 15077e19..103106f7 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index ac4f3937..c849f373 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index d836487f..63d7bddb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1333,8 +1333,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c1b66858..764213ca 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1717,8 +1717,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4911ed5c..841823d9 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1717,8 +1717,8 @@ spec:
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-c914a256/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1718,1719c1718,1719
<                 cpu: 200m
<                 memory: 200Mi
---
>                 cpu: 10m
>                 memory: 10Mi
./commit-c914a256/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1718,1719c1718,1719
<                 cpu: 200m
<                 memory: 200Mi
---
>                 cpu: 10m
>                 memory: 10Mi 
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
<h3>1: Development changes from c914a256 to fd032668 on Tue Nov 12 12:25:30 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 981d296c..72d36e5b 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1330,8 +1330,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 9d84fcd0..eff71022 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ac0b5fa8..378915eb 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 15077e19..103106f7 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index ac4f3937..c849f373 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1714,8 +1714,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index d836487f..63d7bddb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1333,8 +1333,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c1b66858..764213ca 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1717,8 +1717,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 4911ed5c..841823d9 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1717,8 +1717,8 @@ spec:
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
<h3>2: Production changes from a20aee4b to c914a256 on Tue Nov 12 12:22:46 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 8ee1a32e..981d296c 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1576,10 +1576,10 @@ spec:
                   - name: tekton-pipelines-controller
                     resources:
                       requests:
-                        memory: 6Gi
+                        memory: 12Gi
                         cpu: "1"
                       limits:
-                        memory: 8Gi
+                        memory: 12Gi
                 topologySpreadConstraints:
                   - maxSkew: 1
                     topologyKey: topology.kubernetes.io/zone
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4a963757..9d84fcd0 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9d21ed2b..ac0b5fa8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 182619f6..15077e19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index d67cd93c..ac4f3937 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 910b0cec..d836487f 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1573,10 +1573,10 @@ spec:
                   - name: tekton-pipelines-controller
                     resources:
                       requests:
-                        memory: 1Gi
-                        cpu: 100m
+                        memory: 12Gi
+                        cpu: "1"
                       limits:
-                        memory: 2Gi
+                        memory: 12Gi
                 topologySpreadConstraints:
                   - maxSkew: 1
                     topologyKey: topology.kubernetes.io/zone
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index fb182f93..c1b66858 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2061,10 +2061,10 @@ spec:
                 - name: tekton-pipelines-controller
                   resources:
                     limits:
-                      memory: 2Gi
+                      memory: 12Gi
                     requests:
-                      cpu: 100m
-                      memory: 1Gi
+                      cpu: "1"
+                      memory: 12Gi
                 topologySpreadConstraints:
                 - labelSelector:
                     matchLabels: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-a20aee4b/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2055c2055
<                       memory: 12Gi
---
>                       memory: 8Gi
2058c2058
<                       memory: 12Gi
---
>                       memory: 6Gi
./commit-a20aee4b/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2055c2055
<                       memory: 12Gi
---
>                       memory: 8Gi
2058c2058
<                       memory: 12Gi
---
>                       memory: 6Gi
./commit-a20aee4b/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2055c2055
<                       memory: 12Gi
---
>                       memory: 8Gi
2058c2058
<                       memory: 12Gi
---
>                       memory: 6Gi
./commit-a20aee4b/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2055c2055
<                       memory: 12Gi
---
>                       memory: 8Gi
2058c2058
<                       memory: 12Gi
---
>                       memory: 6Gi 
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
<h3>2: Staging changes from a20aee4b to c914a256 on Tue Nov 12 12:22:46 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 8ee1a32e..981d296c 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1576,10 +1576,10 @@ spec:
                   - name: tekton-pipelines-controller
                     resources:
                       requests:
-                        memory: 6Gi
+                        memory: 12Gi
                         cpu: "1"
                       limits:
-                        memory: 8Gi
+                        memory: 12Gi
                 topologySpreadConstraints:
                   - maxSkew: 1
                     topologyKey: topology.kubernetes.io/zone
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4a963757..9d84fcd0 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9d21ed2b..ac0b5fa8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 182619f6..15077e19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index d67cd93c..ac4f3937 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 910b0cec..d836487f 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1573,10 +1573,10 @@ spec:
                   - name: tekton-pipelines-controller
                     resources:
                       requests:
-                        memory: 1Gi
-                        cpu: 100m
+                        memory: 12Gi
+                        cpu: "1"
                       limits:
-                        memory: 2Gi
+                        memory: 12Gi
                 topologySpreadConstraints:
                   - maxSkew: 1
                     topologyKey: topology.kubernetes.io/zone
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index fb182f93..c1b66858 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2061,10 +2061,10 @@ spec:
                 - name: tekton-pipelines-controller
                   resources:
                     limits:
-                      memory: 2Gi
+                      memory: 12Gi
                     requests:
-                      cpu: 100m
-                      memory: 1Gi
+                      cpu: "1"
+                      memory: 12Gi
                 topologySpreadConstraints:
                 - labelSelector:
                     matchLabels: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-a20aee4b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2062c2062
<                       memory: 12Gi
---
>                       memory: 2Gi
2064,2065c2064,2065
<                       cpu: "1"
<                       memory: 12Gi
---
>                       cpu: 100m
>                       memory: 1Gi 
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
<h3>2: Development changes from a20aee4b to c914a256 on Tue Nov 12 12:22:46 2024 </h3>  
 
<details> 
<summary>Git Diff (121 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 8ee1a32e..981d296c 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1576,10 +1576,10 @@ spec:
                   - name: tekton-pipelines-controller
                     resources:
                       requests:
-                        memory: 6Gi
+                        memory: 12Gi
                         cpu: "1"
                       limits:
-                        memory: 8Gi
+                        memory: 12Gi
                 topologySpreadConstraints:
                   - maxSkew: 1
                     topologyKey: topology.kubernetes.io/zone
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 4a963757..9d84fcd0 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 9d21ed2b..ac0b5fa8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 182619f6..15077e19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index d67cd93c..ac4f3937 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2054,10 +2054,10 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 910b0cec..d836487f 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1573,10 +1573,10 @@ spec:
                   - name: tekton-pipelines-controller
                     resources:
                       requests:
-                        memory: 1Gi
-                        cpu: 100m
+                        memory: 12Gi
+                        cpu: "1"
                       limits:
-                        memory: 2Gi
+                        memory: 12Gi
                 topologySpreadConstraints:
                   - maxSkew: 1
                     topologyKey: topology.kubernetes.io/zone
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index fb182f93..c1b66858 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2061,10 +2061,10 @@ spec:
                 - name: tekton-pipelines-controller
                   resources:
                     limits:
-                      memory: 2Gi
+                      memory: 12Gi
                     requests:
-                      cpu: 100m
-                      memory: 1Gi
+                      cpu: "1"
+                      memory: 12Gi
                 topologySpreadConstraints:
                 - labelSelector:
                     matchLabels: 
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
<h3>3: Production changes from 5a7667da to a20aee4b on Tue Nov 12 12:20:00 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index c25b6cba..8ee1a32e 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,8 +1566,8 @@ spec:
                       cpu: "1"
                       memory: 1Gi
                     requests:
-                      cpu: 200m
-                      memory: 200Mi
+                      cpu: 400m
+                      memory: 1Gi
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 8c806c4a..4a963757 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 8041ba23..9d21ed2b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2d749b73..182619f6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 257e1cfb..d67cd93c 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2089,8 +2089,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index a478fad2..910b0cec 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1563,8 +1563,8 @@ spec:
                         cpu: "1"
                         memory: 1Gi
                       requests:
-                        cpu: 200m
-                        memory: 200Mi
+                        cpu: 400m
+                        memory: 1Gi
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 58c2e911..fb182f93 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2086,8 +2086,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 5f8424f7..4911ed5c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2086,8 +2086,8 @@ spec:
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-5a7667da/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2092,2093c2092,2093
<                       cpu: 400m
<                       memory: 1Gi
---
>                       cpu: 200m
>                       memory: 200Mi
./commit-5a7667da/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2092,2093c2092,2093
<                       cpu: 400m
<                       memory: 1Gi
---
>                       cpu: 200m
>                       memory: 200Mi
./commit-5a7667da/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2092,2093c2092,2093
<                       cpu: 400m
<                       memory: 1Gi
---
>                       cpu: 200m
>                       memory: 200Mi
./commit-5a7667da/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2090,2091c2090,2091
<                       cpu: 400m
<                       memory: 1Gi
---
>                       cpu: 200m
>                       memory: 200Mi 
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
<h3>3: Staging changes from 5a7667da to a20aee4b on Tue Nov 12 12:20:00 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index c25b6cba..8ee1a32e 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,8 +1566,8 @@ spec:
                       cpu: "1"
                       memory: 1Gi
                     requests:
-                      cpu: 200m
-                      memory: 200Mi
+                      cpu: 400m
+                      memory: 1Gi
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 8c806c4a..4a963757 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 8041ba23..9d21ed2b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2d749b73..182619f6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 257e1cfb..d67cd93c 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2089,8 +2089,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index a478fad2..910b0cec 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1563,8 +1563,8 @@ spec:
                         cpu: "1"
                         memory: 1Gi
                       requests:
-                        cpu: 200m
-                        memory: 200Mi
+                        cpu: 400m
+                        memory: 1Gi
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 58c2e911..fb182f93 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2086,8 +2086,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 5f8424f7..4911ed5c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2086,8 +2086,8 @@ spec:
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
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-5a7667da/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2087,2088c2087,2088
<                       cpu: 400m
<                       memory: 1Gi
---
>                       cpu: 200m
>                       memory: 200Mi
./commit-5a7667da/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2087,2088c2087,2088
<                       cpu: 400m
<                       memory: 1Gi
---
>                       cpu: 200m
>                       memory: 200Mi 
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
<h3>3: Development changes from 5a7667da to a20aee4b on Tue Nov 12 12:20:00 2024 </h3>  
 
<details> 
<summary>Git Diff (120 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index c25b6cba..8ee1a32e 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1566,8 +1566,8 @@ spec:
                       cpu: "1"
                       memory: 1Gi
                     requests:
-                      cpu: 200m
-                      memory: 200Mi
+                      cpu: 400m
+                      memory: 1Gi
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 8c806c4a..4a963757 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 8041ba23..9d21ed2b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 2d749b73..182619f6 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2091,8 +2091,8 @@ spec:
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
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 257e1cfb..d67cd93c 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2089,8 +2089,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index a478fad2..910b0cec 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1563,8 +1563,8 @@ spec:
                         cpu: "1"
                         memory: 1Gi
                       requests:
-                        cpu: 200m
-                        memory: 200Mi
+                        cpu: 400m
+                        memory: 1Gi
         tekton-pipelines-controller:
           spec:
             template:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 58c2e911..fb182f93 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2086,8 +2086,8 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 5f8424f7..4911ed5c 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2086,8 +2086,8 @@ spec:
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
<h3>4: Production changes from 79a548e9 to 5a7667da on Tue Nov 12 09:13:00 2024 </h3>  
 
<details> 
<summary>Git Diff (194 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d6e7aee5..8041ba23 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 2bd243ef..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,3 +27,21 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c95bdf6b..2d749b73 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 79354316..7dd98c45 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,3 +37,21 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-79a548e9/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2072,2074c2072
<                 - args:
<                   - --threads-per-controller=32
<                   name: controller
---
>                 - name: controller
2210c2208
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
2225c2223
<   channel: pipelines-5.0
---
>   channel: latest
./commit-79a548e9/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2072,2074c2072
<                 - args:
<                   - --threads-per-controller=32
<                   name: controller
---
>                 - name: controller
2210c2208
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
2225c2223
<   channel: pipelines-5.0
---
>   channel: latest 
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
<h3>4: Staging changes from 79a548e9 to 5a7667da on Tue Nov 12 09:13:00 2024 </h3>  
 
<details> 
<summary>Git Diff (194 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d6e7aee5..8041ba23 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 2bd243ef..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,3 +27,21 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c95bdf6b..2d749b73 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 79354316..7dd98c45 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,3 +37,21 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
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
<h3>4: Development changes from 79a548e9 to 5a7667da on Tue Nov 12 09:13:00 2024 </h3>  
 
<details> 
<summary>Git Diff (194 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d6e7aee5..8041ba23 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index 2bd243ef..a0463243 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,3 +27,21 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c95bdf6b..2d749b73 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,7 +2071,9 @@ spec:
             template:
               spec:
                 containers:
-                - name: controller
+                - args:
+                  - --threads-per-controller=32
+                  name: controller
                   resources:
                     limits:
                       memory: 8Gi
@@ -2207,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2224,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 79354316..7dd98c45 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,3 +37,21 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: osp-nightly-version.yaml
+    target:
+      name: custom-operators
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: CatalogSource
+  - path: osp-nightly-channel.yaml
+    target:
+      name: openshift-pipelines-operator
+      group: operators.coreos.com
+      version: v1alpha1
+      kind: Subscription
+  - path: osp-perf-resolvers.yaml
+    target:
+      name: config
+      group: operator.tekton.dev
+      version: v1alpha1
+      kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
new file mode 100644
index 00000000..16674495
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
@@ -0,0 +1,3 @@
+- op: replace
+  path: /spec/channel
+  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
new file mode 100644
index 00000000..2019b200
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/image
+  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8e3d43c7c644bd1e561c2dc0e30a9365b3949f8241a7c29acea326b4e6cffba7
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
new file mode 100644
index 00000000..72994502
--- /dev/null
+++ b/components/pipeline-service/production/stone-prod-p01/resources/osp-perf-resolvers.yaml
@@ -0,0 +1,13 @@
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/template/spec/containers
+  value:
+    - name: controller
+      args:
+        - "--threads-per-controller=32"
+      resources:
+        limits:
+          memory: 8Gi
+        requests:
+          cpu: "500m"
+          memory: 8Gi
+ 
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
