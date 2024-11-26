# kustomize changes tracked by commits 
### This file generated at Tue Nov 26 08:05:21 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 65c18d2b to ae547304 on Tue Nov 26 03:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 00e23eb2..7b43df56 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,9 +36,9 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64\
+    linux-extra-fast/amd64,\
+    linux/s390x\
     "
-    #,\    linux/s390x\    "
   instance-tag: rhtap-prod
 
   additional-instance-tags: "\
@@ -453,78 +453,78 @@ data:
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
-
-  host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  host.sysz-rhtap-prod-9.user: "root"
-  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-9.concurrency: "2"
-
-  host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  host.sysz-rhtap-prod-10.user: "root"
-  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-10.concurrency: "2"
-
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-2x8"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "false"
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
+
+  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-9.user: "root"
+  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-9.concurrency: "2"
+
+  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-10.user: "root"
+  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-10.concurrency: "2"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
+  dynamic.linux-s390x.private-ip: "true"
 
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (69 lines)</summary>  

``` 
./commit-65c18d2b/production/components/multi-platform-controller/production/kustomize.out.yaml
224c224
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
615,626d614
<   dynamic.linux-s390x.image-id: r014-96daa951-6026-4112-95b1-87e86e82fcf3
<   dynamic.linux-s390x.key: konflux-s390x-root
<   dynamic.linux-s390x.max-instances: "20"
<   dynamic.linux-s390x.private-ip: "true"
<   dynamic.linux-s390x.profile: bz2-2x8
<   dynamic.linux-s390x.region: us-east-2
<   dynamic.linux-s390x.secret: public-prod-ibm-api-key
<   dynamic.linux-s390x.ssh-secret: ibm-production-s390x-ssh-key
<   dynamic.linux-s390x.subnet: konflux-ext-prod-1
<   dynamic.linux-s390x.type: ibmz
<   dynamic.linux-s390x.url: https://us-east.iaas.cloud.ibm.com/v1
<   dynamic.linux-s390x.vpc: us-east-default-vpc
676a665,714
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
>   host.sysz-rhtap-prod-9.address: 169.63.184.30
>   host.sysz-rhtap-prod-9.concurrency: "2"
>   host.sysz-rhtap-prod-9.platform: linux/s390x
>   host.sysz-rhtap-prod-9.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-9.user: root
>   host.sysz-rhtap-prod-10.address: 169.59.164.141
>   host.sysz-rhtap-prod-10.concurrency: "2"
>   host.sysz-rhtap-prod-10.platform: linux/s390x
>   host.sysz-rhtap-prod-10.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-10.user: root 
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
<h3>1: Staging changes from 65c18d2b to ae547304 on Tue Nov 26 03:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 00e23eb2..7b43df56 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,9 +36,9 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64\
+    linux-extra-fast/amd64,\
+    linux/s390x\
     "
-    #,\    linux/s390x\    "
   instance-tag: rhtap-prod
 
   additional-instance-tags: "\
@@ -453,78 +453,78 @@ data:
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
-
-  host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  host.sysz-rhtap-prod-9.user: "root"
-  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-9.concurrency: "2"
-
-  host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  host.sysz-rhtap-prod-10.user: "root"
-  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-10.concurrency: "2"
-
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-2x8"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "false"
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
+
+  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-9.user: "root"
+  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-9.concurrency: "2"
+
+  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-10.user: "root"
+  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-10.concurrency: "2"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 65c18d2b to ae547304 on Tue Nov 26 03:24:40 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 00e23eb2..7b43df56 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,9 +36,9 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64\
+    linux-extra-fast/amd64,\
+    linux/s390x\
     "
-    #,\    linux/s390x\    "
   instance-tag: rhtap-prod
 
   additional-instance-tags: "\
@@ -453,78 +453,78 @@ data:
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
-
-  host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  host.sysz-rhtap-prod-9.user: "root"
-  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-9.concurrency: "2"
-
-  host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  host.sysz-rhtap-prod-10.user: "root"
-  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-10.concurrency: "2"
-
-  # dynamic.linux-s390x.type: ibmz
-  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  # dynamic.linux-s390x.key: "konflux-s390x-root"
-  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  # dynamic.linux-s390x.region: "us-east-2"
-  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  # dynamic.linux-s390x.profile: "bz2-2x8"
-  # dynamic.linux-s390x.max-instances: "20"
-  # dynamic.linux-s390x.private-ip: "false"
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
+
+  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-9.user: "root"
+  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-9.concurrency: "2"
+
+  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  # host.sysz-rhtap-prod-10.user: "root"
+  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  # host.sysz-rhtap-prod-10.concurrency: "2"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  dynamic.linux-s390x.key: "konflux-s390x-root"
+  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  dynamic.linux-s390x.region: "us-east-2"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 8481a962 to 65c18d2b on Tue Nov 26 02:20:24 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 3cb8dc2d..00e23eb2 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,9 +36,9 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64,\
-    linux/s390x\
+    linux-extra-fast/amd64\
     "
+    #,\    linux/s390x\    "
   instance-tag: rhtap-prod
 
   additional-instance-tags: "\
@@ -453,78 +453,78 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  # host.sysz-rhtap-prod-1.address: "169.63.187.167"
-  # host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-1.user: "root"
-  # host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-1.concurrency: "1"
-
-  # host.sysz-rhtap-prod-2.address: "169.63.183.95"
-  # host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-2.user: "root"
-  # host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-2.concurrency: "1"
-
-  # host.sysz-rhtap-prod-3.address: "169.63.183.96"
-  # host.sysz-rhtap-prod-3.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-3.user: "root"
-  # host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-3.concurrency: "1"
-
-  # host.sysz-rhtap-prod-4.address: "169.59.188.187"
-  # host.sysz-rhtap-prod-4.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-4.user: "root"
-  # host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-4.concurrency: "1"
-
-  # host.sysz-rhtap-prod-5.address: "169.59.164.137"
-  # host.sysz-rhtap-prod-5.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-5.user: "root"
-  # host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-5.concurrency: "1"
-
-  # host.sysz-rhtap-prod-6.address: "150.240.2.156"
-  # host.sysz-rhtap-prod-6.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-6.user: "root"
-  # host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-6.concurrency: "1"
-
-  # host.sysz-rhtap-prod-7.address: "169.59.164.134"
-  # host.sysz-rhtap-prod-7.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-7.user: "root"
-  # host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-7.concurrency: "1"
-
-  # host.sysz-rhtap-prod-8.address: "150.240.0.18"
-  # host.sysz-rhtap-prod-8.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-8.user: "root"
-  # host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-8.concurrency: "1"
-
-  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-9.user: "root"
-  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-9.concurrency: "2"
-
-  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-10.user: "root"
-  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-10.concurrency: "2"
-
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  host.sysz-rhtap-prod-1.address: "169.63.187.167"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "1"
+
+  host.sysz-rhtap-prod-2.address: "169.63.183.95"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "1"
+
+  host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  host.sysz-rhtap-prod-3.user: "root"
+  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-3.concurrency: "1"
+
+  host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  host.sysz-rhtap-prod-4.user: "root"
+  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-4.concurrency: "1"
+
+  host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  host.sysz-rhtap-prod-5.user: "root"
+  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-5.concurrency: "1"
+
+  host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  host.sysz-rhtap-prod-6.user: "root"
+  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-6.concurrency: "1"
+
+  host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  host.sysz-rhtap-prod-7.user: "root"
+  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-7.concurrency: "1"
+
+  host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  host.sysz-rhtap-prod-8.user: "root"
+  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-8.concurrency: "1"
+
+  host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  host.sysz-rhtap-prod-9.user: "root"
+  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-9.concurrency: "2"
+
+  host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  host.sysz-rhtap-prod-10.user: "root"
+  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-10.concurrency: "2"
+
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false"
 
 # GPU Instances
   dynamic.linux-g6xlarge-amd64.type: aws 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (69 lines)</summary>  

``` 
./commit-8481a962/production/components/multi-platform-controller/production/kustomize.out.yaml
224c224
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
614a615,626
>   dynamic.linux-s390x.image-id: r014-96daa951-6026-4112-95b1-87e86e82fcf3
>   dynamic.linux-s390x.key: konflux-s390x-root
>   dynamic.linux-s390x.max-instances: "20"
>   dynamic.linux-s390x.private-ip: "false"
>   dynamic.linux-s390x.profile: bz2-2x8
>   dynamic.linux-s390x.region: us-east-2
>   dynamic.linux-s390x.secret: public-prod-ibm-api-key
>   dynamic.linux-s390x.ssh-secret: ibm-production-s390x-ssh-key
>   dynamic.linux-s390x.subnet: konflux-ext-prod-1
>   dynamic.linux-s390x.type: ibmz
>   dynamic.linux-s390x.url: https://us-east.iaas.cloud.ibm.com/v1
>   dynamic.linux-s390x.vpc: us-east-default-vpc
665,714d676
<   host.sysz-rhtap-prod-1.address: 169.63.187.167
<   host.sysz-rhtap-prod-1.concurrency: "1"
<   host.sysz-rhtap-prod-1.platform: linux/s390x
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-1.user: root
<   host.sysz-rhtap-prod-2.address: 169.63.183.95
<   host.sysz-rhtap-prod-2.concurrency: "1"
<   host.sysz-rhtap-prod-2.platform: linux/s390x
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-2.user: root
<   host.sysz-rhtap-prod-3.address: 169.63.183.96
<   host.sysz-rhtap-prod-3.concurrency: "1"
<   host.sysz-rhtap-prod-3.platform: linux/s390x
<   host.sysz-rhtap-prod-3.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-3.user: root
<   host.sysz-rhtap-prod-4.address: 169.59.188.187
<   host.sysz-rhtap-prod-4.concurrency: "1"
<   host.sysz-rhtap-prod-4.platform: linux/s390x
<   host.sysz-rhtap-prod-4.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-4.user: root
<   host.sysz-rhtap-prod-5.address: 169.59.164.137
<   host.sysz-rhtap-prod-5.concurrency: "1"
<   host.sysz-rhtap-prod-5.platform: linux/s390x
<   host.sysz-rhtap-prod-5.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-5.user: root
<   host.sysz-rhtap-prod-6.address: 150.240.2.156
<   host.sysz-rhtap-prod-6.concurrency: "1"
<   host.sysz-rhtap-prod-6.platform: linux/s390x
<   host.sysz-rhtap-prod-6.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-6.user: root
<   host.sysz-rhtap-prod-7.address: 169.59.164.134
<   host.sysz-rhtap-prod-7.concurrency: "1"
<   host.sysz-rhtap-prod-7.platform: linux/s390x
<   host.sysz-rhtap-prod-7.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-7.user: root
<   host.sysz-rhtap-prod-8.address: 150.240.0.18
<   host.sysz-rhtap-prod-8.concurrency: "1"
<   host.sysz-rhtap-prod-8.platform: linux/s390x
<   host.sysz-rhtap-prod-8.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-8.user: root
<   host.sysz-rhtap-prod-9.address: 169.63.184.30
<   host.sysz-rhtap-prod-9.concurrency: "2"
<   host.sysz-rhtap-prod-9.platform: linux/s390x
<   host.sysz-rhtap-prod-9.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-9.user: root
<   host.sysz-rhtap-prod-10.address: 169.59.164.141
<   host.sysz-rhtap-prod-10.concurrency: "2"
<   host.sysz-rhtap-prod-10.platform: linux/s390x
<   host.sysz-rhtap-prod-10.secret: ibm-production-s390x-ssh-key
<   host.sysz-rhtap-prod-10.user: root 
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
<h3>2: Staging changes from 8481a962 to 65c18d2b on Tue Nov 26 02:20:24 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 3cb8dc2d..00e23eb2 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,9 +36,9 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64,\
-    linux/s390x\
+    linux-extra-fast/amd64\
     "
