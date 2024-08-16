# kustomize changes tracked by commits 
### This file generated at Fri Aug 16 16:04:07 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e3057c57 to 6282eef9 on Fri Aug 16 13:43:40 2024 </h3>  
 
<details> 
<summary>Git Diff (57 lines)</summary>  

``` 
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
index b3759ccd..e8b7a7a3 100644
--- a/components/notification-controller/base/deployment.yaml
+++ b/components/notification-controller/base/deployment.yaml
@@ -24,7 +24,7 @@ spec:
       serviceAccountName: notification-controller-sa
       containers:
       - name: notification-controller
-        image: quay.io/konflux-ci/notification-service@sha256:bcf0609b7da6acfa2bc91d5940b97abd8e2bc68e4c1ecec2a6e7d310cd7814a5
+        image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
         volumeMounts:
         - name: vol-secret
           mountPath: /.aws
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index db4bc24d..2bde27f4 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -8,4 +8,4 @@ patches:
   - path: topic_region_add.yaml
     target:
       name: notification-controller
-      kind: Deployment
\ No newline at end of file
+      kind: Deployment
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
index 5207bfdf..9a86bd17 100644
--- a/components/notification-controller/development/topic_region_add.yaml
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -5,4 +5,4 @@
     - name: NOTIFICATION_TOPIC_ARN
       value: <TOPIC_ARN>
     - name: NOTIFICATION_REGION
-      value: <REGION>
\ No newline at end of file
+      value: <REGION>
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index f3f4ae62..bc87ce50 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -9,4 +9,4 @@ patches:
   - path: topic_region_add.yaml
     target:
       name: notification-controller
-      kind: Deployment
\ No newline at end of file
+      kind: Deployment
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
index b2b1c711..af73a81a 100644
--- a/components/notification-controller/staging/topic_region_add.yaml
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -5,4 +5,4 @@
     - name: NOTIFICATION_TOPIC_ARN
       value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
     - name: NOTIFICATION_REGION
-      value: "us-east-1"
\ No newline at end of file
+      value: "us-east-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e3057c57 to 6282eef9 on Fri Aug 16 13:43:40 2024 </h3>  
 
<details> 
<summary>Git Diff (57 lines)</summary>  

``` 
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
index b3759ccd..e8b7a7a3 100644
--- a/components/notification-controller/base/deployment.yaml
+++ b/components/notification-controller/base/deployment.yaml
@@ -24,7 +24,7 @@ spec:
       serviceAccountName: notification-controller-sa
       containers:
       - name: notification-controller
-        image: quay.io/konflux-ci/notification-service@sha256:bcf0609b7da6acfa2bc91d5940b97abd8e2bc68e4c1ecec2a6e7d310cd7814a5
+        image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
         volumeMounts:
         - name: vol-secret
           mountPath: /.aws
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index db4bc24d..2bde27f4 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -8,4 +8,4 @@ patches:
   - path: topic_region_add.yaml
     target:
       name: notification-controller
-      kind: Deployment
\ No newline at end of file
+      kind: Deployment
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
index 5207bfdf..9a86bd17 100644
--- a/components/notification-controller/development/topic_region_add.yaml
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -5,4 +5,4 @@
     - name: NOTIFICATION_TOPIC_ARN
       value: <TOPIC_ARN>
     - name: NOTIFICATION_REGION
-      value: <REGION>
\ No newline at end of file
+      value: <REGION>
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index f3f4ae62..bc87ce50 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -9,4 +9,4 @@ patches:
   - path: topic_region_add.yaml
     target:
       name: notification-controller
-      kind: Deployment
\ No newline at end of file
+      kind: Deployment
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
index b2b1c711..af73a81a 100644
--- a/components/notification-controller/staging/topic_region_add.yaml
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -5,4 +5,4 @@
     - name: NOTIFICATION_TOPIC_ARN
       value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
     - name: NOTIFICATION_REGION
-      value: "us-east-1"
\ No newline at end of file
+      value: "us-east-1" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e3057c57/staging/components/notification-controller/staging/kustomize.out.yaml
69c69
<         image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
---
>         image: quay.io/konflux-ci/notification-service@sha256:bcf0609b7da6acfa2bc91d5940b97abd8e2bc68e4c1ecec2a6e7d310cd7814a5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from e3057c57 to 6282eef9 on Fri Aug 16 13:43:40 2024 </h3>  
 
<details> 
<summary>Git Diff (57 lines)</summary>  

