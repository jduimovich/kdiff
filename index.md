# kustomize changes tracked by commits 
### This file generated at Wed Jul 31 16:02:43 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from fbfc07f3 to e4f659eb on Wed Jul 31 10:52:29 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 64145c2f..48214e46 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,7 +7,8 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -249,24 +250,26 @@ data:
   dynamic.linux-s390x.max-instances: "2"
   dynamic.linux-s390x.private-ip: "true"
 
-  # dynamic.linux-ppc64le.type: ibmp
-  # dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
-  # dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
-  # dynamic.linux-ppc64le.key: "konflux-infra"
-  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
-  # dynamic.linux-ppc64le.system: "e980"
-  # dynamic.linux-ppc64le.cores: "0.25"
-  # dynamic.linux-ppc64le.memory: "2"
-  # dynamic.linux-ppc64le.max-instances: "2"
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-ppc64le.key: "konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2"
+  dynamic.linux-ppc64le.max-age: "120"
+  dynamic.linux-ppc64le.concurrency: "2"
 
-  host.ppc1.address: "10.130.72.222"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "internal-stage-ibm-ssh-key"
-  host.ppc1.concurrency: "4"
+  # host.ppc1.address: "10.130.72.222"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "internal-stage-ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
 
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from fbfc07f3 to e4f659eb on Wed Jul 31 10:52:29 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 64145c2f..48214e46 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,7 +7,8 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -249,24 +250,26 @@ data:
   dynamic.linux-s390x.max-instances: "2"
   dynamic.linux-s390x.private-ip: "true"
 
-  # dynamic.linux-ppc64le.type: ibmp
-  # dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
-  # dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
-  # dynamic.linux-ppc64le.key: "konflux-infra"
-  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
-  # dynamic.linux-ppc64le.system: "e980"
-  # dynamic.linux-ppc64le.cores: "0.25"
-  # dynamic.linux-ppc64le.memory: "2"
-  # dynamic.linux-ppc64le.max-instances: "2"
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-ppc64le.key: "konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2"
+  dynamic.linux-ppc64le.max-age: "120"
+  dynamic.linux-ppc64le.concurrency: "2"
 
-  host.ppc1.address: "10.130.72.222"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "internal-stage-ibm-ssh-key"
-  host.ppc1.concurrency: "4"
+  # host.ppc1.address: "10.130.72.222"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "internal-stage-ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
 
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64" 
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
<h3>1: Development changes from fbfc07f3 to e4f659eb on Wed Jul 31 10:52:29 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 64145c2f..48214e46 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,7 +7,8 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -249,24 +250,26 @@ data:
   dynamic.linux-s390x.max-instances: "2"
   dynamic.linux-s390x.private-ip: "true"
 
-  # dynamic.linux-ppc64le.type: ibmp
-  # dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
-  # dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
-  # dynamic.linux-ppc64le.key: "konflux-infra"
-  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
-  # dynamic.linux-ppc64le.system: "e980"
-  # dynamic.linux-ppc64le.cores: "0.25"
-  # dynamic.linux-ppc64le.memory: "2"
-  # dynamic.linux-ppc64le.max-instances: "2"
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-ppc64le.key: "konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f,dd60490b-bd2a-402d-857c-2ab1fbfc69f7"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2"
+  dynamic.linux-ppc64le.max-age: "120"
+  dynamic.linux-ppc64le.concurrency: "2"
 
