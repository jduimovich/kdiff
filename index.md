# kustomize changes tracked by commits 
### This file generated at Wed Dec  4 08:05:45 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 0a22840c to 56219157 on Tue Dec 3 19:25:52 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index 214d1b2a..c4ad5f33 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -63,6 +63,7 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
+  dynamic.linux-arm64.disk: "80"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -75,6 +76,7 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-mlarge-arm64.disk: "80"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -87,6 +89,7 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-mxlarge-arm64.disk: "80"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -99,6 +102,7 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m2xlarge-arm64.disk: "80"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -111,6 +115,7 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m4xlarge-arm64.disk: "80"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -123,6 +128,7 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m8xlarge-arm64.disk: "80"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
<h3>1: Staging changes from 0a22840c to 56219157 on Tue Dec 3 19:25:52 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index 214d1b2a..c4ad5f33 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -63,6 +63,7 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
+  dynamic.linux-arm64.disk: "80"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -75,6 +76,7 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-mlarge-arm64.disk: "80"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -87,6 +89,7 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-mxlarge-arm64.disk: "80"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -99,6 +102,7 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m2xlarge-arm64.disk: "80"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -111,6 +115,7 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m4xlarge-arm64.disk: "80"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -123,6 +128,7 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m8xlarge-arm64.disk: "80"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
<h3>1: Development changes from 0a22840c to 56219157 on Tue Dec 3 19:25:52 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index 214d1b2a..c4ad5f33 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -63,6 +63,7 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
+  dynamic.linux-arm64.disk: "80"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -75,6 +76,7 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-mlarge-arm64.disk: "80"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -87,6 +89,7 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-mxlarge-arm64.disk: "80"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -99,6 +102,7 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m2xlarge-arm64.disk: "80"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -111,6 +115,7 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m4xlarge-arm64.disk: "80"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -123,6 +128,7 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
+  dynamic.linux-m8xlarge-arm64.disk: "80"
 
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1 
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
<h3>2: Production changes from 3911fed1 to 0a22840c on Tue Dec 3 16:49:45 2024 </h3>  
 
