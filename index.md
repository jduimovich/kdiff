# kustomize changes tracked by commits 
### This file generated at Fri Oct  4 08:04:53 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 709de158 to a8ebf8e6 on Fri Oct 4 07:06:09 2024 </h3>  
 
<details> 
<summary>Git Diff (225 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 8ec11e4d..3e558668 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -49,7 +49,7 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.max-instances: "50"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-arm64.type: aws
@@ -60,7 +60,7 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.max-instances: "50"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-arm64.type: aws
@@ -71,7 +71,7 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.max-instances: "50"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-arm64.type: aws
@@ -82,7 +82,7 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.max-instances: "50"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-arm64.type: aws
@@ -93,7 +93,7 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.max-instances: "50"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-arm64.type: aws
@@ -104,7 +104,7 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.max-instances: "50"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-amd64.type: aws
@@ -115,7 +115,7 @@ data:
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.max-instances: "50"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-amd64.type: aws
@@ -126,7 +126,7 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.max-instances: "50"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-amd64.type: aws
@@ -137,7 +137,7 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.max-instances: "50"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-amd64.type: aws
@@ -148,7 +148,7 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.max-instances: "50"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-amd64.type: aws
@@ -159,7 +159,7 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.max-instances: "50"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-amd64.type: aws
@@ -170,7 +170,7 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.max-instances: "50"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   # cpu:memory (1:2)
@@ -182,7 +182,7 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.max-instances: "50"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-arm64.type: aws
@@ -193,7 +193,7 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.max-instances: "50"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-arm64.type: aws
@@ -204,7 +204,7 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.max-instances: "50"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-arm64.type: aws
@@ -215,7 +215,7 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.max-instances: "50"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-cxlarge-amd64.type: aws
@@ -226,7 +226,7 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.max-instances: "50"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-amd64.type: aws
@@ -237,7 +237,7 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.max-instances: "50"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-amd64.type: aws
@@ -248,7 +248,7 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.max-instances: "50"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-amd64.type: aws
@@ -259,7 +259,7 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.max-instances: "50"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
@@ -271,7 +271,7 @@ data:
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.max-instances: "50"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-arm64.disk: "200"
   dynamic.linux-root-arm64.iops: "16000"
@@ -286,7 +286,7 @@ data:
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.max-instances: "50"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
@@ -457,13 +457,6 @@ data:
   host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
   host.power-konflux-prod-large-2.concurrency: "1"
 
-  #IBM GPU Node
-  # host.ibm-gpu-amd64.address: "10.130.81.14"
-  # host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
-  # host.ibm-gpu-amd64.user: "root"
-  # host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
-  # host.ibm-gpu-amd64.concurrency: "4"
-
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
@@ -474,7 +467,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.max-instances: "50"
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
<h3>1: Staging changes from 709de158 to a8ebf8e6 on Fri Oct 4 07:06:09 2024 </h3>  
 
<details> 
<summary>Git Diff (225 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 8ec11e4d..3e558668 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -49,7 +49,7 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.max-instances: "50"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-arm64.type: aws
@@ -60,7 +60,7 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.max-instances: "50"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-arm64.type: aws
@@ -71,7 +71,7 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.max-instances: "50"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-arm64.type: aws
@@ -82,7 +82,7 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.max-instances: "50"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-arm64.type: aws
@@ -93,7 +93,7 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.max-instances: "50"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-arm64.type: aws
@@ -104,7 +104,7 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.max-instances: "50"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-amd64.type: aws
@@ -115,7 +115,7 @@ data:
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.max-instances: "50"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-amd64.type: aws
@@ -126,7 +126,7 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.max-instances: "50"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-amd64.type: aws
@@ -137,7 +137,7 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.max-instances: "50"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-amd64.type: aws
@@ -148,7 +148,7 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.max-instances: "50"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-amd64.type: aws
@@ -159,7 +159,7 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.max-instances: "50"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-amd64.type: aws
@@ -170,7 +170,7 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.max-instances: "50"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   # cpu:memory (1:2)
@@ -182,7 +182,7 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.max-instances: "50"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-arm64.type: aws
@@ -193,7 +193,7 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.max-instances: "50"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-arm64.type: aws
@@ -204,7 +204,7 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.max-instances: "50"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-arm64.type: aws
@@ -215,7 +215,7 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.max-instances: "50"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-cxlarge-amd64.type: aws
@@ -226,7 +226,7 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.max-instances: "50"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-amd64.type: aws
@@ -237,7 +237,7 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.max-instances: "50"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-amd64.type: aws
@@ -248,7 +248,7 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.max-instances: "50"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-amd64.type: aws
@@ -259,7 +259,7 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.max-instances: "50"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
@@ -271,7 +271,7 @@ data:
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.max-instances: "50"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-arm64.disk: "200"
   dynamic.linux-root-arm64.iops: "16000"
@@ -286,7 +286,7 @@ data:
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.max-instances: "50"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
@@ -457,13 +457,6 @@ data:
   host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
   host.power-konflux-prod-large-2.concurrency: "1"
 
-  #IBM GPU Node
-  # host.ibm-gpu-amd64.address: "10.130.81.14"
-  # host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
-  # host.ibm-gpu-amd64.user: "root"
-  # host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
-  # host.ibm-gpu-amd64.concurrency: "4"
-
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
@@ -474,7 +467,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.max-instances: "50"
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 709de158 to a8ebf8e6 on Fri Oct 4 07:06:09 2024 </h3>  
 
<details> 
<summary>Git Diff (225 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 8ec11e4d..3e558668 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -49,7 +49,7 @@ data:
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.max-instances: "50"
   dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-arm64.type: aws
@@ -60,7 +60,7 @@ data:
   dynamic.linux-mlarge-arm64.aws-secret: aws-account
   dynamic.linux-mlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-arm64.max-instances: "10"
+  dynamic.linux-mlarge-arm64.max-instances: "50"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-arm64.type: aws
@@ -71,7 +71,7 @@ data:
   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.max-instances: "50"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-arm64.type: aws
@@ -82,7 +82,7 @@ data:
   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.max-instances: "50"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-arm64.type: aws
@@ -93,7 +93,7 @@ data:
   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.max-instances: "50"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-arm64.type: aws
@@ -104,7 +104,7 @@ data:
   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.max-instances: "50"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-amd64.type: aws
@@ -115,7 +115,7 @@ data:
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.max-instances: "50"
   dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mlarge-amd64.type: aws
@@ -126,7 +126,7 @@ data:
   dynamic.linux-mlarge-amd64.aws-secret: aws-account
   dynamic.linux-mlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mlarge-amd64.max-instances: "10"
+  dynamic.linux-mlarge-amd64.max-instances: "50"
   dynamic.linux-mlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-mxlarge-amd64.type: aws
@@ -137,7 +137,7 @@ data:
   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-mxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.max-instances: "50"
   dynamic.linux-mxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m2xlarge-amd64.type: aws
@@ -148,7 +148,7 @@ data:
   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.max-instances: "50"
   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m4xlarge-amd64.type: aws
@@ -159,7 +159,7 @@ data:
   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.max-instances: "50"
   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-m8xlarge-amd64.type: aws
@@ -170,7 +170,7 @@ data:
   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-m8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.max-instances: "50"
   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   # cpu:memory (1:2)
@@ -182,7 +182,7 @@ data:
   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.max-instances: "50"
   dynamic.linux-cxlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-arm64.type: aws
@@ -193,7 +193,7 @@ data:
   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.max-instances: "50"
   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-arm64.type: aws
@@ -204,7 +204,7 @@ data:
   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.max-instances: "50"
   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-arm64.type: aws
@@ -215,7 +215,7 @@ data:
   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.max-instances: "50"
   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-cxlarge-amd64.type: aws
@@ -226,7 +226,7 @@ data:
   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-cxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.max-instances: "50"
   dynamic.linux-cxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c2xlarge-amd64.type: aws
@@ -237,7 +237,7 @@ data:
   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c2xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.max-instances: "50"
   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c4xlarge-amd64.type: aws
@@ -248,7 +248,7 @@ data:
   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c4xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.max-instances: "50"
   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-c8xlarge-amd64.type: aws
@@ -259,7 +259,7 @@ data:
   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-c8xlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.max-instances: "50"
   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
 
   dynamic.linux-root-arm64.type: aws
@@ -271,7 +271,7 @@ data:
   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
   dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.max-instances: "50"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-arm64.disk: "200"
   dynamic.linux-root-arm64.iops: "16000"
@@ -286,7 +286,7 @@ data:
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.max-instances: "50"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman, /usr/bin/rm /usr/share/containers/mounts.conf"
   dynamic.linux-root-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
@@ -457,13 +457,6 @@ data:
   host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
   host.power-konflux-prod-large-2.concurrency: "1"
 
-  #IBM GPU Node
-  # host.ibm-gpu-amd64.address: "10.130.81.14"
-  # host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
-  # host.ibm-gpu-amd64.user: "root"
-  # host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
-  # host.ibm-gpu-amd64.concurrency: "4"
-
   # AWS GPU Nodes
   dynamic.linux-g6xlarge-amd64.type: aws
   dynamic.linux-g6xlarge-amd64.region: us-east-1
@@ -474,7 +467,7 @@ data:
   dynamic.linux-g6xlarge-amd64.ssh-secret: aws-ssh-key
   dynamic.linux-g6xlarge-amd64.security-group-id: sg-0903aedd465be979e
   dynamic.linux-g6xlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-g6xlarge-amd64.max-instances: "10"
+  dynamic.linux-g6xlarge-amd64.max-instances: "50"
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
<h3>2: Production changes from c496182c to 709de158 on Thu Oct 3 19:18:21 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index ade79e52..896e3f8b 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -40,3 +40,13 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-c496182c/production/components/release/production/kustomize.out.yaml
939,948d938
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch 
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
<h3>2: Staging changes from c496182c to 709de158 on Thu Oct 3 19:18:21 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index ade79e52..896e3f8b 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -40,3 +40,13 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-c496182c/staging/components/release/staging/kustomize.out.yaml
939,948d938
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch 
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
<h3>2: Development changes from c496182c to 709de158 on Thu Oct 3 19:18:21 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/release/base/release-pipeline-resources-clusterrole.yaml b/components/release/base/release-pipeline-resources-clusterrole.yaml
index ade79e52..896e3f8b 100644
--- a/components/release/base/release-pipeline-resources-clusterrole.yaml
+++ b/components/release/base/release-pipeline-resources-clusterrole.yaml
@@ -40,3 +40,13 @@ rules:
   - get
   - list
   - watch
+- apiGroups:
+  - tekton.dev
+  resources:
+  - pipelineruns
+  verbs:
+  - create
+  - delete
+  - get
+  - list
+  - watch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-c496182c/development/components/release/development/kustomize.out.yaml
1050,1059d1049
< - apiGroups:
<   - tekton.dev
<   resources:
<   - pipelineruns
<   verbs:
<   - create
<   - delete
<   - get
<   - list
<   - watch 
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
<h3>3: Production changes from 5270779a to c496182c on Thu Oct 3 16:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7f7f34a0..ee4c86c1 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 07aca759..1f181718 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=59dd12edc46f43f8d964f64450ee9fa920232f80
+      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5270779a/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
332c332
<   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
---
>   verify_ec_task_git_revision: 59dd12edc46f43f8d964f64450ee9fa920232f80
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720 
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
<h3>3: Staging changes from 5270779a to c496182c on Thu Oct 3 16:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7f7f34a0..ee4c86c1 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 07aca759..1f181718 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=59dd12edc46f43f8d964f64450ee9fa920232f80
+      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5270779a/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
332c332
<   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
---
>   verify_ec_task_git_revision: 59dd12edc46f43f8d964f64450ee9fa920232f80
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720 
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
<h3>3: Development changes from 5270779a to c496182c on Thu Oct 3 16:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (60 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 7f7f34a0..ee4c86c1 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 07aca759..1f181718 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=59dd12edc46f43f8d964f64450ee9fa920232f80
+      - verify_ec_task_git_revision=a17b9ded76c9727a82264af271f5b85f7e2e85ad
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5270779a/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a17b9ded76c9727a82264af271f5b85f7e2e85ad@sha256:f3c47f7d477242b966d90761cb62daa9065330d7cf45234759477b34a8b82d56
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:59dd12edc46f43f8d964f64450ee9fa920232f80@sha256:624071c279da3bddb784b254b84df20bc41fcdb28075fb6acc7ef0944baa7510
332c332
<   verify_ec_task_git_revision: a17b9ded76c9727a82264af271f5b85f7e2e85ad
---
>   verify_ec_task_git_revision: 59dd12edc46f43f8d964f64450ee9fa920232f80
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-5bb17f6@sha256:ddc5aa129e32015625fbd3e119523e54b39be8c227939d94a9a64861ffba66af
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-8b6f1ca@sha256:f69df821c221c167119d3b1e5acd5366b1282a0130c155be6146f5f2b1829ac1
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-f93ecac@sha256:39a82678c838eefcb2c64897c12482b640f6a73443c1c16725de18150e599742
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-1619084@sha256:c908022d12d37ce553a656b3578fc23ef5614bd6479fbd1adb3d0c7635443720 
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
<h3>4: Production changes from 3076d38f to 5270779a on Thu Oct 3 13:44:54 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
index 4c0b9387..8a2795fe 100644
--- a/components/repository-validator/production/kustomization.yaml
+++ b/components/repository-validator/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
-  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=1d1293430f128542c82966c4992622f79de785c9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=4f9859137cd4fc8a21abc0e85eaccf27d40b91f8
 images:
   - name: controller
     newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator 
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
<h3>4: Staging changes from 3076d38f to 5270779a on Thu Oct 3 13:44:54 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
index 4c0b9387..8a2795fe 100644
--- a/components/repository-validator/production/kustomization.yaml
+++ b/components/repository-validator/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
-  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=1d1293430f128542c82966c4992622f79de785c9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=4f9859137cd4fc8a21abc0e85eaccf27d40b91f8
 images:
   - name: controller
     newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator 
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
<h3>4: Development changes from 3076d38f to 5270779a on Thu Oct 3 13:44:54 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/repository-validator/production/kustomization.yaml b/components/repository-validator/production/kustomization.yaml
index 4c0b9387..8a2795fe 100644
--- a/components/repository-validator/production/kustomization.yaml
+++ b/components/repository-validator/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - https://github.com/konflux-ci/repository-validator/config/ocp?ref=1a1bd5856c7caf40ebf3d9a24fce209ba8a74bd9
-  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=1d1293430f128542c82966c4992622f79de785c9
+  - https://github.com/redhat-appstudio/internal-infra-deployments/components/repository-validator/production?ref=4f9859137cd4fc8a21abc0e85eaccf27d40b91f8
 images:
   - name: controller
     newName: quay.io/redhat-user-workloads/konflux-infra-tenant/repository-validator/repository-validator 
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
