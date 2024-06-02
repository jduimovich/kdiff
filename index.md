# kustomize changes tracked by commits 
### This file generated at Sun Jun  2 04:02:23 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from c5ff4b3c to 3a19a5a6 on Fri May 31 12:31:14 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4b4227e4..caad501a 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -71,15 +71,27 @@ data:
   dynamic.linux-s390x.max-instances: "2"
   dynamic.linux-s390x.private-ip: "true"
 
-  dynamic.linux-ppc64le.type: ibmp
-  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
-  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
-  dynamic.linux-ppc64le.system: "e980"
-  dynamic.linux-ppc64le.cores: "0.25"
-  dynamic.linux-ppc64le.memory: "2"
-  dynamic.linux-ppc64le.max-instances: "2"
+  # dynamic.linux-ppc64le.type: ibmp
+  # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  # dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  # dynamic.linux-ppc64le.system: "e980"
+  # dynamic.linux-ppc64le.cores: "0.25"
+  # dynamic.linux-ppc64le.memory: "2"
+  # dynamic.linux-ppc64le.max-instances: "2"
+
+  host.power-rhtap-prod-1.address: "10.130.74.226"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "10.130.73.221"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4" 
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
<h3>1: Staging changes from c5ff4b3c to 3a19a5a6 on Fri May 31 12:31:14 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4b4227e4..caad501a 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -71,15 +71,27 @@ data:
   dynamic.linux-s390x.max-instances: "2"
   dynamic.linux-s390x.private-ip: "true"
 
-  dynamic.linux-ppc64le.type: ibmp
-  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
-  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
-  dynamic.linux-ppc64le.system: "e980"
-  dynamic.linux-ppc64le.cores: "0.25"
-  dynamic.linux-ppc64le.memory: "2"
-  dynamic.linux-ppc64le.max-instances: "2"
+  # dynamic.linux-ppc64le.type: ibmp
+  # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  # dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  # dynamic.linux-ppc64le.system: "e980"
+  # dynamic.linux-ppc64le.cores: "0.25"
+  # dynamic.linux-ppc64le.memory: "2"
+  # dynamic.linux-ppc64le.max-instances: "2"
+
+  host.power-rhtap-prod-1.address: "10.130.74.226"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "10.130.73.221"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4" 
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
<h3>1: Development changes from c5ff4b3c to 3a19a5a6 on Fri May 31 12:31:14 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 4b4227e4..caad501a 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x #,linux/ppc64le
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -71,15 +71,27 @@ data:
   dynamic.linux-s390x.max-instances: "2"
   dynamic.linux-s390x.private-ip: "true"
 
-  dynamic.linux-ppc64le.type: ibmp
-  dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
-  dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
-  dynamic.linux-ppc64le.key: "prod-konflux-infra"
-  dynamic.linux-ppc64le.image: "RHEL9-SP2"
-  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
-  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
-  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
-  dynamic.linux-ppc64le.system: "e980"
-  dynamic.linux-ppc64le.cores: "0.25"
-  dynamic.linux-ppc64le.memory: "2"
-  dynamic.linux-ppc64le.max-instances: "2"
+  # dynamic.linux-ppc64le.type: ibmp
+  # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
+  # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
+  # dynamic.linux-ppc64le.key: "prod-konflux-infra"
+  # dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  # dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  # dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  # dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  # dynamic.linux-ppc64le.system: "e980"
+  # dynamic.linux-ppc64le.cores: "0.25"
+  # dynamic.linux-ppc64le.memory: "2"
+  # dynamic.linux-ppc64le.max-instances: "2"
+
+  host.power-rhtap-prod-1.address: "10.130.74.226"
+  host.power-rhtap-prod-1.platform: "linux/ppc64le"
+  host.power-rhtap-prod-1.user: "root"
+  host.power-rhtap-prod-1.secret: "internal-prod-ibm-ssh-key"
+  host.power-rhtap-prod-1.concurrency: "4"
+
+  host.power-rhtap-prod-2.address: "10.130.73.221"
+  host.power-rhtap-prod-2.platform: "linux/ppc64le"
+  host.power-rhtap-prod-2.user: "root"
+  host.power-rhtap-prod-2.secret: "internal-prod-ibm-ssh-key"
+  host.power-rhtap-prod-2.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 4e11b65d to c5ff4b3c on Fri May 31 10:29:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 48c8a0e8..442fb425 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -11,7 +11,7 @@ kind: Repository
 metadata:
   name: e2e-tests
 spec:
