# kustomize changes tracked by commits 
### This file generated at Wed May 29 12:04:07 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from b076da25 to 307ccfba on Wed May 29 11:42:07 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 25f647c8..4336816e 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
             configMapKeyRef:
-              name: console-name
+              name: console-url
               key: CONSOLE_NAME
               optional: true
         - name: CONSOLE_URL
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index d21f788a..23de54ac 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-name
+                name: console-url
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 3b14f600..3534c0f7 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-name
+                name: console-url
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-b076da25/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1425c1425
<               name: console-url-tc57tckhc8
---
>               name: console-name
./commit-b076da25/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1425c1425
<               name: console-url-gkchk67fck
---
>               name: console-name 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from b076da25 to 307ccfba on Wed May 29 11:42:07 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 25f647c8..4336816e 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
             configMapKeyRef:
-              name: console-name
+              name: console-url
               key: CONSOLE_NAME
               optional: true
         - name: CONSOLE_URL
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index d21f788a..23de54ac 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-name
+                name: console-url
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 3b14f600..3534c0f7 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-name
+                name: console-url
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b076da25/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1425c1425
<               name: console-url-m6fh7c768d
---
>               name: console-name 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from b076da25 to 307ccfba on Wed May 29 11:42:07 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 25f647c8..4336816e 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
             configMapKeyRef:
-              name: console-name
+              name: console-url
               key: CONSOLE_NAME
               optional: true
         - name: CONSOLE_URL
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index d21f788a..23de54ac 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-name
+                name: console-url
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 3b14f600..3534c0f7 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -19,7 +19,7 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-name
+                name: console-url
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b076da25/development/components/integration/development/kustomize.out.yaml
1423c1423
<               name: console-url-b6926b66g6
---
>               name: console-name 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 04c80335 to b076da25 on Wed May 29 06:02:24 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index c7217dda..84b70092 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -62,7 +62,7 @@ data:
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-stage-key"
   dynamic.linux-s390x.subnet: "internal-a"
-  dynamic.linux-s390x.image-id: "r014-ecc81939-f243-41e8-a0bc-a27b6db8ebc3"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 04c80335 to b076da25 on Wed May 29 06:02:24 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index c7217dda..84b70092 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -62,7 +62,7 @@ data:
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-stage-key"
   dynamic.linux-s390x.subnet: "internal-a"
-  dynamic.linux-s390x.image-id: "r014-ecc81939-f243-41e8-a0bc-a27b6db8ebc3"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 04c80335 to b076da25 on Wed May 29 06:02:24 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index c7217dda..84b70092 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -62,7 +62,7 @@ data:
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-stage-key"
   dynamic.linux-s390x.subnet: "internal-a"
-  dynamic.linux-s390x.image-id: "r014-ecc81939-f243-41e8-a0bc-a27b6db8ebc3"
+  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 26aca1e4 to 04c80335 on Wed May 29 02:45:47 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 71997792..c57d8085 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 46d70d3d..7c89c8a9 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 26aca1e4 to 04c80335 on Wed May 29 02:45:47 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 71997792..c57d8085 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 46d70d3d..7c89c8a9 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-26aca1e4/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1457c1457
<         image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6
---
>         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6
---
>             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 26aca1e4 to 04c80335 on Wed May 29 02:45:47 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 71997792..c57d8085 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 46d70d3d..7c89c8a9 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ea699e38edc9c5c21821107667794490d8a8f2f6
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: ea699e38edc9c5c21821107667794490d8a8f2f6
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-26aca1e4/development/components/integration/development/kustomize.out.yaml
1455c1455
<         image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6
---
>         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
1549c1549
<             image: quay.io/redhat-appstudio/integration-service:ea699e38edc9c5c21821107667794490d8a8f2f6
---
>             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 648808f0 to 26aca1e4 on Tue May 28 15:23:26 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index 1d5d5421..d7d0fb4e 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-arch-controller-ssh-key-internal
+        key: production/build/multi-platform-controller/internal-prod-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,3 +20,26 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-account
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 122de622..6a9d9faf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,53 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-prod
 
