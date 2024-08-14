# kustomize changes tracked by commits 
### This file generated at Wed Aug 14 16:11:05 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 58a393f5 to 05fef06d on Wed Aug 14 15:43:49 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 8066fc0b..0f209b15 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,15 +391,27 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4"
+
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-58a393f5/production/components/multi-platform-controller/production/kustomize.out.yaml
176c176
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
467a468,479
>   dynamic.linux-s390x.image-id: r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12
>   dynamic.linux-s390x.key: konflux-s390x-root
>   dynamic.linux-s390x.max-instances: "20"
>   dynamic.linux-s390x.private-ip: "false"
>   dynamic.linux-s390x.profile: bz2-2x8
>   dynamic.linux-s390x.region: us-east-2
>   dynamic.linux-s390x.secret: public-prod-ibm-api-key
>   dynamic.linux-s390x.ssh-secret: ibm-production-s390x-ssh-key
>   dynamic.linux-s390x.subnet: us-east-prod-subnet-0
>   dynamic.linux-s390x.type: ibmz
>   dynamic.linux-s390x.url: https://us-east.iaas.cloud.ibm.com/v1
>   dynamic.linux-s390x.vpc: us-east-default-vpc
518,527d529
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
<   host.sysz-rhtap-prod-1.concurrency: "4"
<   host.sysz-rhtap-prod-1.platform: linux/s390x
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-1.user: root
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
<   host.sysz-rhtap-prod-2.concurrency: "4"
<   host.sysz-rhtap-prod-2.platform: linux/s390x
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-2.user: root 
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
<h3>1: Staging changes from 58a393f5 to 05fef06d on Wed Aug 14 15:43:49 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 8066fc0b..0f209b15 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,15 +391,27 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4"
+
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false" 
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
<h3>1: Development changes from 58a393f5 to 05fef06d on Wed Aug 14 15:43:49 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 8066fc0b..0f209b15 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,15 +391,27 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4"
+
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false" 
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
<h3>2: Production changes from 9776cbdd to 58a393f5 on Wed Aug 14 15:04:28 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6a9b04dc..8deed9b9 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index e17277e9..61d7e75a 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=76ee48a4bb1a998d24da2bf8b83c2f15ecfc0e94
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=ac3fb80ff2eb91505c37d9252eb144eb02de5a67
+      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-9776cbdd/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
388c388
<   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
---
>   verify_ec_task_git_revision: ac3fb80ff2eb91505c37d9252eb144eb02de5a67
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d 
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
<h3>2: Staging changes from 9776cbdd to 58a393f5 on Wed Aug 14 15:04:28 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6a9b04dc..8deed9b9 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index e17277e9..61d7e75a 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=76ee48a4bb1a998d24da2bf8b83c2f15ecfc0e94
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=ac3fb80ff2eb91505c37d9252eb144eb02de5a67
+      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-9776cbdd/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
388c388
<   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
---
>   verify_ec_task_git_revision: ac3fb80ff2eb91505c37d9252eb144eb02de5a67
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d 
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
<h3>2: Development changes from 9776cbdd to 58a393f5 on Wed Aug 14 15:04:28 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6a9b04dc..8deed9b9 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index e17277e9..61d7e75a 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=76ee48a4bb1a998d24da2bf8b83c2f15ecfc0e94
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=ac3fb80ff2eb91505c37d9252eb144eb02de5a67
+      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-9776cbdd/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:ac3fb80ff2eb91505c37d9252eb144eb02de5a67@sha256:294b14582fa0e44f42c7e0651915ca67425488527fa7d9ecb49c3974ede028fc
388c388
<   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
---
>   verify_ec_task_git_revision: ac3fb80ff2eb91505c37d9252eb144eb02de5a67
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a64de53@sha256:fdb8b7e65ca3744d23958dbe9df8cf8ba34c2dd1ebdee6c1c84c3bb72ce83f9d 
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
<h3>3: Production changes from dd015060 to 9776cbdd on Wed Aug 14 13:58:00 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index a0639cf1..8066fc0b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64 #,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,27 +391,15 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-2x8"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "false"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
+  dynamic.linux-s390x.private-ip: "false" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-dd015060/production/components/multi-platform-controller/production/kustomize.out.yaml
176c176
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
468,479d467
<   dynamic.linux-s390x.image-id: r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12
<   dynamic.linux-s390x.key: konflux-s390x-root
<   dynamic.linux-s390x.max-instances: "20"
<   dynamic.linux-s390x.private-ip: "false"
<   dynamic.linux-s390x.profile: bz2-2x8
<   dynamic.linux-s390x.region: us-east-2
<   dynamic.linux-s390x.secret: public-prod-ibm-api-key
<   dynamic.linux-s390x.ssh-secret: ibm-production-s390x-ssh-key
<   dynamic.linux-s390x.subnet: us-east-prod-subnet-0
<   dynamic.linux-s390x.type: ibmz
<   dynamic.linux-s390x.url: https://us-east.iaas.cloud.ibm.com/v1
<   dynamic.linux-s390x.vpc: us-east-default-vpc
529a518,527
>   host.sysz-rhtap-prod-1.address: 169.63.184.30
>   host.sysz-rhtap-prod-1.concurrency: "4"
>   host.sysz-rhtap-prod-1.platform: linux/s390x
>   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-1.user: root
>   host.sysz-rhtap-prod-2.address: 169.59.164.141
>   host.sysz-rhtap-prod-2.concurrency: "4"
>   host.sysz-rhtap-prod-2.platform: linux/s390x
>   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-2.user: root 
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
<h3>3: Staging changes from dd015060 to 9776cbdd on Wed Aug 14 13:58:00 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index a0639cf1..8066fc0b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64 #,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,27 +391,15 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-2x8"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "false"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
+  dynamic.linux-s390x.private-ip: "false" 
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
<h3>3: Development changes from dd015060 to 9776cbdd on Wed Aug 14 13:58:00 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index a0639cf1..8066fc0b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64 #,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,27 +391,15 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-2x8"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "false"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
+  dynamic.linux-s390x.private-ip: "false" 
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
<h3>4: Production changes from 5e5c29d1 to dd015060 on Wed Aug 14 13:20:09 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 8066fc0b..a0639cf1 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64 #,linux/s390x
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,15 +391,27 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-5e5c29d1/production/components/multi-platform-controller/production/kustomize.out.yaml
176c176
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
467a468,479
>   dynamic.linux-s390x.image-id: r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12
>   dynamic.linux-s390x.key: konflux-s390x-root
>   dynamic.linux-s390x.max-instances: "20"
>   dynamic.linux-s390x.private-ip: "false"
>   dynamic.linux-s390x.profile: bz2-2x8
>   dynamic.linux-s390x.region: us-east-2
>   dynamic.linux-s390x.secret: public-prod-ibm-api-key
>   dynamic.linux-s390x.ssh-secret: ibm-production-s390x-ssh-key
>   dynamic.linux-s390x.subnet: us-east-prod-subnet-0
>   dynamic.linux-s390x.type: ibmz
>   dynamic.linux-s390x.url: https://us-east.iaas.cloud.ibm.com/v1
>   dynamic.linux-s390x.vpc: us-east-default-vpc
518,527d529
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
<   host.sysz-rhtap-prod-1.concurrency: "4"
<   host.sysz-rhtap-prod-1.platform: linux/s390x
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-1.user: root
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
<   host.sysz-rhtap-prod-2.concurrency: "4"
<   host.sysz-rhtap-prod-2.platform: linux/s390x
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-2.user: root 
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
<h3>4: Staging changes from 5e5c29d1 to dd015060 on Wed Aug 14 13:20:09 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 8066fc0b..a0639cf1 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64 #,linux/s390x
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,15 +391,27 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
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
<h3>4: Development changes from 5e5c29d1 to dd015060 on Wed Aug 14 13:20:09 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 8066fc0b..a0639cf1 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64 #,linux/s390x
   instance-tag: rhtap-prod
 
   # cpu:memory (1:4)
@@ -391,15 +391,27 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "us-east-prod-subnet-0"
+  # dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false"
+
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "4"
+
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "4" 
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