-  url: "https://github.com/redhat-appstudio/e2e-tests"
+  url: "https://github.com/konflux-ci/e2e-tests"
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
diff --git a/docs/testing/e2e-tests.md b/docs/testing/e2e-tests.md
index d4138a21..f3ed6df0 100644
--- a/docs/testing/e2e-tests.md
+++ b/docs/testing/e2e-tests.md
@@ -2,4 +2,4 @@
 title: End-to-End Tests
 ---
 
-The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/redhat-appstudio/e2e-tests) for details on how to build and run the tests.
+The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/konflux-ci/e2e-tests) for details on how to build and run the tests. 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4e11b65d/production/components/tekton-ci/production/kustomize.out.yaml
325c325
<   url: https://github.com/konflux-ci/e2e-tests
---
>   url: https://github.com/redhat-appstudio/e2e-tests 
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
<h3>2: Staging changes from 4e11b65d to c5ff4b3c on Fri May 31 10:29:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 48c8a0e8..442fb425 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -11,7 +11,7 @@ kind: Repository
 metadata:
   name: e2e-tests
 spec:
-  url: "https://github.com/redhat-appstudio/e2e-tests"
+  url: "https://github.com/konflux-ci/e2e-tests"
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
diff --git a/docs/testing/e2e-tests.md b/docs/testing/e2e-tests.md
index d4138a21..f3ed6df0 100644
--- a/docs/testing/e2e-tests.md
+++ b/docs/testing/e2e-tests.md
@@ -2,4 +2,4 @@
 title: End-to-End Tests
 ---
 
-The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/redhat-appstudio/e2e-tests) for details on how to build and run the tests.
+The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/konflux-ci/e2e-tests) for details on how to build and run the tests. 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-4e11b65d/staging/components/tekton-ci/staging/kustomize.out.yaml
253c253
<   url: https://github.com/konflux-ci/e2e-tests
---
>   url: https://github.com/redhat-appstudio/e2e-tests 
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
<h3>2: Development changes from 4e11b65d to c5ff4b3c on Fri May 31 10:29:21 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 48c8a0e8..442fb425 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -11,7 +11,7 @@ kind: Repository
 metadata:
   name: e2e-tests
 spec:
-  url: "https://github.com/redhat-appstudio/e2e-tests"
+  url: "https://github.com/konflux-ci/e2e-tests"
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
diff --git a/docs/testing/e2e-tests.md b/docs/testing/e2e-tests.md
index d4138a21..f3ed6df0 100644
--- a/docs/testing/e2e-tests.md
+++ b/docs/testing/e2e-tests.md
@@ -2,4 +2,4 @@
 title: End-to-End Tests
 ---
 