<details> 
<summary>Git Diff (100 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index 93efa46f..214d1b2a 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -390,10 +390,10 @@ data:
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-prod-key"
-  dynamic.linux-s390x.subnet: "internal-a"
-  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-1"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
+  dynamic.linux-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
+  dynamic.linux-s390x.region: "us-south-2"
+  dynamic.linux-s390x.url: "https://us-south.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
   dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
@@ -405,10 +405,10 @@ data:
   dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-large-s390x.key: "internal-prod-key"
-  dynamic.linux-large-s390x.subnet: "internal-a"
-  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-large-s390x.region: "us-east-1"
-  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
+  dynamic.linux-large-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
+  dynamic.linux-large-s390x.region: "us-south-2"
+  dynamic.linux-large-s390x.url: "https://us-south.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
@@ -419,10 +419,10 @@ data:
   dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
   dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
-  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.image: "ppc64le-rhel-94-base-27nov2024"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:dal12:a/eebc7153d0c844f9915fb6f3b9850a3b:d6faf373-c0b6-4ba9-b0bc-4f7e0a74f9d5::"
+  dynamic.linux-ppc64le.url: "https://us-south.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "4d164943-b043-4c6e-bba5-d233abf66c6a"
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
@@ -434,10 +434,10 @@ data:
   dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
   dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
-  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.image: "ppc64le-rhel-94-base-27nov2024"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:dal12:a/eebc7153d0c844f9915fb6f3b9850a3b:d6faf373-c0b6-4ba9-b0bc-4f7e0a74f9d5::"
+  dynamic.linux-large-ppc64le.url: "https://us-south.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "4d164943-b043-4c6e-bba5-d233abf66c6a"
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml
new file mode 100644
index 00000000..dda0b8a7
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ibm-api-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml
new file mode 100644
index 00000000..0b5684db
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ibm-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
index 5ca92f13..fd7b45d3 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
@@ -14,3 +14,11 @@ patches:
   target:
     kind: ExternalSecret
     name: aws-ssh-key
+- path: ibm-account.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: internal-prod-ibm-api-key
+- path: ibm-ssh-key.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: internal-prod-ibm-ssh-key 
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
<h3>2: Staging changes from 3911fed1 to 0a22840c on Tue Dec 3 16:49:45 2024 </h3>  
 
<details> 
<summary>Git Diff (100 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index 93efa46f..214d1b2a 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -390,10 +390,10 @@ data:
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-prod-key"
-  dynamic.linux-s390x.subnet: "internal-a"
-  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-1"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
+  dynamic.linux-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
+  dynamic.linux-s390x.region: "us-south-2"
+  dynamic.linux-s390x.url: "https://us-south.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
   dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
@@ -405,10 +405,10 @@ data:
   dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-large-s390x.key: "internal-prod-key"
-  dynamic.linux-large-s390x.subnet: "internal-a"
-  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-large-s390x.region: "us-east-1"
-  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
+  dynamic.linux-large-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
+  dynamic.linux-large-s390x.region: "us-south-2"
+  dynamic.linux-large-s390x.url: "https://us-south.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
@@ -419,10 +419,10 @@ data:
   dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
   dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
-  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.image: "ppc64le-rhel-94-base-27nov2024"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:dal12:a/eebc7153d0c844f9915fb6f3b9850a3b:d6faf373-c0b6-4ba9-b0bc-4f7e0a74f9d5::"
+  dynamic.linux-ppc64le.url: "https://us-south.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "4d164943-b043-4c6e-bba5-d233abf66c6a"
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
@@ -434,10 +434,10 @@ data:
   dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
   dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
-  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.image: "ppc64le-rhel-94-base-27nov2024"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:dal12:a/eebc7153d0c844f9915fb6f3b9850a3b:d6faf373-c0b6-4ba9-b0bc-4f7e0a74f9d5::"
+  dynamic.linux-large-ppc64le.url: "https://us-south.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "4d164943-b043-4c6e-bba5-d233abf66c6a"
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml
new file mode 100644
index 00000000..dda0b8a7
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ibm-api-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml
new file mode 100644
index 00000000..0b5684db
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ibm-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
index 5ca92f13..fd7b45d3 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
@@ -14,3 +14,11 @@ patches:
   target:
     kind: ExternalSecret
     name: aws-ssh-key
+- path: ibm-account.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: internal-prod-ibm-api-key
+- path: ibm-ssh-key.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: internal-prod-ibm-ssh-key 
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
<h3>2: Development changes from 3911fed1 to 0a22840c on Tue Dec 3 16:49:45 2024 </h3>  
 
<details> 
<summary>Git Diff (100 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index 93efa46f..214d1b2a 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -390,10 +390,10 @@ data:
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-s390x.key: "internal-prod-key"
-  dynamic.linux-s390x.subnet: "internal-a"
-  dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-s390x.region: "us-east-1"
-  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
+  dynamic.linux-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
+  dynamic.linux-s390x.region: "us-south-2"
+  dynamic.linux-s390x.url: "https://us-south.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-2x8"
   dynamic.linux-s390x.max-instances: "50"
   dynamic.linux-s390x.private-ip: "true"
@@ -405,10 +405,10 @@ data:
   dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
   dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
   dynamic.linux-large-s390x.key: "internal-prod-key"
-  dynamic.linux-large-s390x.subnet: "internal-a"
-  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
-  dynamic.linux-large-s390x.region: "us-east-1"
-  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.subnet: "konflux-internal-ocp-art-vpc-subnet"
+  dynamic.linux-large-s390x.image-id: "r006-7af05e6b-b1cd-4467-8a37-770ce2094e8d"
+  dynamic.linux-large-s390x.region: "us-south-2"
+  dynamic.linux-large-s390x.url: "https://us-south.iaas.cloud.ibm.com/v1"
   dynamic.linux-large-s390x.profile: "bz2-4x16"
   dynamic.linux-large-s390x.max-instances: "50"
   dynamic.linux-large-s390x.private-ip: "true"
@@ -419,10 +419,10 @@ data:
   dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
   dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
-  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.image: "ppc64le-rhel-94-base-27nov2024"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:dal12:a/eebc7153d0c844f9915fb6f3b9850a3b:d6faf373-c0b6-4ba9-b0bc-4f7e0a74f9d5::"
+  dynamic.linux-ppc64le.url: "https://us-south.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "4d164943-b043-4c6e-bba5-d233abf66c6a"
   dynamic.linux-ppc64le.system: "e980"
   dynamic.linux-ppc64le.cores: "2"
   dynamic.linux-ppc64le.memory: "8"
@@ -434,10 +434,10 @@ data:
   dynamic.linux-large-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-large-ppc64le.secret: "internal-prod-ibm-api-key"
   dynamic.linux-large-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-large-ppc64le.image: "konflux-internal-prod-ppc-base-oct-04-24"
-  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-large-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-large-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-large-ppc64le.image: "ppc64le-rhel-94-base-27nov2024"
+  dynamic.linux-large-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:dal12:a/eebc7153d0c844f9915fb6f3b9850a3b:d6faf373-c0b6-4ba9-b0bc-4f7e0a74f9d5::"
+  dynamic.linux-large-ppc64le.url: "https://us-south.power-iaas.cloud.ibm.com"
+  dynamic.linux-large-ppc64le.network: "4d164943-b043-4c6e-bba5-d233abf66c6a"
   dynamic.linux-large-ppc64le.system: "e980"
   dynamic.linux-large-ppc64le.cores: "4"
   dynamic.linux-large-ppc64le.memory: "16"
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml
new file mode 100644
index 00000000..dda0b8a7
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-account.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ibm-api-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml
new file mode 100644
index 00000000..0b5684db
--- /dev/null
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/ibm-ssh-key.patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/multi-platform-controller/kflux-ocp-p01-ibm-ssh-key
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
index 5ca92f13..fd7b45d3 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/kustomization.yaml
@@ -14,3 +14,11 @@ patches:
   target:
     kind: ExternalSecret
     name: aws-ssh-key
+- path: ibm-account.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: internal-prod-ibm-api-key
+- path: ibm-ssh-key.patch.yaml
+  target:
+    kind: ExternalSecret
+    name: internal-prod-ibm-ssh-key 
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
<h3>3: Production changes from bf782805 to 3911fed1 on Tue Dec 3 15:35:29 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 701cf2b7..59f5a990 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 61fe0f23..7b48f022 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:04c4eb1"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:49b3342" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (300 lines)</summary>  

``` 
./commit-bf782805/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
462,463d461
<       "additionalBranchPrefix": "{{baseBranch}}/",
<       "branchPrefix": "konflux/mintmaker/",
485a484
>         "nix",
495d493
<         "pep723",
506d503
<         "additionalBranchPrefix": "",
548a546,547
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
560,562c559
<             "matchManagers": [
<               "rpm"
<             ]
---
>             "matchManagers": ["rpm"]
564a562,563
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
579a579,580
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
584a586,587
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
589a593,594
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
594a600,601
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
599a607,608
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
604a614,615
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
609a621,622
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
614a628,629
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
619a635,636
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
624a642,643
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
629a649,650
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
634a656,657
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
639a663,664
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
644a670,671
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
649a677,678
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
654a684,685
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
659a691,700
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
>         "schedule": [
>           "after 5am on thursday"
>         ]
>       },
>       "nix": {
>         "enabled": true,
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
664a706,707
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
670a714,715
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
675a721,722
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
680a728,729
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
685a735,736
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
690a742,743
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
695a749,750
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
700a756,757
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
706,710c763,764
<         "schedule": [
<           "after 5am on saturday"
<         ]
<       },
<       "pep723": {
---
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
715a770,771
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
720a777,778
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
725a784,785
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
730a791,792
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
735a798,799
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
740a805,806
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
745a812,813
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
750a819,820
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
756,758c826
<       "allowedPostUpgradeCommands": [
<         "^rpm-lockfile-prototype rpms.in.yaml$"
<       ],
---
>       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
838,839c906,907
<           value: quay.io/konflux-ci/mintmaker-renovate-image:49b3342
<         image: quay.io/konflux-ci/mintmaker:69ed9315e29c04ff1ddc6d57987dd998ae215672
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:04c4eb1
>         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f
./commit-bf782805/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
462,463d461
<       "additionalBranchPrefix": "{{baseBranch}}/",
<       "branchPrefix": "konflux/mintmaker/",
485a484
>         "nix",
495d493
<         "pep723",
506d503
<         "additionalBranchPrefix": "",
548a546,547
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
560,562c559
<             "matchManagers": [
<               "rpm"
<             ]
---
>             "matchManagers": ["rpm"]
564a562,563
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
579a579,580
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
584a586,587
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
589a593,594
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
594a600,601
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
599a607,608
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
604a614,615
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
609a621,622
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
614a628,629
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
619a635,636
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
624a642,643
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
629a649,650
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
634a656,657
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
639a663,664
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
644a670,671
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
649a677,678
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
654a684,685
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
659a691,700
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
>         "schedule": [
>           "after 5am on thursday"
>         ]
>       },
>       "nix": {
>         "enabled": true,
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
664a706,707
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
670a714,715
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
675a721,722
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
680a728,729
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
685a735,736
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
690a742,743
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
695a749,750
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
700a756,757
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
706,710c763,764
<         "schedule": [
<           "after 5am on saturday"
<         ]
<       },
<       "pep723": {
---
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
715a770,771
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
720a777,778
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
725a784,785
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
730a791,792
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
735a798,799
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
740a805,806
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
745a812,813
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
750a819,820
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
756,758c826
<       "allowedPostUpgradeCommands": [
<         "^rpm-lockfile-prototype rpms.in.yaml$"
<       ],
---
>       "allowedPostUpgradeCommands": ["^rpm-lockfile-prototype rpms.in.yaml$"],
838,839c906,907
<           value: quay.io/konflux-ci/mintmaker-renovate-image:49b3342
<         image: quay.io/konflux-ci/mintmaker:69ed9315e29c04ff1ddc6d57987dd998ae215672
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:04c4eb1
>         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f 
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
<h3>3: Staging changes from bf782805 to 3911fed1 on Tue Dec 3 15:35:29 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 701cf2b7..59f5a990 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 61fe0f23..7b48f022 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:04c4eb1"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:49b3342" 
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
<h3>3: Development changes from bf782805 to 3911fed1 on Tue Dec 3 15:35:29 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 701cf2b7..59f5a990 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 69ed9315e29c04ff1ddc6d57987dd998ae215672
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index 61fe0f23..7b48f022 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:04c4eb1"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:49b3342" 
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
<h3>4: Production changes from d826100a to bf782805 on Tue Dec 3 14:31:55 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 7da1382c..ad4eacf8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/production
-  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
+  - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,6 +11,6 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
+    newTag: de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-d826100a/production/components/release/production/kustomize.out.yaml
2071c2071
<         image: quay.io/konflux-ci/release-service:de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
---
>         image: quay.io/konflux-ci/release-service:00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37 
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
<h3>4: Staging changes from d826100a to bf782805 on Tue Dec 3 14:31:55 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 7da1382c..ad4eacf8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/production
-  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
+  - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,6 +11,6 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
+    newTag: de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 namespace: release-service 
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
<h3>4: Development changes from d826100a to bf782805 on Tue Dec 3 14:31:55 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 7da1382c..ad4eacf8 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/production
-  - https://github.com/konflux-ci/release-service/config/default?ref=00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
+  - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,6 +11,6 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 00b1c200d82c5e6262ea08b90d1ddeaaa1c5ad37
+    newTag: de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 namespace: release-service 
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