-  host.ppc1.address: "10.130.72.222"
-  host.ppc1.platform: "linux/ppc64le"
-  host.ppc1.user: "root"
-  host.ppc1.secret: "internal-stage-ibm-ssh-key"
-  host.ppc1.concurrency: "4"
+  # host.ppc1.address: "10.130.72.222"
+  # host.ppc1.platform: "linux/ppc64le"
+  # host.ppc1.user: "root"
+  # host.ppc1.secret: "internal-stage-ibm-ssh-key"
+  # host.ppc1.concurrency: "4"
 
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64" 
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
<h3>2: Production changes from 3048f62d to fbfc07f3 on Wed Jul 31 08:54:40 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 82fb5861..58ecc7c5 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 94397991046d904227714d035a99410aa679e97e
+    newTag: 7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index c66ca5ea..3bc7a139 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+- https://github.com/konflux-ci/mintmaker/config/default?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 94397991046d904227714d035a99410aa679e97e
+  newTag: 7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 3048f62d to fbfc07f3 on Wed Jul 31 08:54:40 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 82fb5861..58ecc7c5 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 94397991046d904227714d035a99410aa679e97e
+    newTag: 7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index c66ca5ea..3bc7a139 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+- https://github.com/konflux-ci/mintmaker/config/default?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 94397991046d904227714d035a99410aa679e97e
+  newTag: 7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-3048f62d/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
422,424c422
<       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules", "regex", "argocd", "crossplane",
<                           "fleet", "flux", "helm-requirements", "helm-values", "helmfile", "helmsman", "helmv3",
<                           "jsonnet-bundler", "kubernetes", "kustomize"],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
453,455c451
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "enabled": true
464,511d459
<       "argocd": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "crossplane": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fleet": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "flux": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-requirements": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-values": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmfile": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmsman": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmv3": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "jsonnet-bundler": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kubernetes": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kustomize": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
592c540
<         image: quay.io/konflux-ci/mintmaker:7dc2c31867598589c52b11fe9c88c2b342f0f1db
---
>         image: quay.io/konflux-ci/mintmaker:94397991046d904227714d035a99410aa679e97e 
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
<h3>2: Development changes from 3048f62d to fbfc07f3 on Wed Jul 31 08:54:40 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 82fb5861..58ecc7c5 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 94397991046d904227714d035a99410aa679e97e
+    newTag: 7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index c66ca5ea..3bc7a139 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=94397991046d904227714d035a99410aa679e97e
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=94397991046d904227714d035a99410aa679e97e
+- https://github.com/konflux-ci/mintmaker/config/default?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 94397991046d904227714d035a99410aa679e97e
+  newTag: 7dc2c31867598589c52b11fe9c88c2b342f0f1db
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-3048f62d/development/components/mintmaker/development/kustomize.out.yaml
422,424c422
<       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules", "regex", "argocd", "crossplane",
<                           "fleet", "flux", "helm-requirements", "helm-values", "helmfile", "helmsman", "helmv3",
<                           "jsonnet-bundler", "kubernetes", "kustomize"],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules"],
453,455c451
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
---
>         "enabled": true
464,511d459
<       "argocd": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "crossplane": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "fleet": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "flux": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-requirements": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helm-values": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmfile": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmsman": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "helmv3": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "jsonnet-bundler": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kubernetes": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
<       "kustomize": {
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
591c539
<         image: quay.io/konflux-ci/mintmaker:7dc2c31867598589c52b11fe9c88c2b342f0f1db
---
>         image: quay.io/konflux-ci/mintmaker:94397991046d904227714d035a99410aa679e97e 
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
<h3>3: Production changes from edf43f65 to 3048f62d on Wed Jul 31 05:17:04 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 6d0c62e4..da738f63 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -53,3 +53,5 @@ spec:
         - ci-helper-app
         - mintmaker
         - konflux-otel
+        - local-cluster
+        - clusters 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-edf43f65/production/components/cluster-secret-store/production/kustomize.out.yaml
36,37d35
<     - local-cluster
<     - clusters 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from edf43f65 to 3048f62d on Wed Jul 31 05:17:04 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 6d0c62e4..da738f63 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -53,3 +53,5 @@ spec:
         - ci-helper-app
         - mintmaker
         - konflux-otel
+        - local-cluster
+        - clusters 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-edf43f65/staging/components/cluster-secret-store/staging/kustomize.out.yaml
36,37d35
<     - local-cluster
<     - clusters 
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
<h3>3: Development changes from edf43f65 to 3048f62d on Wed Jul 31 05:17:04 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 6d0c62e4..da738f63 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -53,3 +53,5 @@ spec:
         - ci-helper-app
         - mintmaker
         - konflux-otel
+        - local-cluster
+        - clusters 
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
<h3>4: Production changes from 0a24b3d4 to edf43f65 on Tue Jul 30 18:15:59 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c963a7bb..c790e772 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c4e5c057470f86c88848e173cda5f1d60dc29851
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=564d4fedc4af05657ae7a17ab79ddf574c757d16
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
+      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-0a24b3d4/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
388c388
<   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
---
>   verify_ec_task_git_revision: 5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 0a24b3d4 to edf43f65 on Tue Jul 30 18:15:59 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c963a7bb..c790e772 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c4e5c057470f86c88848e173cda5f1d60dc29851
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=564d4fedc4af05657ae7a17ab79ddf574c757d16
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
+      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-0a24b3d4/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
388c388
<   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
---
>   verify_ec_task_git_revision: 5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d 
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
<h3>4: Development changes from 0a24b3d4 to edf43f65 on Tue Jul 30 18:15:59 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index c963a7bb..c790e772 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=c4e5c057470f86c88848e173cda5f1d60dc29851
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=564d4fedc4af05657ae7a17ab79ddf574c757d16
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d
+      - verify_ec_task_git_revision=a5f9215e7be46e229bbdccae690947a0b1c10acc
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-0a24b3d4/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:a5f9215e7be46e229bbdccae690947a0b1c10acc@sha256:5218a8483bf7100b9f4830049624c8d66c0d1e5bdbbc1797a594e05b5a78ea30
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d@sha256:53b1c38167d024da257454702122a3c95c3afbcb6b33d6ff5a2936bfbb203fdf
388c388
<   verify_ec_task_git_revision: a5f9215e7be46e229bbdccae690947a0b1c10acc
---
>   verify_ec_task_git_revision: 5cf4a7ff5d29729ce42150b030f2f1f2b4140b5d 
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
