# kustomize changes tracked by commits 
### This file generated at Wed Oct 16 12:05:37 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from bc49352b to 6e4e9706 on Wed Oct 16 09:06:23 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 21ca7030..fe6be6d0 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -11,10 +11,10 @@ spec:
         resources:
           limits:
             cpu: 600m
-            memory: 2048Mi
+            memory: 4096Mi
           requests:
             cpu: 200m
-            memory: 1024Mi
+            memory: 2048Mi
         env:
         - name: CONSOLE_NAME
           valueFrom: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-bc49352b/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1419c1419
<             memory: 4096Mi
---
>             memory: 2048Mi
1422c1422
<             memory: 2048Mi
---
>             memory: 1024Mi
./commit-bc49352b/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1419c1419
<             memory: 4096Mi
---
>             memory: 2048Mi
1422c1422
<             memory: 2048Mi
---
>             memory: 1024Mi 
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
<h3>1: Staging changes from bc49352b to 6e4e9706 on Wed Oct 16 09:06:23 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 21ca7030..fe6be6d0 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -11,10 +11,10 @@ spec:
         resources:
           limits:
             cpu: 600m
-            memory: 2048Mi
+            memory: 4096Mi
           requests:
             cpu: 200m
-            memory: 1024Mi
+            memory: 2048Mi
         env:
         - name: CONSOLE_NAME
           valueFrom: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from bc49352b to 6e4e9706 on Wed Oct 16 09:06:23 2024 </h3>  
 
<details> 
<summary>Git Diff (17 lines)</summary>  

