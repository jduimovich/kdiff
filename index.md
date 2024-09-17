# kustomize changes tracked by commits 
### This file generated at Tue Sep 17 08:06:06 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 380388c4 to 9b0732d2 on Tue Sep 17 07:57:47 2024 </h3>  
 
<details> 
<summary>Git Diff (168 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4fbfbfaf..3bc233ee 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,17 +465,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
     
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f3ebd98c..7bfc0920 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,17 +469,17 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e6247249..a05a0daa 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -343,17 +343,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1223977f..e360956c 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,17 +315,17 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-380388c4/production/components/multi-platform-controller/production/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gdnxlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gadxlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
311,321c311,321
<   dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
<   dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-gdnxlarge-amd64.max-instances: "10"
<   dynamic.linux-gdnxlarge-amd64.region: us-east-1
<   dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-gdnxlarge-amd64.type: aws
<   dynamic.linux-gdnxlarge.user-data: |-
---
>   dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
>   dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
>   dynamic.linux-gadxlarge-amd64.max-instances: "10"
>   dynamic.linux-gadxlarge-amd64.region: us-east-1
>   dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
>   dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
>   dynamic.linux-gadxlarge-amd64.type: aws
>   dynamic.linux-gadxlarge.user-data: |- 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 380388c4 to 9b0732d2 on Tue Sep 17 07:57:47 2024 </h3>  
 
<details> 
<summary>Git Diff (168 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4fbfbfaf..3bc233ee 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,17 +465,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
     
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f3ebd98c..7bfc0920 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,17 +469,17 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e6247249..a05a0daa 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -343,17 +343,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1223977f..e360956c 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,17 +315,17 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-380388c4/staging/components/multi-platform-controller/staging/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gdnxlarge/amd64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gadxlarge/amd64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
289,299c289,299
<   dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
<   dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-gdnxlarge-amd64.max-instances: "10"
<   dynamic.linux-gdnxlarge-amd64.region: us-east-1
<   dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-gdnxlarge-amd64.type: aws
<   dynamic.linux-gdnxlarge.user-data: |-
---
>   dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
>   dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
>   dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
>   dynamic.linux-gadxlarge-amd64.max-instances: "10"
>   dynamic.linux-gadxlarge-amd64.region: us-east-1
>   dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
>   dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
>   dynamic.linux-gadxlarge-amd64.type: aws
>   dynamic.linux-gadxlarge.user-data: |- 
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
<h3>1: Development changes from 380388c4 to 9b0732d2 on Tue Sep 17 07:57:47 2024 </h3>  
 
<details> 
<summary>Git Diff (168 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4fbfbfaf..3bc233ee 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -465,17 +465,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
   # AWS GPU Nodes
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
     
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index f3ebd98c..7bfc0920 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -469,17 +469,17 @@ data:
   # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e6247249..a05a0daa 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -343,17 +343,17 @@ data:
   host.ibm-gpu-amd64.concurrency: "4"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gdnxlarge.user-data: |-
     Content-Type: multipart/mixed; boundary="//"
     MIME-Version: 1.0
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1223977f..e360956c 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,7 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux-gadxlarge/amd64,\
+    linux-gdnxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -315,17 +315,17 @@ data:
   dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
-  dynamic.linux-gadxlarge-amd64.type: aws
-  dynamic.linux-gadxlarge-amd64.region: us-east-1
-  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
-  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
-  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-gadxlarge-amd64.max-instances: "10"
-  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
-  dynamic.linux-gadxlarge.user-data: |-
+  dynamic.linux-gdnxlarge-amd64.type: aws
+  dynamic.linux-gdnxlarge-amd64.region: us-east-1
+  dynamic.linux-gdnxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gdnxlarge-amd64.instance-type: g4dn.xlarge
+  dynamic.linux-gdnxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gdnxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gdnxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gdnxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gdnxlarge-amd64.max-instances: "10"
+  dynamic.linux-gdnxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gdnxlarge.user-data: |-
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 40d9488e to 380388c4 on Tue Sep 17 07:13:42 2024 </h3>  
 
<details> 
<summary>Git Diff (368 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 069de7d4..4fbfbfaf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -462,3 +463,79 @@ data:
   host.ibm-gpu-amd64.user: "root"
   host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4"
+
+  # AWS GPU Nodes
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 44df38b4..f3ebd98c 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -466,3 +467,79 @@ data:
   # dynamic.linux-s390x.profile: "bz2-2x8"
   # dynamic.linux-s390x.max-instances: "20"
   # dynamic.linux-s390x.private-ip: "false"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 1b70b7f5..e6247249 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -340,3 +341,79 @@ data:
   host.ibm-gpu-amd64.user: "root"
   host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index c482119c..1223977f 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -312,3 +313,79 @@ data:
   dynamic.linux-s390x.profile: "bz2-2x8"
   dynamic.linux-s390x.max-instances: "4"
   dynamic.linux-s390x.private-ip: "false"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//-- 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-40d9488e/production/components/multi-platform-controller/production/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gadxlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
311,384d310
<   dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
<   dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-gadxlarge-amd64.max-instances: "10"
<   dynamic.linux-gadxlarge-amd64.region: us-east-1
<   dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-gadxlarge-amd64.type: aws
<   dynamic.linux-gadxlarge.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<      echo "File system exists on the disk."
<     else
<      echo "No file system found on the disk /dev/nvme1n1"
<      mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<      echo "Directory '/home/var-lib-containers' exist"
<     else
<      echo "Directory '/home/var-lib-containers' doesn't exist"
<      mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<      echo "Directory '/home/var-tmp' exist"
<     else
<      echo "Directory '/home/var-tmp' doesn't exist"
<      mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<     echo "ec2-user home exists"
<     else
<     echo "ec2-user home doesn't exist"
<     mkdir -p /home/ec2-user/.ssh
<     chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     --//-- 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 40d9488e to 380388c4 on Tue Sep 17 07:13:42 2024 </h3>  
 
<details> 
<summary>Git Diff (368 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 069de7d4..4fbfbfaf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -462,3 +463,79 @@ data:
   host.ibm-gpu-amd64.user: "root"
   host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4"
+
+  # AWS GPU Nodes
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 44df38b4..f3ebd98c 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -466,3 +467,79 @@ data:
   # dynamic.linux-s390x.profile: "bz2-2x8"
   # dynamic.linux-s390x.max-instances: "20"
   # dynamic.linux-s390x.private-ip: "false"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 1b70b7f5..e6247249 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -340,3 +341,79 @@ data:
   host.ibm-gpu-amd64.user: "root"
   host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index c482119c..1223977f 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -312,3 +313,79 @@ data:
   dynamic.linux-s390x.profile: "bz2-2x8"
   dynamic.linux-s390x.max-instances: "4"
   dynamic.linux-s390x.private-ip: "false"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//-- 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-40d9488e/staging/components/multi-platform-controller/staging/kustomize.out.yaml
188c188
<   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-gadxlarge/amd64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux-mlarge/amd64,linux-mlarge/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64,linux/s390x
289,362d288
<   dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
<   dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-gadxlarge-amd64.max-instances: "10"
<   dynamic.linux-gadxlarge-amd64.region: us-east-1
<   dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-gadxlarge-amd64.type: aws
<   dynamic.linux-gadxlarge.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<      echo "File system exists on the disk."
<     else
<      echo "No file system found on the disk /dev/nvme1n1"
<      mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<      echo "Directory '/home/var-lib-containers' exist"
<     else
<      echo "Directory '/home/var-lib-containers' doesn't exist"
<      mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<      echo "Directory '/home/var-tmp' exist"
<     else
<      echo "Directory '/home/var-tmp' doesn't exist"
<      mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<     echo "ec2-user home exists"
<     else
<     echo "ec2-user home doesn't exist"
<     mkdir -p /home/ec2-user/.ssh
<     chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     --//-- 
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
<h3>2: Development changes from 40d9488e to 380388c4 on Tue Sep 17 07:13:42 2024 </h3>  
 
<details> 
<summary>Git Diff (368 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 069de7d4..4fbfbfaf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux/s390x,\
@@ -462,3 +463,79 @@ data:
   host.ibm-gpu-amd64.user: "root"
   host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4"
+
+  # AWS GPU Nodes
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 44df38b4..f3ebd98c 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
@@ -466,3 +467,79 @@ data:
   # dynamic.linux-s390x.profile: "bz2-2x8"
   # dynamic.linux-s390x.max-instances: "20"
   # dynamic.linux-s390x.private-ip: "false"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 1b70b7f5..e6247249 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux/s390x,\
     linux-root/arm64,\
     linux-root/amd64\
@@ -340,3 +341,79 @@ data:
   host.ibm-gpu-amd64.user: "root"
   host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index c482119c..1223977f 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -32,6 +32,7 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
+    linux-gadxlarge/amd64,\
     linux-g4xlarge/amd64,\
     linux-root/arm64,\
     linux-root/amd64,\
@@ -312,3 +313,79 @@ data:
   dynamic.linux-s390x.profile: "bz2-2x8"
   dynamic.linux-s390x.max-instances: "4"
   dynamic.linux-s390x.private-ip: "false"
+
+# GPU Instances
+  dynamic.linux-gadxlarge-amd64.type: aws
+  dynamic.linux-gadxlarge-amd64.region: us-east-1
+  dynamic.linux-gadxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-gadxlarge-amd64.instance-type: g4ad.xlarge
+  dynamic.linux-gadxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-gadxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-gadxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-gadxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-gadxlarge-amd64.max-instances: "10"
+  dynamic.linux-gadxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-gadxlarge.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//-- 
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
<h3>3: Production changes from e7a67669 to 40d9488e on Mon Sep 16 14:29:38 2024 </h3>  
 
<details> 
<summary>Git Diff (1299 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
new file mode 100644
index 00000000..c2bd61b6
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
new file mode 100644
index 00000000..21bea3b5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudioxlarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudioxlarge-clusterresources-884010306-3180033938
+  namespaces:
+  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  spaceRoles:
+    admin:
+      templateRef: appstudioxlarge-admin-884010306-849337768
+    contributor:
+      templateRef: appstudioxlarge-contributor-884010306-829105171
+    maintainer:
+      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+    viewer:
+      templateRef: appstudioxlarge-viewer-884010306-4256863455
+status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
new file mode 100644
index 00000000..926ab7e8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-884010306-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
new file mode 100644
index 00000000..122d9eb3
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-884010306-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-3180033938
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
new file mode 100644
index 00000000..2d6c3044
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-884010306-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
new file mode 100644
index 00000000..7625b003
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
@@ -0,0 +1,203 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-1904354742
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-1904354742
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
new file mode 100644
index 00000000..706c2802
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-649666048
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-649666048
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
new file mode 100644
index 00000000..0a57e9bc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-884010306-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
index fbfec5f3..12e94ab3 100644
--- a/components/sandbox/tiers/production/kustomization.yaml
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -8,4 +8,5 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- appstudioxlarge
 - konflux-eaas 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from e7a67669 to 40d9488e on Mon Sep 16 14:29:38 2024 </h3>  
 
<details> 
<summary>Git Diff (1299 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
new file mode 100644
index 00000000..c2bd61b6
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
new file mode 100644
index 00000000..21bea3b5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudioxlarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudioxlarge-clusterresources-884010306-3180033938
+  namespaces:
+  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  spaceRoles:
+    admin:
+      templateRef: appstudioxlarge-admin-884010306-849337768
+    contributor:
+      templateRef: appstudioxlarge-contributor-884010306-829105171
+    maintainer:
+      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+    viewer:
+      templateRef: appstudioxlarge-viewer-884010306-4256863455
+status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
new file mode 100644
index 00000000..926ab7e8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-884010306-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
new file mode 100644
index 00000000..122d9eb3
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-884010306-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-3180033938
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
new file mode 100644
index 00000000..2d6c3044
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-884010306-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
new file mode 100644
index 00000000..7625b003
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
@@ -0,0 +1,203 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-1904354742
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-1904354742
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
new file mode 100644
index 00000000..706c2802
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-649666048
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-649666048
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
new file mode 100644
index 00000000..0a57e9bc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-884010306-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
index fbfec5f3..12e94ab3 100644
--- a/components/sandbox/tiers/production/kustomization.yaml
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -8,4 +8,5 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- appstudioxlarge
 - konflux-eaas 
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
<h3>3: Development changes from e7a67669 to 40d9488e on Mon Sep 16 14:29:38 2024 </h3>  
 
<details> 
<summary>Git Diff (1299 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
new file mode 100644
index 00000000..c2bd61b6
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
new file mode 100644
index 00000000..21bea3b5
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudioxlarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudioxlarge-clusterresources-884010306-3180033938
+  namespaces:
+  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  spaceRoles:
+    admin:
+      templateRef: appstudioxlarge-admin-884010306-849337768
+    contributor:
+      templateRef: appstudioxlarge-contributor-884010306-829105171
+    maintainer:
+      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+    viewer:
+      templateRef: appstudioxlarge-viewer-884010306-4256863455
+status: {}
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
new file mode 100644
index 00000000..926ab7e8
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-884010306-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
new file mode 100644
index 00000000..122d9eb3
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-884010306-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-3180033938
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
new file mode 100644
index 00000000..2d6c3044
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-884010306-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
new file mode 100644
index 00000000..7625b003
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
@@ -0,0 +1,203 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-1904354742
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-1904354742
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
new file mode 100644
index 00000000..706c2802
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-649666048
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-649666048
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
new file mode 100644
index 00000000..0a57e9bc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-884010306-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/production/kustomization.yaml b/components/sandbox/tiers/production/kustomization.yaml
index fbfec5f3..12e94ab3 100644
--- a/components/sandbox/tiers/production/kustomization.yaml
+++ b/components/sandbox/tiers/production/kustomization.yaml
@@ -8,4 +8,5 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- appstudioxlarge
 - konflux-eaas 
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
<h3>4: Production changes from ea9da64f to e7a67669 on Mon Sep 16 13:56:36 2024 </h3>  
 
<details> 
<summary>Git Diff (1323 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
new file mode 100644
index 00000000..83a4fa40
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
@@ -0,0 +1,18 @@
+from: appstudio
+parameters:
+- name: CONFIGMAP_QUOTA
+  value: "300"
+- name: SECRET_QUOTA
+  value: "900"
+- name: CPU_BUILD_LIMIT
+  value: "960"
+- name: CPU_BUILD_REQUEST
+  value: "480"
+- name: MEMORY_BUILD_LIMIT
+  value: "1024Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "512Gi"
+- name: COUNT_PVC
+  value: "360"
+- name: REQUEST_STORAGE
+  value: "400Gi"
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
new file mode 100644
index 00000000..c2bd61b6
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
new file mode 100644
index 00000000..21bea3b5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudioxlarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudioxlarge-clusterresources-884010306-3180033938
+  namespaces:
+  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  spaceRoles:
+    admin:
+      templateRef: appstudioxlarge-admin-884010306-849337768
+    contributor:
+      templateRef: appstudioxlarge-contributor-884010306-829105171
+    maintainer:
+      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+    viewer:
+      templateRef: appstudioxlarge-viewer-884010306-4256863455
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
new file mode 100644
index 00000000..926ab7e8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-884010306-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
new file mode 100644
index 00000000..122d9eb3
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-884010306-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-3180033938
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
new file mode 100644
index 00000000..2d6c3044
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-884010306-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
new file mode 100644
index 00000000..7625b003
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
@@ -0,0 +1,203 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-1904354742
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-1904354742
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
new file mode 100644
index 00000000..706c2802
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-649666048
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-649666048
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
new file mode 100644
index 00000000..0a57e9bc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-884010306-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
index fbfec5f3..12e94ab3 100644
--- a/components/sandbox/tiers/staging/kustomization.yaml
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -8,4 +8,5 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- appstudioxlarge
 - konflux-eaas 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ea9da64f to e7a67669 on Mon Sep 16 13:56:36 2024 </h3>  
 
<details> 
<summary>Git Diff (1323 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
new file mode 100644
index 00000000..83a4fa40
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
@@ -0,0 +1,18 @@
+from: appstudio
+parameters:
+- name: CONFIGMAP_QUOTA
+  value: "300"
+- name: SECRET_QUOTA
+  value: "900"
+- name: CPU_BUILD_LIMIT
+  value: "960"
+- name: CPU_BUILD_REQUEST
+  value: "480"
+- name: MEMORY_BUILD_LIMIT
+  value: "1024Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "512Gi"
+- name: COUNT_PVC
+  value: "360"
+- name: REQUEST_STORAGE
+  value: "400Gi"
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
new file mode 100644
index 00000000..c2bd61b6
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
new file mode 100644
index 00000000..21bea3b5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudioxlarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudioxlarge-clusterresources-884010306-3180033938
+  namespaces:
+  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  spaceRoles:
+    admin:
+      templateRef: appstudioxlarge-admin-884010306-849337768
+    contributor:
+      templateRef: appstudioxlarge-contributor-884010306-829105171
+    maintainer:
+      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+    viewer:
+      templateRef: appstudioxlarge-viewer-884010306-4256863455
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
new file mode 100644
index 00000000..926ab7e8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-884010306-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
new file mode 100644
index 00000000..122d9eb3
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-884010306-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-3180033938
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
new file mode 100644
index 00000000..2d6c3044
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-884010306-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
new file mode 100644
index 00000000..7625b003
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
@@ -0,0 +1,203 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-1904354742
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-1904354742
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
new file mode 100644
index 00000000..706c2802
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-649666048
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-649666048
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
new file mode 100644
index 00000000..0a57e9bc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-884010306-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
index fbfec5f3..12e94ab3 100644
--- a/components/sandbox/tiers/staging/kustomization.yaml
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -8,4 +8,5 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- appstudioxlarge
 - konflux-eaas 
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
<h3>4: Development changes from ea9da64f to e7a67669 on Mon Sep 16 13:56:36 2024 </h3>  
 
<details> 
<summary>Git Diff (1323 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
new file mode 100644
index 00000000..83a4fa40
--- /dev/null
+++ b/components/sandbox/tiers/src/appstudioxlarge/based_on_tier.yaml
@@ -0,0 +1,18 @@
+from: appstudio
+parameters:
+- name: CONFIGMAP_QUOTA
+  value: "300"
+- name: SECRET_QUOTA
+  value: "900"
+- name: CPU_BUILD_LIMIT
+  value: "960"
+- name: CPU_BUILD_REQUEST
+  value: "480"
+- name: MEMORY_BUILD_LIMIT
+  value: "1024Gi"
+- name: MEMORY_BUILD_REQUEST
+  value: "512Gi"
+- name: COUNT_PVC
+  value: "360"
+- name: REQUEST_STORAGE
+  value: "400Gi"
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
new file mode 100644
index 00000000..c2bd61b6
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/kustomization.yaml
@@ -0,0 +1,14 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- nstemplatetier-appstudioxlarge.yaml
+- tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
+- tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
+- tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
+- tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
+- tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
+- tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
new file mode 100644
index 00000000..21bea3b5
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/nstemplatetier-appstudioxlarge.yaml
@@ -0,0 +1,24 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: NSTemplateTier
+metadata:
+  name: appstudioxlarge
+  namespace: toolchain-host-operator
+spec:
+  clusterResources:
+    templateRef: appstudioxlarge-clusterresources-884010306-3180033938
+  namespaces:
+  - templateRef: appstudioxlarge-tenant-884010306-649666048
+  spaceRoles:
+    admin:
+      templateRef: appstudioxlarge-admin-884010306-849337768
+    contributor:
+      templateRef: appstudioxlarge-contributor-884010306-829105171
+    maintainer:
+      templateRef: appstudioxlarge-maintainer-884010306-1904354742
+    viewer:
+      templateRef: appstudioxlarge-viewer-884010306-4256863455
+status: {}
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
new file mode 100644
index 00000000..926ab7e8
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-admin-884010306-849337768.yaml
@@ -0,0 +1,281 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-admin-884010306-849337768
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-849337768
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-admin-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+        - deletecollection
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        - integrationtestscenarios
+        - releases
+        - releasestrategies
+        - releaseplans
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - secrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resourceNames:
+        - appstudio-pipeline
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - watch
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - pods/exec
+        verbs:
+        - create
+      - apiGroups:
+        - toolchain.dev.openshift.com
+        resources:
+        - spacebindingrequests
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - external-secrets.io
+        resources:
+        - secretstores
+        - externalsecrets
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - rbac.authorization.k8s.io
+        resources:
+        - roles
+        - rolebindings
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts
+        verbs:
+        - get
+        - list
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - ""
+        resources:
+        - serviceaccounts/token
+        verbs:
+        - create
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-admin-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-admin-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: admin
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
new file mode 100644
index 00000000..122d9eb3
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-clusterresources-884010306-3180033938.yaml
@@ -0,0 +1,88 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-clusterresources-884010306-3180033938
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-3180033938
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: ${{SECRET_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: ${{CONFIGMAP_QUOTA}}
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+    - name: CONFIGMAP_QUOTA
+      value: "300"
+    - name: SECRET_QUOTA
+      value: "900"
+  tierName: appstudioxlarge
+  type: clusterresources
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
new file mode 100644
index 00000000..2d6c3044
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-contributor-884010306-829105171.yaml
@@ -0,0 +1,181 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-contributor-884010306-829105171
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-829105171
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-contributor-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-contributor-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-contributor-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: contributor
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
new file mode 100644
index 00000000..7625b003
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-maintainer-884010306-1904354742.yaml
@@ -0,0 +1,203 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-maintainer-884010306-1904354742
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-1904354742
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-maintainer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - imagerepositories
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+        - create
+        - update
+        - patch
+        - delete
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-maintainer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-maintainer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: maintainer
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
new file mode 100644
index 00000000..706c2802
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-tenant-884010306-649666048.yaml
@@ -0,0 +1,270 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-tenant-884010306-649666048
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-649666048
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "960"
+    - name: CPU_BUILD_REQUEST
+      value: "480"
+    - name: MEMORY_BUILD_LIMIT
+      value: 1024Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 512Gi
+    - name: COUNT_PVC
+      value: "360"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudioxlarge
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
new file mode 100644
index 00000000..0a57e9bc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudioxlarge/tiertemplate-appstudioxlarge-viewer-884010306-4256863455.yaml
@@ -0,0 +1,180 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudioxlarge-viewer-884010306-4256863455
+  namespace: toolchain-host-operator
+spec:
+  revision: 884010306-4256863455
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: Role
+      metadata:
+        name: appstudio-viewer-user-actions
+        namespace: ${NAMESPACE}
+      rules:
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - applications
+        - components
+        - componentdetectionqueries
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - promotionruns
+        - snapshotenvironmentbindings
+        - snapshots
+        - environments
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - deploymenttargets
+        - deploymenttargetclaims
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - managed-gitops.redhat.com
+        resources:
+        - gitopsdeployments
+        - gitopsdeploymentmanagedenvironments
+        - gitopsdeploymentrepositorycredentials
+        - gitopsdeploymentsyncruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - tekton.dev
+        resources:
+        - pipelineruns
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - results.tekton.dev
+        resources:
+        - results
+        - records
+        - logs
+        verbs:
+        - get
+        - list
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - integrationtestscenarios
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - enterprisecontractpolicies
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releases
+        - releasestrategies
+        - releaseplans
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - releaseplanadmissions
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - jvmbuildservice.io
+        resources:
+        - jbsconfigs
+        - artifactbuilds
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - ""
+        resources:
+        - configmaps
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - appstudio.redhat.com
+        resources:
+        - buildpipelineselectors
+        verbs:
+        - get
+        - list
+        - watch
+      - apiGroups:
+        - projctl.konflux.dev
+        resources:
+        - projects
+        - projectdevelopmentstreams
+        - projectdevelopmentstreamtemplates
+        verbs:
+        - get
+        - list
+        - watch
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-viewer-${USERNAME}-actions-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: Role
+        name: appstudio-viewer-user-actions
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-${USERNAME}-view-user
+        namespace: ${NAMESPACE}
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: view
+      subjects:
+      - kind: User
+        name: ${USERNAME}
+    parameters:
+    - name: NAMESPACE
+      required: true
+    - name: USERNAME
+      required: true
+  tierName: appstudioxlarge
+  type: viewer
diff --git a/components/sandbox/tiers/staging/kustomization.yaml b/components/sandbox/tiers/staging/kustomization.yaml
index fbfec5f3..12e94ab3 100644
--- a/components/sandbox/tiers/staging/kustomization.yaml
+++ b/components/sandbox/tiers/staging/kustomization.yaml
@@ -8,4 +8,5 @@ resources:
 - appstudio
 - appstudio-env
 - appstudiolarge
+- appstudioxlarge
 - konflux-eaas 
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
