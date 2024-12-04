# kustomize changes tracked by commits 
### This file generated at Wed Dec  4 20:04:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5b2db0af to dd68d82d on Wed Dec 4 18:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index f0ac8d12..cf4045c8 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -14,6 +14,7 @@ data:
   dynamic-platforms: "\
     linux/arm64,\
     linux/amd64,\
+    linux-d160/arm64,\
     linux-mlarge/amd64,\
     linux-mlarge/arm64,\
     linux-mxlarge/amd64,\
@@ -63,7 +64,20 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "160"
+
+   # same as default but with 160GB disk instead of default 40GB
+  dynamic.linux-d160-arm64.type: aws
+  dynamic.linux-d160-arm64.region: us-east-1
+  dynamic.linux-d160-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-d160-arm64.instance-type: m6g.large
+  dynamic.linux-d160-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-d160-arm64.aws-secret: aws-account
+  dynamic.linux-d160-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-d160-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-d160-arm64.max-instances: "100"
+  dynamic.linux-d160-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-d160-arm64.allocation-timeout: "1200"
+  dynamic.linux-d160-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +90,6 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +102,6 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +114,6 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +126,6 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +138,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "160"
 
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
<h3>1: Staging changes from 5b2db0af to dd68d82d on Wed Dec 4 18:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index f0ac8d12..cf4045c8 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -14,6 +14,7 @@ data:
   dynamic-platforms: "\
     linux/arm64,\
     linux/amd64,\
+    linux-d160/arm64,\
     linux-mlarge/amd64,\
     linux-mlarge/arm64,\
     linux-mxlarge/amd64,\
@@ -63,7 +64,20 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "160"
+
+   # same as default but with 160GB disk instead of default 40GB
+  dynamic.linux-d160-arm64.type: aws
+  dynamic.linux-d160-arm64.region: us-east-1
+  dynamic.linux-d160-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-d160-arm64.instance-type: m6g.large
+  dynamic.linux-d160-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-d160-arm64.aws-secret: aws-account
+  dynamic.linux-d160-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-d160-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-d160-arm64.max-instances: "100"
+  dynamic.linux-d160-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-d160-arm64.allocation-timeout: "1200"
+  dynamic.linux-d160-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +90,6 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +102,6 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +114,6 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +126,6 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +138,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "160"
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 5b2db0af to dd68d82d on Wed Dec 4 18:34:49 2024 </h3>  
 