``` 
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 21ca7030..fe6be6d0 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -11,10 +11,10 @@ spec:
         resources:
           limits:
             cpu: 600m
-            memory: 2048Mi
+            memory: 4096Mi
           requests:
             cpu: 200m
-            memory: 1024Mi
+            memory: 2048Mi
         env:
         - name: CONSOLE_NAME
           valueFrom: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5dcf6163 to bc49352b on Wed Oct 16 07:14:33 2024 </h3>  
 
<details> 
<summary>Git Diff (247 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 227bda88..60d635d6 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -60,7 +60,7 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.max-instances: "50"
+  dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-arm64.type: aws
@@ -71,7 +71,7 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-arm64.max-instances: "50"
+  dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-arm64.type: aws
@@ -82,7 +82,7 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-arm64.max-instances: "50"
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-arm64.type: aws
@@ -93,7 +93,7 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-arm64.max-instances: "50"
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-arm64.type: aws
@@ -104,7 +104,7 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-arm64.max-instances: "50"
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-arm64.type: aws
@@ -115,7 +115,7 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-arm64.max-instances: "50"
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-amd64.type: aws
@@ -126,7 +126,7 @@ data:
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.max-instances: "50"
+  dynamic.linux-amd64.max-instances: "100"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-amd64.type: aws
@@ -137,7 +137,7 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-amd64.max-instances: "50"
+  dynamic.linux-mlarge-amd64.max-instances: "100"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-amd64.type: aws
@@ -148,7 +148,7 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-amd64.max-instances: "50"
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-amd64.type: aws
@@ -159,7 +159,7 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-amd64.max-instances: "50"
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-amd64.type: aws
@@ -170,7 +170,7 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-amd64.max-instances: "50"
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-amd64.type: aws
@@ -181,7 +181,7 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-amd64.max-instances: "50"
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   # cpu:memory (1:2)
@@ -193,7 +193,7 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-arm64.max-instances: "50"
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-arm64.type: aws
@@ -204,7 +204,7 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-arm64.max-instances: "50"
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-arm64.type: aws
@@ -215,7 +215,7 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-arm64.max-instances: "50"
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-arm64.type: aws
@@ -226,7 +226,7 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-arm64.max-instances: "50"
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-cxlarge-amd64.type: aws
@@ -237,7 +237,7 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-amd64.max-instances: "50"
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-amd64.type: aws
@@ -248,7 +248,7 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-amd64.max-instances: "50"
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-amd64.type: aws
@@ -259,7 +259,7 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-amd64.max-instances: "50"
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-amd64.type: aws
@@ -270,7 +270,7 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-amd64.max-instances: "50"
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
@@ -282,7 +282,7 @@ data:
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "50"
+  dynamic.linux-root-arm64.max-instances: "100"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-arm64.disk: "200"
   dynamic.linux-root-arm64.iops: "16000"
@@ -297,7 +297,7 @@ data:
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "50"
+  dynamic.linux-root-amd64.max-instances: "100"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
@@ -375,7 +375,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.max-instances: "100"
   dynamic.linux-s390x.private-ip: "true"
 
   ## IBM s390x with 4CPU 16GiB RAM ####
@@ -389,7 +389,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.max-instances: "100"
   dynamic.linux-large-s390x.private-ip: "true"
 
   #PPC64LE dynamic nodes
@@ -404,7 +404,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.max-instances: "100"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -423,7 +423,7 @@ data:
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
-  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.max-instances: "100"
   dynamic.linux-large-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -440,7 +440,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-g6xlarge-amd64.max-instances: "50"
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
   dynamic.linux-g6xlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0 
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
<h3>2: Staging changes from 5dcf6163 to bc49352b on Wed Oct 16 07:14:33 2024 </h3>  
 
<details> 
<summary>Git Diff (247 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 227bda88..60d635d6 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -60,7 +60,7 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.max-instances: "50"
+  dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-arm64.type: aws
@@ -71,7 +71,7 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-arm64.max-instances: "50"
+  dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-arm64.type: aws
@@ -82,7 +82,7 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-arm64.max-instances: "50"
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-arm64.type: aws
@@ -93,7 +93,7 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-arm64.max-instances: "50"
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-arm64.type: aws
@@ -104,7 +104,7 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-arm64.max-instances: "50"
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-arm64.type: aws
@@ -115,7 +115,7 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-arm64.max-instances: "50"
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-amd64.type: aws
@@ -126,7 +126,7 @@ data:
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.max-instances: "50"
+  dynamic.linux-amd64.max-instances: "100"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-amd64.type: aws
@@ -137,7 +137,7 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-amd64.max-instances: "50"
+  dynamic.linux-mlarge-amd64.max-instances: "100"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-amd64.type: aws
@@ -148,7 +148,7 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-amd64.max-instances: "50"
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-amd64.type: aws
@@ -159,7 +159,7 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-amd64.max-instances: "50"
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-amd64.type: aws
@@ -170,7 +170,7 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-amd64.max-instances: "50"
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-amd64.type: aws
@@ -181,7 +181,7 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-amd64.max-instances: "50"
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   # cpu:memory (1:2)
@@ -193,7 +193,7 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-arm64.max-instances: "50"
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-arm64.type: aws
@@ -204,7 +204,7 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-arm64.max-instances: "50"
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-arm64.type: aws
@@ -215,7 +215,7 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-arm64.max-instances: "50"
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-arm64.type: aws
@@ -226,7 +226,7 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-arm64.max-instances: "50"
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-cxlarge-amd64.type: aws
@@ -237,7 +237,7 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-amd64.max-instances: "50"
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-amd64.type: aws
@@ -248,7 +248,7 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-amd64.max-instances: "50"
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-amd64.type: aws
@@ -259,7 +259,7 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-amd64.max-instances: "50"
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-amd64.type: aws
@@ -270,7 +270,7 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-amd64.max-instances: "50"
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
@@ -282,7 +282,7 @@ data:
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "50"
+  dynamic.linux-root-arm64.max-instances: "100"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-arm64.disk: "200"
   dynamic.linux-root-arm64.iops: "16000"
@@ -297,7 +297,7 @@ data:
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "50"
+  dynamic.linux-root-amd64.max-instances: "100"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
@@ -375,7 +375,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.max-instances: "100"
   dynamic.linux-s390x.private-ip: "true"
 
   ## IBM s390x with 4CPU 16GiB RAM ####
@@ -389,7 +389,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.max-instances: "100"
   dynamic.linux-large-s390x.private-ip: "true"
 
   #PPC64LE dynamic nodes
@@ -404,7 +404,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.max-instances: "100"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -423,7 +423,7 @@ data:
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
-  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.max-instances: "100"
   dynamic.linux-large-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -440,7 +440,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-g6xlarge-amd64.max-instances: "50"
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
   dynamic.linux-g6xlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 5dcf6163 to bc49352b on Wed Oct 16 07:14:33 2024 </h3>  
 
<details> 
<summary>Git Diff (247 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 227bda88..60d635d6 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -60,7 +60,7 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.max-instances: "50"
+  dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-arm64.type: aws
@@ -71,7 +71,7 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-arm64.max-instances: "50"
+  dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-arm64.type: aws
@@ -82,7 +82,7 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-arm64.max-instances: "50"
+  dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-arm64.type: aws
@@ -93,7 +93,7 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-arm64.max-instances: "50"
+  dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-arm64.type: aws
@@ -104,7 +104,7 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-arm64.max-instances: "50"
+  dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-arm64.type: aws
@@ -115,7 +115,7 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-arm64.max-instances: "50"
+  dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-amd64.type: aws
@@ -126,7 +126,7 @@ data:
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.max-instances: "50"
+  dynamic.linux-amd64.max-instances: "100"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-amd64.type: aws
@@ -137,7 +137,7 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-amd64.max-instances: "50"
+  dynamic.linux-mlarge-amd64.max-instances: "100"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-amd64.type: aws
@@ -148,7 +148,7 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-amd64.max-instances: "50"
+  dynamic.linux-mxlarge-amd64.max-instances: "100"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-amd64.type: aws
@@ -159,7 +159,7 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-amd64.max-instances: "50"
+  dynamic.linux-m2xlarge-amd64.max-instances: "100"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-amd64.type: aws
@@ -170,7 +170,7 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-amd64.max-instances: "50"
+  dynamic.linux-m4xlarge-amd64.max-instances: "100"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-amd64.type: aws
@@ -181,7 +181,7 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-amd64.max-instances: "50"
+  dynamic.linux-m8xlarge-amd64.max-instances: "100"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   # cpu:memory (1:2)
@@ -193,7 +193,7 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-arm64.max-instances: "50"
+  dynamic.linux-cxlarge-arm64.max-instances: "100"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-arm64.type: aws
@@ -204,7 +204,7 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-arm64.max-instances: "50"
+  dynamic.linux-c2xlarge-arm64.max-instances: "100"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-arm64.type: aws
@@ -215,7 +215,7 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-arm64.max-instances: "50"
+  dynamic.linux-c4xlarge-arm64.max-instances: "100"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-arm64.type: aws
@@ -226,7 +226,7 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-arm64.max-instances: "50"
+  dynamic.linux-c8xlarge-arm64.max-instances: "100"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-cxlarge-amd64.type: aws
@@ -237,7 +237,7 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-amd64.max-instances: "50"
+  dynamic.linux-cxlarge-amd64.max-instances: "100"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-amd64.type: aws
@@ -248,7 +248,7 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-amd64.max-instances: "50"
+  dynamic.linux-c2xlarge-amd64.max-instances: "100"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-amd64.type: aws
@@ -259,7 +259,7 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-amd64.max-instances: "50"
+  dynamic.linux-c4xlarge-amd64.max-instances: "100"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-amd64.type: aws
@@ -270,7 +270,7 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-amd64.max-instances: "50"
+  dynamic.linux-c8xlarge-amd64.max-instances: "100"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
@@ -282,7 +282,7 @@ data:
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "50"
+  dynamic.linux-root-arm64.max-instances: "100"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-arm64.disk: "200"
   dynamic.linux-root-arm64.iops: "16000"
@@ -297,7 +297,7 @@ data:
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "50"
+  dynamic.linux-root-amd64.max-instances: "100"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
@@ -375,7 +375,7 @@ data:
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "50"
+  dynamic.linux-s390x.max-instances: "100"
   dynamic.linux-s390x.private-ip: "true"
 
   ## IBM s390x with 4CPU 16GiB RAM ####
@@ -389,7 +389,7 @@ data:
   dynamic.linux-large-s390x.region: "us-east-1"
   dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
-  dynamic.linux-large-s390x.max-instances: "50"
+  dynamic.linux-large-s390x.max-instances: "100"
   dynamic.linux-large-s390x.private-ip: "true"
 
   #PPC64LE dynamic nodes
@@ -404,7 +404,7 @@ data:
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
-  dynamic.linux-ppc64le.max-instances: "50"
+  dynamic.linux-ppc64le.max-instances: "100"
   dynamic.linux-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -423,7 +423,7 @@ data:
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
-  dynamic.linux-large-ppc64le.max-instances: "50"
+  dynamic.linux-large-ppc64le.max-instances: "100"
   dynamic.linux-large-ppc64le.user-data: |-
     #cloud-config
     runcmd:
@@ -440,7 +440,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-g6xlarge-amd64.max-instances: "50"
+  dynamic.linux-g6xlarge-amd64.max-instances: "100"
   dynamic.linux-g6xlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from f49021aa to 5dcf6163 on Wed Oct 16 07:11:24 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index fcf525a4..a71008f5 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac 
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
<h3>3: Staging changes from f49021aa to 5dcf6163 on Wed Oct 16 07:11:24 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index fcf525a4..a71008f5 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from f49021aa to 5dcf6163 on Wed Oct 16 07:11:24 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index fcf525a4..a71008f5 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: ba9953e0eb90e3ff2f58b8e6d5f28182f3bd2ddd
+  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 231156d4 to f49021aa on Tue Oct 15 20:02:13 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 10ef4c19..c6d5d020 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -3,6 +3,8 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 
 ---
 apiVersion: operators.coreos.com/v1
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
index 858f3b13..212794f6 100644
--- a/components/cluster-as-a-service/development/klusterlet-config.yaml
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -5,5 +5,7 @@ apiVersion: config.open-cluster-management.io/v1alpha1
 kind: KlusterletConfig
 metadata:
   name: global
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-231156d4/production/components/cluster-as-a-service/production/kustomize.out.yaml
11,12d10
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3" 
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
<h3>4: Staging changes from 231156d4 to f49021aa on Tue Oct 15 20:02:13 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 10ef4c19..c6d5d020 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -3,6 +3,8 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 
 ---
 apiVersion: operators.coreos.com/v1
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
index 858f3b13..212794f6 100644
--- a/components/cluster-as-a-service/development/klusterlet-config.yaml
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -5,5 +5,7 @@ apiVersion: config.open-cluster-management.io/v1alpha1
 kind: KlusterletConfig
 metadata:
   name: global
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-231156d4/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
11,12d10
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 231156d4 to f49021aa on Tue Oct 15 20:02:13 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/multicluster-engine.yaml b/components/cluster-as-a-service/base/multicluster-engine.yaml
index 10ef4c19..c6d5d020 100644
--- a/components/cluster-as-a-service/base/multicluster-engine.yaml
+++ b/components/cluster-as-a-service/base/multicluster-engine.yaml
@@ -3,6 +3,8 @@ apiVersion: v1
 kind: Namespace
 metadata:
   name: multicluster-engine
+  annotations:
+    argocd.argoproj.io/sync-wave: "-3"
 
 ---
 apiVersion: operators.coreos.com/v1
diff --git a/components/cluster-as-a-service/development/klusterlet-config.yaml b/components/cluster-as-a-service/development/klusterlet-config.yaml
index 858f3b13..212794f6 100644
--- a/components/cluster-as-a-service/development/klusterlet-config.yaml
+++ b/components/cluster-as-a-service/development/klusterlet-config.yaml
@@ -5,5 +5,7 @@ apiVersion: config.open-cluster-management.io/v1alpha1
 kind: KlusterletConfig
 metadata:
   name: global
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   hubKubeAPIServerCABundle: "LS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tCk1JSUZhekNDQTFPZ0F3SUJBZ0lSQUlJUXo3RFNRT05aUkdQZ3UyT0Npd0F3RFFZSktvWklodmNOQVFFTEJRQXcKVHpFTE1Ba0dBMVVFQmhNQ1ZWTXhLVEFuQmdOVkJBb1RJRWx1ZEdWeWJtVjBJRk5sWTNWeWFYUjVJRkpsYzJWaApjbU5vSUVkeWIzVndNUlV3RXdZRFZRUURFd3hKVTFKSElGSnZiM1FnV0RFd0hoY05NVFV3TmpBME1URXdORE00CldoY05NelV3TmpBME1URXdORE00V2pCUE1Rc3dDUVlEVlFRR0V3SlZVekVwTUNjR0ExVUVDaE1nU1c1MFpYSnUKWlhRZ1UyVmpkWEpwZEhrZ1VtVnpaV0Z5WTJnZ1IzSnZkWEF4RlRBVEJnTlZCQU1UREVsVFVrY2dVbTl2ZENCWQpNVENDQWlJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dJUEFEQ0NBZ29DZ2dJQkFLM29KSFAwRkRmem01NHJWeWdjCmg3N2N0OTg0a0l4dVBPWlhvSGozZGNLaS92VnFidllBVHlqYjNtaUdiRVNUdHJGai9SUVNhNzhmMHVveG15RisKMFRNOHVrajEzWG5mczdqL0V2RWhta3ZCaW9aeGFVcG1abXlQZmp4d3Y2MHBJZ2J6NU1EbWdLN2lTNCszbVg2VQpBNS9UUjVkOG1VZ2pVK2c0cms4S2I0TXUwVWxYaklCMHR0b3YwRGlOZXdOd0lSdDE4akE4K28rdTNkcGpxK3NXClQ4S09FVXQrend2by83VjNMdlN5ZTByZ1RCSWxESENOQXltZzRWTWs3QlBaN2htL0VMTktqRCtKbzJGUjNxeUgKQjVUMFkzSHNMdUp2VzVpQjRZbGNOSGxzZHU4N2tHSjU1dHVrbWk4bXhkQVE0UTdlMlJDT0Z2dTM5NmozeCtVQwpCNWlQTmdpVjUrSTNsZzAyZFo3N0RuS3hIWnU4QS9sSkJkaUIzUVcwS3RaQjZhd0JkcFVLRDlqZjFiMFNIelV2CktCZHMwcGpCcUFsa2QyNUhON3JPckZsZWFKMS9jdGFKeFFaQktUNVpQdDBtOVNUSkVhZGFvMHhBSDBhaG1iV24KT2xGdWhqdWVmWEtuRWdWNFdlMCtVWGdWQ3dPUGpkQXZCYkkrZTBvY1MzTUZFdnpHNnVCUUUzeERrM1N6eW5UbgpqaDhCQ05BdzFGdHhOclFIdXNFd01GeEl0NEk3bUtaOVlJcWlveW1DekxxOWd3UWJvb01EUWFIV0JmRWJ3cmJ3CnFIeUdPMGFvU0NxSTNIYWFkcjhmYXFVOUdZL3JPUE5rM3NnckRRb28vL2ZiNGhWQzFDTFFKMTNoZWY0WTUzQ0kKclU3bTJZczZ4dDBuVVc3L3ZHVDFNME5QQWdNQkFBR2pRakJBTUE0R0ExVWREd0VCL3dRRUF3SUJCakFQQmdOVgpIUk1CQWY4RUJUQURBUUgvTUIwR0ExVWREZ1FXQkJSNXRGbm1lN2JsNUFGemdBaUl5QnBZOXVtYmJqQU5CZ2txCmhraUc5dzBCQVFzRkFBT0NBZ0VBVlI5WXFieXlxRkRRRExIWUdta2dKeWtJckdGMVhJcHUrSUxsYVMvVjlsWkwKdWJoekVGblRJWmQrNTB4eCs3TFNZSzA1cUF2cUZ5RldoZkZRRGxucnp1Qlo2YnJKRmUrR25ZK0VnUGJrNlpHUQozQmViWWh0RjhHYVYwbnh2d3VvNzd4L1B5OWF1Si9HcHNNaXUvWDErbXZvaUJPdi8yWC9xa1NzaXNSY09qL0tLCk5GdFkyUHdCeVZTNXVDYk1pb2d6aVV3dGhEeUMzKzZXVndXNkxMdjN4TGZIVGp1Q3ZqSElJbk56a3RIQ2dLUTUKT1JBekk0Sk1QSitHc2xXWUhiNHBob3dpbTU3aWF6dFhPb0p3VGR3Sng0bkxDZ2ROYk9oZGpzbnZ6cXZIdTdVcgpUa1hXU3RBbXpPVnl5Z2hxcFpYakZhSDNwTzNKTEYrbCsvK3NLQUl1dnRkN3UrTnhlNUFXMHdkZVJsTjhOd2RDCmpOUEVscHpWbWJVcTRKVWFnRWl1VERrSHpzeEhwRktWSzdxNCs2M1NNMU45NVIxTmJkV2hzY2RDYitaQUp6VmMKb3lpM0I0M25qVE9RNXlPZisxQ2NlV3hHMWJRVnM1WnVmcHNNbGpxNFVpMC8xbHZoK3dqQ2hQNGtxS09KMnF4cQo0Umdxc2FoRFlWdlRIOXc3alhieUxlaU5kZDhYTTJ3OVUvdDd5MEZmLzl5aTBHRTQ0WmE0ckYyTE45ZDExVFBBCm1SR3VuVUhCY25XRXZnSkJRbDluSkVpVTBac252Z2MvdWJoUGdYUlI0WHEzN1owajRyN2cxU2dFRXp3eEE1N2QKZW15UHhnY1l4bi9lUjQ0L0tKNEVCcytsVkRSM3ZleUptK2tYUTk5YjIxLytqaDVYb3MxQW5YNWlJdHJlR0NjPQotLS0tLUVORCBDRVJUSUZJQ0FURS0tLS0tCg==" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-231156d4/development/components/cluster-as-a-service/development/kustomize.out.yaml
11,12d10
<   annotations:
<     argocd.argoproj.io/sync-wave: "-3"
224,225d221
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>