-The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/redhat-appstudio/e2e-tests) for details on how to build and run the tests.
+The E2E test suite can be run against a properly bootstrapped cluster. Please refer to [this repo](https://github.com/konflux-ci/e2e-tests) for details on how to build and run the tests. 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 22c7c1b6 to 4e11b65d on Fri May 31 08:47:38 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 9a3b2de0..82515491 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=abe39f6c2163fdf81faf5e4eaace7401b9524a81
+- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: abe39f6c2163fdf81faf5e4eaace7401b9524a81
+  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index c4d8c9f5..2a05c56a 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=abe39f6c2163fdf81faf5e4eaace7401b9524a81
+- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: abe39f6c2163fdf81faf5e4eaace7401b9524a81
+  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 namespace: image-controller
  
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
<h3>3: Staging changes from 22c7c1b6 to 4e11b65d on Fri May 31 08:47:38 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 9a3b2de0..82515491 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=abe39f6c2163fdf81faf5e4eaace7401b9524a81
+- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: abe39f6c2163fdf81faf5e4eaace7401b9524a81
+  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index c4d8c9f5..2a05c56a 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=abe39f6c2163fdf81faf5e4eaace7401b9524a81
+- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: abe39f6c2163fdf81faf5e4eaace7401b9524a81
+  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 namespace: image-controller
  
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
<h3>3: Development changes from 22c7c1b6 to 4e11b65d on Fri May 31 08:47:38 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 9a3b2de0..82515491 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/image-controller/config/default?ref=abe39f6c2163fdf81faf5e4eaace7401b9524a81
+- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: abe39f6c2163fdf81faf5e4eaace7401b9524a81
+  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index c4d8c9f5..2a05c56a 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=abe39f6c2163fdf81faf5e4eaace7401b9524a81
+- https://github.com/konflux-ci/image-controller/config/default?ref=3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: abe39f6c2163fdf81faf5e4eaace7401b9524a81
+  newTag: 3296e4996f6ffce1df7273d3c29adb6df20348c7
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (103 lines)</summary>  

``` 
./commit-22c7c1b6/development/components/image-controller/development/kustomize.out.yaml
78,105d77
<               notifications:
<                 description: Notifications defines configuration for image repository
<                   notifications.
<                 items:
<                   properties:
<                     config:
<                       properties:
<                         email:
<                           description: Email is the email address to send notifications
<                             to.
<                           type: string
<                         url:
<                           description: Webhook is the URL to send notifications to.
<                           type: string
<                       type: object
<                     event:
<                       enum:
<                       - repo_push
<                       type: string
<                     method:
<                       enum:
<                       - email
<                       - webhook
<                       type: string
<                     title:
<                       type: string
<                   type: object
<                 type: array
177,188d148
<               notifications:
<                 description: Notifications shows the status of the notifications configuration.
<                 items:
<                   description: NotificationStatus shows the status of the notification
<                     configuration.
<                   properties:
<                     title:
<                       type: string
<                     uuid:
<                       type: string
<                   type: object
<                 type: array
582,602d541
<     def manifest_exists(quay_token: str, namespace: str, name: str, manifest: str) -> bool:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/manifest/{manifest}"
<         request = Request(api_url, headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         manifest_exists = True
<         try:
<             with urlopen(request) as resp:
<                 if resp.status != 200 and resp.status != 204:
<                     raise RuntimeError(resp.reason)
< 
<         except HTTPError as ex:
<             if ex.status != 404:
<                 raise(ex)
<             else:
<                 manifest_exists = False
< 
<         return manifest_exists
< 
< 
607d545
<         manifests_checked = {}
612,624c550,554
<                     # verify that manifest really doesn't exist, because if tag was removed, it won't be in tag list, but may still be in the registry
<                     manifest_existence = manifests_checked.get(f"sha256:{match.group(1)}")
<                     if manifest_existence is None:
<                         manifest_existence = manifest_exists(quay_token, namespace, name, f"sha256:{match.group(1)}")
<                         manifests_checked[f"sha256:{match.group(1)}"] = manifest_existence
< 
<                     if not manifest_existence:
<                         if dry_run:
<                             LOGGER.info("Tag %s from %s/%s should be removed", tag["name"], namespace, name)
<                         else:
<                             LOGGER.info("Removing tag %s from %s/%s", tag["name"], namespace, name)
<                             delete_image_tag(quay_token, namespace, name, tag["name"])
< 
---
>                     if dry_run:
>                         LOGGER.info("Tag %s from %s/%s should be removed", tag["name"], namespace, name)
>                     else:
>                         LOGGER.info("Removing tag %s from %s/%s", tag["name"], namespace, name)
>                         delete_image_tag(quay_token, namespace, name, tag["name"])
708c638
<   name: image-controller-image-pruner-configmap-g7h295gd6b
---
>   name: image-controller-image-pruner-configmap-gg68b574m4
790c720
<         image: quay.io/konflux-ci/image-controller:3296e4996f6ffce1df7273d3c29adb6df20348c7
---
>         image: quay.io/konflux-ci/image-controller:abe39f6c2163fdf81faf5e4eaace7401b9524a81
872c802
<             - python /image-pruner/prune_images.py --namespace $(NAMESPACE)
---
>             - echo 'The pruner is temporarily disabled, see https://github.com/konflux-ci/image-controller/pull/115'
904c834
<               name: image-controller-image-pruner-configmap-g7h295gd6b
---
>               name: image-controller-image-pruner-configmap-gg68b574m4 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ff56d3bd to 22c7c1b6 on Fri May 31 07:52:36 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index d6ee8bf0..1aee8024 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -7,6 +7,8 @@ approvers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
@@ -14,3 +16,5 @@ reviewers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
diff --git a/components/image-controller/OWNERS b/components/image-controller/OWNERS
index d5552f0f..02a378e7 100644
--- a/components/image-controller/OWNERS
+++ b/components/image-controller/OWNERS
@@ -2,6 +2,16 @@
 
 approvers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
+- tkdchen
+- mkosiarc
+- rcerven
+- tisutisu
+- chmeliik
diff --git a/components/image-controller/base/OWNERS b/components/image-controller/base/OWNERS
deleted file mode 100644
index f3264bb7..00000000
--- a/components/image-controller/base/OWNERS
+++ /dev/null
@@ -1,13 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-
-reviewers:
-- mmorhun
-- tkdchen
-- mkosiarc
-- rcerven
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index d6ee8bf0..1aee8024 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -7,6 +7,8 @@ approvers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
@@ -14,3 +16,5 @@ reviewers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik 
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
<h3>4: Staging changes from ff56d3bd to 22c7c1b6 on Fri May 31 07:52:36 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index d6ee8bf0..1aee8024 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -7,6 +7,8 @@ approvers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
@@ -14,3 +16,5 @@ reviewers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
diff --git a/components/image-controller/OWNERS b/components/image-controller/OWNERS
index d5552f0f..02a378e7 100644
--- a/components/image-controller/OWNERS
+++ b/components/image-controller/OWNERS
@@ -2,6 +2,16 @@
 
 approvers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
+- tkdchen
+- mkosiarc
+- rcerven
+- tisutisu
+- chmeliik
diff --git a/components/image-controller/base/OWNERS b/components/image-controller/base/OWNERS
deleted file mode 100644
index f3264bb7..00000000
--- a/components/image-controller/base/OWNERS
+++ /dev/null
@@ -1,13 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-
-reviewers:
-- mmorhun
-- tkdchen
-- mkosiarc
-- rcerven
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index d6ee8bf0..1aee8024 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -7,6 +7,8 @@ approvers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
@@ -14,3 +16,5 @@ reviewers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik 
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
<h3>4: Development changes from ff56d3bd to 22c7c1b6 on Fri May 31 07:52:36 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index d6ee8bf0..1aee8024 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -7,6 +7,8 @@ approvers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
@@ -14,3 +16,5 @@ reviewers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
diff --git a/components/image-controller/OWNERS b/components/image-controller/OWNERS
index d5552f0f..02a378e7 100644
--- a/components/image-controller/OWNERS
+++ b/components/image-controller/OWNERS
@@ -2,6 +2,16 @@
 
 approvers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
+- tkdchen
+- mkosiarc
+- rcerven
+- tisutisu
+- chmeliik
diff --git a/components/image-controller/base/OWNERS b/components/image-controller/base/OWNERS
deleted file mode 100644
index f3264bb7..00000000
--- a/components/image-controller/base/OWNERS
+++ /dev/null
@@ -1,13 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- mmorhun
-- tkdchen
-- rcerven
-- mkosiarc
-
-reviewers:
-- mmorhun
-- tkdchen
-- mkosiarc
-- rcerven
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index d6ee8bf0..1aee8024 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -7,6 +7,8 @@ approvers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik
 
 reviewers:
 - mmorhun
@@ -14,3 +16,5 @@ reviewers:
 - rcerven
 - mkosiarc
 - stuartwdouglas
+- tisutisu
+- chmeliik 
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
```
 
</details> 
<br> 


</div>