+    #,\    linux/s390x\    "
   instance-tag: rhtap-prod
 
   additional-instance-tags: "\
@@ -453,78 +453,78 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  # host.sysz-rhtap-prod-1.address: "169.63.187.167"
-  # host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-1.user: "root"
-  # host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-1.concurrency: "1"
-
-  # host.sysz-rhtap-prod-2.address: "169.63.183.95"
-  # host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-2.user: "root"
-  # host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-2.concurrency: "1"
-
-  # host.sysz-rhtap-prod-3.address: "169.63.183.96"
-  # host.sysz-rhtap-prod-3.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-3.user: "root"
-  # host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-3.concurrency: "1"
-
-  # host.sysz-rhtap-prod-4.address: "169.59.188.187"
-  # host.sysz-rhtap-prod-4.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-4.user: "root"
-  # host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-4.concurrency: "1"
-
-  # host.sysz-rhtap-prod-5.address: "169.59.164.137"
-  # host.sysz-rhtap-prod-5.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-5.user: "root"
-  # host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-5.concurrency: "1"
-
-  # host.sysz-rhtap-prod-6.address: "150.240.2.156"
-  # host.sysz-rhtap-prod-6.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-6.user: "root"
-  # host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-6.concurrency: "1"
-
-  # host.sysz-rhtap-prod-7.address: "169.59.164.134"
-  # host.sysz-rhtap-prod-7.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-7.user: "root"
-  # host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-7.concurrency: "1"
-
-  # host.sysz-rhtap-prod-8.address: "150.240.0.18"
-  # host.sysz-rhtap-prod-8.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-8.user: "root"
-  # host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-8.concurrency: "1"
-
-  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-9.user: "root"
-  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-9.concurrency: "2"
-
-  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-10.user: "root"
-  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-10.concurrency: "2"
-
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  host.sysz-rhtap-prod-1.address: "169.63.187.167"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "1"
+
+  host.sysz-rhtap-prod-2.address: "169.63.183.95"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "1"
+
+  host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  host.sysz-rhtap-prod-3.user: "root"
+  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-3.concurrency: "1"
+
+  host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  host.sysz-rhtap-prod-4.user: "root"
+  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-4.concurrency: "1"
+
+  host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  host.sysz-rhtap-prod-5.user: "root"
+  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-5.concurrency: "1"
+
+  host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  host.sysz-rhtap-prod-6.user: "root"
+  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-6.concurrency: "1"
+
+  host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  host.sysz-rhtap-prod-7.user: "root"
+  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-7.concurrency: "1"
+
+  host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  host.sysz-rhtap-prod-8.user: "root"
+  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-8.concurrency: "1"
+
+  host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  host.sysz-rhtap-prod-9.user: "root"
+  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-9.concurrency: "2"
+
+  host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  host.sysz-rhtap-prod-10.user: "root"
+  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-10.concurrency: "2"
+
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false"
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 8481a962 to 65c18d2b on Tue Nov 26 02:20:24 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 3cb8dc2d..00e23eb2 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -36,9 +36,9 @@ data:
     linux-root/arm64,\
     linux-root/amd64,\
     linux-fast/amd64,\