-  host.ip-10-29-66-250.address: "10.29.66.250"
-  host.ip-10-29-66-250.platform: "linux/amd64"
-  host.ip-10-29-66-250.user: "ec2-user"
-  host.ip-10-29-66-250.secret: "aws-ssh-key"
-  host.ip-10-29-66-250.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.max-instances: "10"
+  
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.max-instances: "10"
 
-  host.ip-10-29-66-245.address: "10.29.66.245"
-  host.ip-10-29-66-245.platform: "linux/arm64"
-  host.ip-10-29-66-245.user: "ec2-user"
-  host.ip-10-29-66-245.secret: "aws-ssh-key"
-  host.ip-10-29-66-245.concurrency: "4"
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
 
-  host.ip-10-29-66-249.address: "10.29.66.249"
-  host.ip-10-29-66-249.platform: "linux/arm64"
-  host.ip-10-29-66-249.user: "ec2-user"
-  host.ip-10-29-66-249.secret: "aws-ssh-key"
-  host.ip-10-29-66-249.concurrency: "4"
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 648808f0 to 26aca1e4 on Tue May 28 15:23:26 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index 1d5d5421..d7d0fb4e 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-arch-controller-ssh-key-internal
+        key: production/build/multi-platform-controller/internal-prod-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,3 +20,26 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-account
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 122de622..6a9d9faf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,53 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-prod
 
-  host.ip-10-29-66-250.address: "10.29.66.250"
-  host.ip-10-29-66-250.platform: "linux/amd64"
-  host.ip-10-29-66-250.user: "ec2-user"
-  host.ip-10-29-66-250.secret: "aws-ssh-key"
-  host.ip-10-29-66-250.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.max-instances: "10"
+  
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.max-instances: "10"
 
-  host.ip-10-29-66-245.address: "10.29.66.245"
-  host.ip-10-29-66-245.platform: "linux/arm64"
-  host.ip-10-29-66-245.user: "ec2-user"
-  host.ip-10-29-66-245.secret: "aws-ssh-key"
-  host.ip-10-29-66-245.concurrency: "4"
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
 
-  host.ip-10-29-66-249.address: "10.29.66.249"
-  host.ip-10-29-66-249.platform: "linux/arm64"
-  host.ip-10-29-66-249.user: "ec2-user"
-  host.ip-10-29-66-249.secret: "aws-ssh-key"
-  host.ip-10-29-66-249.concurrency: "4"
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 648808f0 to 26aca1e4 on Tue May 28 15:23:26 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index 1d5d5421..d7d0fb4e 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-arch-controller-ssh-key-internal
+        key: production/build/multi-platform-controller/internal-prod-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,3 +20,26 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-account
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 122de622..6a9d9faf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,53 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-prod
 
-  host.ip-10-29-66-250.address: "10.29.66.250"
-  host.ip-10-29-66-250.platform: "linux/amd64"
-  host.ip-10-29-66-250.user: "ec2-user"
-  host.ip-10-29-66-250.secret: "aws-ssh-key"
-  host.ip-10-29-66-250.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.max-instances: "10"
+  
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.max-instances: "10"
 
-  host.ip-10-29-66-245.address: "10.29.66.245"
-  host.ip-10-29-66-245.platform: "linux/arm64"
-  host.ip-10-29-66-245.user: "ec2-user"
-  host.ip-10-29-66-245.secret: "aws-ssh-key"
-  host.ip-10-29-66-245.concurrency: "4"
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
 
-  host.ip-10-29-66-249.address: "10.29.66.249"
-  host.ip-10-29-66-249.platform: "linux/arm64"
-  host.ip-10-29-66-249.user: "ec2-user"
-  host.ip-10-29-66-249.secret: "aws-ssh-key"
-  host.ip-10-29-66-249.concurrency: "4"
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman" 
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
```
 
</details> 
<br> 


</div>