``` 
diff --git a/components/notification-controller/base/deployment.yaml b/components/notification-controller/base/deployment.yaml
index b3759ccd..e8b7a7a3 100644
--- a/components/notification-controller/base/deployment.yaml
+++ b/components/notification-controller/base/deployment.yaml
@@ -24,7 +24,7 @@ spec:
       serviceAccountName: notification-controller-sa
       containers:
       - name: notification-controller
-        image: quay.io/konflux-ci/notification-service@sha256:bcf0609b7da6acfa2bc91d5940b97abd8e2bc68e4c1ecec2a6e7d310cd7814a5
+        image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
         volumeMounts:
         - name: vol-secret
           mountPath: /.aws
diff --git a/components/notification-controller/development/kustomization.yaml b/components/notification-controller/development/kustomization.yaml
index db4bc24d..2bde27f4 100644
--- a/components/notification-controller/development/kustomization.yaml
+++ b/components/notification-controller/development/kustomization.yaml
@@ -8,4 +8,4 @@ patches:
   - path: topic_region_add.yaml
     target:
       name: notification-controller
-      kind: Deployment
\ No newline at end of file
+      kind: Deployment
diff --git a/components/notification-controller/development/topic_region_add.yaml b/components/notification-controller/development/topic_region_add.yaml
index 5207bfdf..9a86bd17 100644
--- a/components/notification-controller/development/topic_region_add.yaml
+++ b/components/notification-controller/development/topic_region_add.yaml
@@ -5,4 +5,4 @@
     - name: NOTIFICATION_TOPIC_ARN
       value: <TOPIC_ARN>
     - name: NOTIFICATION_REGION
-      value: <REGION>
\ No newline at end of file
+      value: <REGION>
diff --git a/components/notification-controller/staging/kustomization.yaml b/components/notification-controller/staging/kustomization.yaml
index f3f4ae62..bc87ce50 100644
--- a/components/notification-controller/staging/kustomization.yaml
+++ b/components/notification-controller/staging/kustomization.yaml
@@ -9,4 +9,4 @@ patches:
   - path: topic_region_add.yaml
     target:
       name: notification-controller
-      kind: Deployment
\ No newline at end of file
+      kind: Deployment
diff --git a/components/notification-controller/staging/topic_region_add.yaml b/components/notification-controller/staging/topic_region_add.yaml
index b2b1c711..af73a81a 100644
--- a/components/notification-controller/staging/topic_region_add.yaml
+++ b/components/notification-controller/staging/topic_region_add.yaml
@@ -5,4 +5,4 @@
     - name: NOTIFICATION_TOPIC_ARN
       value: "arn:aws:sns:us-east-1:663944276957:scan_topic"
     - name: NOTIFICATION_REGION
-      value: "us-east-1"
\ No newline at end of file
+      value: "us-east-1" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e3057c57/development/components/notification-controller/development/kustomize.out.yaml
69c69
<         image: quay.io/konflux-ci/notification-service:68de06f51a89e93c49d1fd245d1ade923b1514d8
---
>         image: quay.io/konflux-ci/notification-service@sha256:bcf0609b7da6acfa2bc91d5940b97abd8e2bc68e4c1ecec2a6e7d310cd7814a5 
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
<h3>2: Production changes from eeef09fa to e3057c57 on Fri Aug 16 09:48:12 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index d27f4147..05c09440 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -297,7 +297,7 @@ data:
   dynamic.linux-ppc64le.image: "konflux-stage-ppc-base-os-08-16-2024"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,0f5ab51a-edcc-4747-9714-9338d6b0d016"
   dynamic.linux-ppc64le.system: "s922"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from eeef09fa to e3057c57 on Fri Aug 16 09:48:12 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index d27f4147..05c09440 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -297,7 +297,7 @@ data:
   dynamic.linux-ppc64le.image: "konflux-stage-ppc-base-os-08-16-2024"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,0f5ab51a-edcc-4747-9714-9338d6b0d016"
   dynamic.linux-ppc64le.system: "s922"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from eeef09fa to e3057c57 on Fri Aug 16 09:48:12 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index d27f4147..05c09440 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -297,7 +297,7 @@ data:
   dynamic.linux-ppc64le.image: "konflux-stage-ppc-base-os-08-16-2024"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,0f5ab51a-edcc-4747-9714-9338d6b0d016"
   dynamic.linux-ppc64le.system: "s922"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8" 
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
<h3>3: Production changes from f97e2fa2 to eeef09fa on Fri Aug 16 09:05:18 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e17a80a5..d27f4147 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -34,9 +34,10 @@ data:
     linux-c8xlarge/arm64,\
     linux/s390x,\
     linux-root/arm64,\
-    linux-root/amd64\
+    linux-root/amd64,\
+    linux/ppc64le\
     "
-  dynamic-pool-platforms: linux/ppc64le
+  #dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -293,16 +294,16 @@ data:
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
   dynamic.linux-ppc64le.key: "konflux-infra"
-  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.image: "konflux-stage-ppc-base-os-08-16-2024"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
   dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
-  dynamic.linux-ppc64le.system: "e980"
-  dynamic.linux-ppc64le.cores: "0.25"
-  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.system: "s922"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
   dynamic.linux-ppc64le.max-instances: "2"
-  dynamic.linux-ppc64le.max-age: "120"
-  dynamic.linux-ppc64le.concurrency: "2"
+  # dynamic.linux-ppc64le.max-age: "120"
+  # dynamic.linux-ppc64le.concurrency: "2"
 
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from f97e2fa2 to eeef09fa on Fri Aug 16 09:05:18 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e17a80a5..d27f4147 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -34,9 +34,10 @@ data:
     linux-c8xlarge/arm64,\
     linux/s390x,\
     linux-root/arm64,\
-    linux-root/amd64\
+    linux-root/amd64,\
+    linux/ppc64le\
     "
-  dynamic-pool-platforms: linux/ppc64le
+  #dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -293,16 +294,16 @@ data:
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
   dynamic.linux-ppc64le.key: "konflux-infra"
-  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.image: "konflux-stage-ppc-base-os-08-16-2024"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
   dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
-  dynamic.linux-ppc64le.system: "e980"
-  dynamic.linux-ppc64le.cores: "0.25"
-  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.system: "s922"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
   dynamic.linux-ppc64le.max-instances: "2"
-  dynamic.linux-ppc64le.max-age: "120"
-  dynamic.linux-ppc64le.concurrency: "2"
+  # dynamic.linux-ppc64le.max-age: "120"
+  # dynamic.linux-ppc64le.concurrency: "2"
 
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from f97e2fa2 to eeef09fa on Fri Aug 16 09:05:18 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e17a80a5..d27f4147 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -34,9 +34,10 @@ data:
     linux-c8xlarge/arm64,\
     linux/s390x,\
     linux-root/arm64,\
-    linux-root/amd64\
+    linux-root/amd64,\
+    linux/ppc64le\
     "
-  dynamic-pool-platforms: linux/ppc64le
+  #dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -293,16 +294,16 @@ data:
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
   dynamic.linux-ppc64le.key: "konflux-infra"
-  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.image: "konflux-stage-ppc-base-os-08-16-2024"
   dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
   dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
   dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
-  dynamic.linux-ppc64le.system: "e980"
-  dynamic.linux-ppc64le.cores: "0.25"
-  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.system: "s922"
+  dynamic.linux-ppc64le.cores: "2"
+  dynamic.linux-ppc64le.memory: "8"
   dynamic.linux-ppc64le.max-instances: "2"
-  dynamic.linux-ppc64le.max-age: "120"
-  dynamic.linux-ppc64le.concurrency: "2"
+  # dynamic.linux-ppc64le.max-age: "120"
+  # dynamic.linux-ppc64le.concurrency: "2"
 
   # host.ppc1.address: "10.130.72.222"
   # host.ppc1.platform: "linux/ppc64le" 
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
<h3>4: Production changes from 0b70b295 to f97e2fa2 on Fri Aug 16 07:43:22 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index a2052429..8cd46677 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
+    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 0a6a1e7e..f81e2ddb 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:fe84827"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-0b70b295/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
459,463c459
<             "branchPrefix": "konflux/references/",
<             "group": {
<               "branchTopic": "{{{baseBranch}}}",
<               "commitMessageTopic": "{{{groupName}}}"
<             },
---
>             "branchName": "konflux/references/{{baseBranch}}",
627,628c623,624
<           value: quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7
<         image: quay.io/konflux-ci/mintmaker:3f8721be249d10e09cefea11a945dd5fe6714615
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:fe84827
>         image: quay.io/konflux-ci/mintmaker:bc582566fb7289479284adf75f2c51c0d56b9207
./commit-0b70b295/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
459,463c459
<             "branchPrefix": "konflux/references/",
<             "group": {
<               "branchTopic": "{{{baseBranch}}}",
<               "commitMessageTopic": "{{{groupName}}}"
<             },
---
>             "branchName": "konflux/references/{{baseBranch}}",
627,628c623,624
<           value: quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7
<         image: quay.io/konflux-ci/mintmaker:3f8721be249d10e09cefea11a945dd5fe6714615
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:fe84827
>         image: quay.io/konflux-ci/mintmaker:bc582566fb7289479284adf75f2c51c0d56b9207 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 0b70b295 to f97e2fa2 on Fri Aug 16 07:43:22 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index a2052429..8cd46677 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
+    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 0a6a1e7e..f81e2ddb 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:fe84827"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 0b70b295 to f97e2fa2 on Fri Aug 16 07:43:22 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index a2052429..8cd46677 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=3f8721be249d10e09cefea11a945dd5fe6714615
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=3f8721be249d10e09cefea11a945dd5fe6714615
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
+    newTag: 3f8721be249d10e09cefea11a945dd5fe6714615
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 0a6a1e7e..f81e2ddb 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:fe84827"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7" 
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