-    linux-extra-fast/amd64,\
-    linux/s390x\
+    linux-extra-fast/amd64\
     "
+    #,\    linux/s390x\    "
   instance-tag: rhtap-prod
 
   additional-instance-tags: "\
@@ -453,78 +453,78 @@ data:
   host.power-rhtap-prod-10.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-10.concurrency: "1"
 
-  # host.sysz-rhtap-prod-1.address: "169.63.187.167"
-  # host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-1.user: "root"
-  # host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-1.concurrency: "1"
-
-  # host.sysz-rhtap-prod-2.address: "169.63.183.95"
-  # host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-2.user: "root"
-  # host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-2.concurrency: "1"
-
-  # host.sysz-rhtap-prod-3.address: "169.63.183.96"
-  # host.sysz-rhtap-prod-3.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-3.user: "root"
-  # host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-3.concurrency: "1"
-
-  # host.sysz-rhtap-prod-4.address: "169.59.188.187"
-  # host.sysz-rhtap-prod-4.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-4.user: "root"
-  # host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-4.concurrency: "1"
-
-  # host.sysz-rhtap-prod-5.address: "169.59.164.137"
-  # host.sysz-rhtap-prod-5.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-5.user: "root"
-  # host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-5.concurrency: "1"
-
-  # host.sysz-rhtap-prod-6.address: "150.240.2.156"
-  # host.sysz-rhtap-prod-6.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-6.user: "root"
-  # host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-6.concurrency: "1"
-
-  # host.sysz-rhtap-prod-7.address: "169.59.164.134"
-  # host.sysz-rhtap-prod-7.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-7.user: "root"
-  # host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-7.concurrency: "1"
-
-  # host.sysz-rhtap-prod-8.address: "150.240.0.18"
-  # host.sysz-rhtap-prod-8.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-8.user: "root"
-  # host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-8.concurrency: "1"
-
-  # host.sysz-rhtap-prod-9.address: "169.63.184.30"
-  # host.sysz-rhtap-prod-9.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-9.user: "root"
-  # host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-9.concurrency: "2"
-
-  # host.sysz-rhtap-prod-10.address: "169.59.164.141"
-  # host.sysz-rhtap-prod-10.platform: "linux/s390x"
-  # host.sysz-rhtap-prod-10.user: "root"
-  # host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
-  # host.sysz-rhtap-prod-10.concurrency: "2"
-
-  dynamic.linux-s390x.type: ibmz
-  dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
-  dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
-  dynamic.linux-s390x.vpc: "us-east-default-vpc"
-  dynamic.linux-s390x.key: "konflux-s390x-root"
-  dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
-  dynamic.linux-s390x.region: "us-east-2"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-2x8"
-  dynamic.linux-s390x.max-instances: "20"
-  dynamic.linux-s390x.private-ip: "false"
+  host.sysz-rhtap-prod-1.address: "169.63.187.167"
+  host.sysz-rhtap-prod-1.platform: "linux/s390x"
+  host.sysz-rhtap-prod-1.user: "root"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-1.concurrency: "1"
+
+  host.sysz-rhtap-prod-2.address: "169.63.183.95"
+  host.sysz-rhtap-prod-2.platform: "linux/s390x"
+  host.sysz-rhtap-prod-2.user: "root"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-2.concurrency: "1"
+
+  host.sysz-rhtap-prod-3.address: "169.63.183.96"
+  host.sysz-rhtap-prod-3.platform: "linux/s390x"
+  host.sysz-rhtap-prod-3.user: "root"
+  host.sysz-rhtap-prod-3.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-3.concurrency: "1"
+
+  host.sysz-rhtap-prod-4.address: "169.59.188.187"
+  host.sysz-rhtap-prod-4.platform: "linux/s390x"
+  host.sysz-rhtap-prod-4.user: "root"
+  host.sysz-rhtap-prod-4.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-4.concurrency: "1"
+
+  host.sysz-rhtap-prod-5.address: "169.59.164.137"
+  host.sysz-rhtap-prod-5.platform: "linux/s390x"
+  host.sysz-rhtap-prod-5.user: "root"
+  host.sysz-rhtap-prod-5.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-5.concurrency: "1"
+
+  host.sysz-rhtap-prod-6.address: "150.240.2.156"
+  host.sysz-rhtap-prod-6.platform: "linux/s390x"
+  host.sysz-rhtap-prod-6.user: "root"
+  host.sysz-rhtap-prod-6.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-6.concurrency: "1"
+
+  host.sysz-rhtap-prod-7.address: "169.59.164.134"
+  host.sysz-rhtap-prod-7.platform: "linux/s390x"
+  host.sysz-rhtap-prod-7.user: "root"
+  host.sysz-rhtap-prod-7.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-7.concurrency: "1"
+
+  host.sysz-rhtap-prod-8.address: "150.240.0.18"
+  host.sysz-rhtap-prod-8.platform: "linux/s390x"
+  host.sysz-rhtap-prod-8.user: "root"
+  host.sysz-rhtap-prod-8.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-8.concurrency: "1"
+
+  host.sysz-rhtap-prod-9.address: "169.63.184.30"
+  host.sysz-rhtap-prod-9.platform: "linux/s390x"
+  host.sysz-rhtap-prod-9.user: "root"
+  host.sysz-rhtap-prod-9.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-9.concurrency: "2"
+
+  host.sysz-rhtap-prod-10.address: "169.59.164.141"
+  host.sysz-rhtap-prod-10.platform: "linux/s390x"
+  host.sysz-rhtap-prod-10.user: "root"
+  host.sysz-rhtap-prod-10.secret: "ibm-production-s390x-ssh-key"
+  host.sysz-rhtap-prod-10.concurrency: "2"
+
+  # dynamic.linux-s390x.type: ibmz
+  # dynamic.linux-s390x.ssh-secret: "ibm-production-s390x-ssh-key"
+  # dynamic.linux-s390x.secret: "public-prod-ibm-api-key"
+  # dynamic.linux-s390x.vpc: "us-east-default-vpc"
+  # dynamic.linux-s390x.key: "konflux-s390x-root"
+  # dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
+  # dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
+  # dynamic.linux-s390x.region: "us-east-2"
+  # dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  # dynamic.linux-s390x.profile: "bz2-2x8"
+  # dynamic.linux-s390x.max-instances: "20"
+  # dynamic.linux-s390x.private-ip: "false"
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from b8a92219 to 8481a962 on Tue Nov 26 02:09:39 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 00983c8c..3cb8dc2d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -519,7 +519,7 @@ data:
   dynamic.linux-s390x.vpc: "us-east-default-vpc"
   dynamic.linux-s390x.key: "konflux-s390x-root"
   dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
   dynamic.linux-s390x.region: "us-east-2"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b8a92219/production/components/multi-platform-controller/production/kustomize.out.yaml