<details> 
<summary>Git Diff (74 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
index f0ac8d12..cf4045c8 100644
--- a/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/kflux-ocp-p01/host-config.yaml
@@ -14,6 +14,7 @@ data:
   dynamic-platforms: "\
     linux/arm64,\
     linux/amd64,\
+    linux-d160/arm64,\
     linux-mlarge/amd64,\
     linux-mlarge/arm64,\
     linux-mxlarge/amd64,\
@@ -63,7 +64,20 @@ data:
   dynamic.linux-arm64.max-instances: "100"
   dynamic.linux-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-arm64.allocation-timeout: "1200"
-  dynamic.linux-arm64.disk: "160"
+
+   # same as default but with 160GB disk instead of default 40GB
+  dynamic.linux-d160-arm64.type: aws
+  dynamic.linux-d160-arm64.region: us-east-1
+  dynamic.linux-d160-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-d160-arm64.instance-type: m6g.large
+  dynamic.linux-d160-arm64.key-name: kflux-ocp-p01-key-pair
+  dynamic.linux-d160-arm64.aws-secret: aws-account
+  dynamic.linux-d160-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-d160-arm64.security-group-id: sg-0a1f3fdbbf7198922
+  dynamic.linux-d160-arm64.max-instances: "100"
+  dynamic.linux-d160-arm64.subnet-id: subnet-0864e71d16676bf7f
+  dynamic.linux-d160-arm64.allocation-timeout: "1200"
+  dynamic.linux-d160-arm64.disk: "160"
 
   dynamic.linux-mlarge-arm64.type: aws
   dynamic.linux-mlarge-arm64.region: us-east-1
@@ -76,7 +90,6 @@ data:
   dynamic.linux-mlarge-arm64.max-instances: "100"
   dynamic.linux-mlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mlarge-arm64.disk: "160"
 
   dynamic.linux-mxlarge-arm64.type: aws
   dynamic.linux-mxlarge-arm64.region: us-east-1
@@ -89,7 +102,6 @@ data:
   dynamic.linux-mxlarge-arm64.max-instances: "100"
   dynamic.linux-mxlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-mxlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-mxlarge-arm64.disk: "160"
 
   dynamic.linux-m2xlarge-arm64.type: aws
   dynamic.linux-m2xlarge-arm64.region: us-east-1
@@ -102,7 +114,6 @@ data:
   dynamic.linux-m2xlarge-arm64.max-instances: "100"
   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m2xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m2xlarge-arm64.disk: "160"
 
   dynamic.linux-m4xlarge-arm64.type: aws
   dynamic.linux-m4xlarge-arm64.region: us-east-1
@@ -115,7 +126,6 @@ data:
   dynamic.linux-m4xlarge-arm64.max-instances: "100"
   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m4xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m4xlarge-arm64.disk: "160"
 
   dynamic.linux-m8xlarge-arm64.type: aws
   dynamic.linux-m8xlarge-arm64.region: us-east-1
@@ -128,7 +138,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "100"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-0864e71d16676bf7f
   dynamic.linux-m8xlarge-arm64.allocation-timeout: "1200"
-  dynamic.linux-m8xlarge-arm64.disk: "160"
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 00af08ba to 5b2db0af on Wed Dec 4 16:29:53 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index e07c2fc0..1ad513fc 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/konflux-ci/internal-services/config/crd?ref=15c778d385429e0f30a61796f4afee58bdb78873
+- https://github.com/konflux-ci/internal-services/config/crd?ref=76d6f4a06be38811c5161ebbe7909ecdf44eea51
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
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
<h3>2: Staging changes from 00af08ba to 5b2db0af on Wed Dec 4 16:29:53 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index e07c2fc0..1ad513fc 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/konflux-ci/internal-services/config/crd?ref=15c778d385429e0f30a61796f4afee58bdb78873
+- https://github.com/konflux-ci/internal-services/config/crd?ref=76d6f4a06be38811c5161ebbe7909ecdf44eea51
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
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
<h3>2: Development changes from 00af08ba to 5b2db0af on Wed Dec 4 16:29:53 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/internal-services/kustomization.yaml b/components/internal-services/kustomization.yaml
index e07c2fc0..1ad513fc 100644
--- a/components/internal-services/kustomization.yaml
+++ b/components/internal-services/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
 - internal_service_request_service_account.yaml
 - internal_service_service_account_token.yaml
 - internal-services.yaml
-- https://github.com/konflux-ci/internal-services/config/crd?ref=15c778d385429e0f30a61796f4afee58bdb78873
+- https://github.com/konflux-ci/internal-services/config/crd?ref=76d6f4a06be38811c5161ebbe7909ecdf44eea51
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from d95cfe4a to 00af08ba on Wed Dec 4 15:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
index 7910dfe7..537f95eb 100644
--- a/components/crossplane-config/base/kustomization.yaml
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -3,4 +3,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - rbac.yaml
-  - secret.yaml
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
deleted file mode 100644
index c297f060..00000000
--- a/components/crossplane-config/base/secret.yaml
+++ /dev/null
@@ -1,9 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: crossplane-secret
-  namespace: crossplane-config
-  annotations:
-    kubernetes.io/service-account.name: crossplane-sa
-type: kubernetes.io/service-account-token 
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
<h3>3: Staging changes from d95cfe4a to 00af08ba on Wed Dec 4 15:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
index 7910dfe7..537f95eb 100644
--- a/components/crossplane-config/base/kustomization.yaml
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -3,4 +3,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - rbac.yaml
-  - secret.yaml
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
deleted file mode 100644
index c297f060..00000000
--- a/components/crossplane-config/base/secret.yaml
+++ /dev/null
@@ -1,9 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: crossplane-secret
-  namespace: crossplane-config
-  annotations:
-    kubernetes.io/service-account.name: crossplane-sa
-type: kubernetes.io/service-account-token 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-d95cfe4a/staging/components/crossplane-config/staging/kustomize.out.yaml
53a54,62
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: crossplane-sa
>   name: crossplane-secret
>   namespace: crossplane-config
> type: kubernetes.io/service-account-token 
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
<h3>3: Development changes from d95cfe4a to 00af08ba on Wed Dec 4 15:45:59 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/crossplane-config/base/kustomization.yaml b/components/crossplane-config/base/kustomization.yaml
index 7910dfe7..537f95eb 100644
--- a/components/crossplane-config/base/kustomization.yaml
+++ b/components/crossplane-config/base/kustomization.yaml
@@ -3,4 +3,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - rbac.yaml
-  - secret.yaml
diff --git a/components/crossplane-config/base/secret.yaml b/components/crossplane-config/base/secret.yaml
deleted file mode 100644
index c297f060..00000000
--- a/components/crossplane-config/base/secret.yaml
+++ /dev/null
@@ -1,9 +0,0 @@
----
-apiVersion: v1
-kind: Secret
-metadata:
-  name: crossplane-secret
-  namespace: crossplane-config
-  annotations:
-    kubernetes.io/service-account.name: crossplane-sa
-type: kubernetes.io/service-account-token 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-d95cfe4a/development/components/crossplane-config/development/kustomize.out.yaml
53a54,62
> ---
> apiVersion: v1
> kind: Secret
> metadata:
>   annotations:
>     kubernetes.io/service-account.name: crossplane-sa
>   name: crossplane-secret
>   namespace: crossplane-config
> type: kubernetes.io/service-account-token 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 923a1971 to d95cfe4a on Wed Dec 4 15:45:52 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 9a7dc6c1..0e30a555 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -49,6 +49,7 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - release-service
         - ci-helper-app
         - mintmaker
         - konflux-otel
diff --git a/components/release/staging/external-secrets/release-monitor-secret.yaml b/components/release/staging/external-secrets/release-monitor-secret.yaml
new file mode 100644
index 00000000..5790336a
--- /dev/null
+++ b/components/release/staging/external-secrets/release-monitor-secret.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: release-monitor-secret
+  namespace: release-service
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/release/monitor
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: release-monitor-secret
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e8c0ef5..0e72f5a9 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
+  - external-secrets/release-monitor-secret.yaml
   - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-923a1971/production/components/cluster-secret-store/production/kustomize.out.yaml
32d31
<     - release-service 
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
<h3>4: Staging changes from 923a1971 to d95cfe4a on Wed Dec 4 15:45:52 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 9a7dc6c1..0e30a555 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -49,6 +49,7 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - release-service
         - ci-helper-app
         - mintmaker
         - konflux-otel
diff --git a/components/release/staging/external-secrets/release-monitor-secret.yaml b/components/release/staging/external-secrets/release-monitor-secret.yaml
new file mode 100644
index 00000000..5790336a
--- /dev/null
+++ b/components/release/staging/external-secrets/release-monitor-secret.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: release-monitor-secret
+  namespace: release-service
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/release/monitor
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: release-monitor-secret
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e8c0ef5..0e72f5a9 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
+  - external-secrets/release-monitor-secret.yaml
   - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-923a1971/staging/components/cluster-secret-store/staging/kustomize.out.yaml
32d31
<     - release-service
./commit-923a1971/staging/components/release/staging/kustomize.out.yaml
2325,2345d2324
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: release-monitor-secret
<   namespace: release-service
< spec:
<   dataFrom:
<   - extract:
<       key: staging/release/monitor
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: release-monitor-secret
< --- 
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
<h3>4: Development changes from 923a1971 to d95cfe4a on Wed Dec 4 15:45:52 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
index 9a7dc6c1..0e30a555 100644
--- a/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
+++ b/components/cluster-secret-store/base/appsre-stonesoup-vault-secret-store.yaml
@@ -49,6 +49,7 @@ spec:
         - rhtap-o11y-tenant
         - admin-checker
         - integration-service
+        - release-service
         - ci-helper-app
         - mintmaker
         - konflux-otel
diff --git a/components/release/staging/external-secrets/release-monitor-secret.yaml b/components/release/staging/external-secrets/release-monitor-secret.yaml
new file mode 100644
index 00000000..5790336a
--- /dev/null
+++ b/components/release/staging/external-secrets/release-monitor-secret.yaml
@@ -0,0 +1,20 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: release-monitor-secret
+  namespace: release-service
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/release/monitor
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: release-monitor-secret
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8e8c0ef5..0e72f5a9 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,6 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
+  - external-secrets/release-monitor-secret.yaml
   - https://github.com/konflux-ci/release-service/config/default?ref=de8d3c42f6f8c56fa3cb0b0dc1bf2faee82ed70c
 
 components: 
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
```
 
</details> 
<br> 


</div>