615c615
<   dynamic.linux-s390x.image-id: r014-96daa951-6026-4112-95b1-87e86e82fcf3
---
>   dynamic.linux-s390x.image-id: r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12 
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
<h3>3: Staging changes from b8a92219 to 8481a962 on Tue Nov 26 02:09:39 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 00983c8c..3cb8dc2d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -519,7 +519,7 @@ data:
   dynamic.linux-s390x.vpc: "us-east-default-vpc"
   dynamic.linux-s390x.key: "konflux-s390x-root"
   dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
   dynamic.linux-s390x.region: "us-east-2"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8" 
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
<h3>3: Development changes from b8a92219 to 8481a962 on Tue Nov 26 02:09:39 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 00983c8c..3cb8dc2d 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -519,7 +519,7 @@ data:
   dynamic.linux-s390x.vpc: "us-east-default-vpc"
   dynamic.linux-s390x.key: "konflux-s390x-root"
   dynamic.linux-s390x.subnet: "konflux-ext-prod-1"
-  dynamic.linux-s390x.image-id: "r014-bf54f3b6-cbd1-4943-b0b0-b2eff6acdf12"
+  dynamic.linux-s390x.image-id: "r014-96daa951-6026-4112-95b1-87e86e82fcf3"
   dynamic.linux-s390x.region: "us-east-2"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8" 
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
<h3>4: Production changes from a15c05b9 to b8a92219 on Tue Nov 26 01:56:30 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index a5f88e07..00983c8c 100644
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
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a15c05b9/production/components/multi-platform-controller/production/kustomize.out.yaml
224c224
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64,linux/s390x
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mlarge/arm64,linux-mlarge/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g6xlarge/amd64,linux-root/arm64,linux-root/amd64,linux-fast/amd64,linux-extra-fast/amd64 
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
<h3>4: Staging changes from a15c05b9 to b8a92219 on Tue Nov 26 01:56:30 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index a5f88e07..00983c8c 100644
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
<h3>4: Development changes from a15c05b9 to b8a92219 on Tue Nov 26 01:56:30 2024 </h3>  
 
<details> 
<summary>Git Diff (14 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index a5f88e07..00983c8c 100644
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
