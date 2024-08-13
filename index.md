# kustomize changes tracked by commits 
### This file generated at Tue Aug 13 20:04:56 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 79d59631 to d2b74c3e on Tue Aug 13 18:39:23 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 3630946c..e6053a01 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,11 @@
 approvers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
 
 reviewers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 48214e46..07cdae0f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
@@ -67,17 +93,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8c021990..8618c0d7 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g4xlarge/amd64,'
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -66,17 +92,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 79d59631 to d2b74c3e on Tue Aug 13 18:39:23 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 3630946c..e6053a01 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,11 @@
 approvers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
 
 reviewers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 48214e46..07cdae0f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
@@ -67,17 +93,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8c021990..8618c0d7 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g4xlarge/amd64,'
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -66,17 +92,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-79d59631/staging/components/multi-platform-controller/staging/kustomize.out.yaml
188,189c188,198
<   dynamic-platforms: linux/arm64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,'
<     linux-root/arm64,linux-root/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
>   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
>   dynamic.linux-amd64.aws-secret: aws-account
>   dynamic.linux-amd64.instance-type: m6a.large
>   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
>   dynamic.linux-amd64.max-instances: "10"
>   dynamic.linux-amd64.region: us-east-1
>   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
>   dynamic.linux-amd64.ssh-secret: aws-ssh-key
>   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
>   dynamic.linux-amd64.type: aws
405d413
<   local-platforms: linux/amd64,linux/x86_64,local,localhost, 
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
<h3>1: Development changes from 79d59631 to d2b74c3e on Tue Aug 13 18:39:23 2024 </h3>  
 
<details> 
<summary>Git Diff (134 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 3630946c..e6053a01 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -3,7 +3,11 @@
 approvers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
 
 reviewers:
 - ifireball
 - arewm
+- hugares
+- mshaposhnik
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 48214e46..07cdae0f 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64,linux/s390x
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux/s390x,\
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   dynamic-pool-platforms: linux/ppc64le
   instance-tag: rhtap-staging
 
@@ -67,17 +93,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-07597d1edafa2b9d3
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 8c021990..8618c0d7 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -6,8 +6,34 @@ metadata:
   name: host-config
   namespace: multi-platform-controller
 data:
-
-  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-g4xlarge/amd64,linux-root/arm64,linux-root/amd64
+  local-platforms: "\
+    linux/amd64,\
+    linux/x86_64,\
+    local,\
+    localhost,\
+    "
+  dynamic-platforms: "\
+    linux/arm64,\
+    linux-mxlarge/amd64,\
+    linux-mxlarge/arm64,\
+    linux-m2xlarge/amd64,\
+    linux-m2xlarge/arm64,\
+    linux-m4xlarge/amd64,\
+    linux-m4xlarge/arm64,\
+    linux-m8xlarge/amd64,\
+    linux-m8xlarge/arm64,\
+    linux-cxlarge/amd64,\
+    linux-cxlarge/arm64,\
+    linux-c2xlarge/amd64,\
+    linux-c2xlarge/arm64,\
+    linux-c4xlarge/amd64,\
+    linux-c4xlarge/arm64,\
+    linux-c8xlarge/amd64,\
+    linux-c8xlarge/arm64,\
+    linux-g4xlarge/amd64,'
+    linux-root/arm64,\
+    linux-root/amd64\
+    "
   instance-tag: rhtap-staging
 
   # cpu:memory (1:4)
@@ -66,17 +92,6 @@ data:
   dynamic.linux-m8xlarge-arm64.max-instances: "10"
   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
 
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m6a.large
-  dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
-  dynamic.linux-amd64.max-instances: "10"
-  dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
-
   dynamic.linux-mxlarge-amd64.type: aws
   dynamic.linux-mxlarge-amd64.region: us-east-1
   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2 
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
<h3>2: Production changes from e0842126 to 79d59631 on Tue Aug 13 15:41:57 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/README.md b/components/pipeline-service/README.md
new file mode 100644
index 00000000..bc53c7e5
--- /dev/null
+++ b/components/pipeline-service/README.md
@@ -0,0 +1,89 @@
+# Configuring OpenShift Pipelines (the version of Tekton installed by the OpenShift Pipelines Operator) on Konflux
+
+As of August, 2024, Konflux no longer uses the [deprecated 'Pipeline Service' repository](https://github.com/openshift-pipelines/pipeline-service/)
+as a base of the Tekton related configuration deployed on the various Konflux clusters.
+
+All the different Kubernetes base object and CRD instances reside in the various subdirectories here for each of
+the GitOPS overlays employed for Konflux in this repository.
+
+While the OpenShift Pipelines team will continue to provide assistance to questions from the Konflux community, 
+via slack messages to #forum-ocp-pipelines (public facing channel) or #team-ocp-pipeline or mentions in pull
+requests (@openshift-pipelines/pipelines or individual developer github handles), the expectation is that if 
+a Konflux development team needs an update to any Tekton related configuration, they will initiate the change
+and review with the OpenShift Pipelines team as needed.
+
+Configuration documentation:
+[Upstream configuration reference](https://tekton.dev/docs/pipelines/additional-configs/)
+
+[Downstream documentation for OpenShift Pipelines](https://docs.openshift.com/pipelines/1.15/about/understanding-openshift-pipelines.html)
+
+## Kustomize verification commands
+
+All commands in this section are relative to the infra-deployments repository root directory
+
+- development overlay:
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/development/
+```
+
+- stage overlay:
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/staging/base
+```
+
+- production overlay
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/production/base
+```
+
+## Current protocol
+
+The basic pattern followed is to update both the development and stage overlays with as new change.
+The development overlay the 'appstudio-e2e-tests' CI job that leverage Konflux QE's [End to End tests](https://github.com/konflux-ci/e2e-tests) utilize.
+Their slack channel for questions on the tests, known issues, help in debug, is #forum-konflux-qe.
+
+The stage overlay deploys the Konflux clusters that post merge development testing can be done on, where those
+clusters resemble as closely as possible the production clusters.
+
+After vetting the change in stage for an amount of time appropriate for the complexity of your change, move onto
+updating the production clusters.
+
+## Update procedure
+
+All commands in this section are relative to the infra-deployments repository root directory
+
+- For development overlay: 
+
+Edit the yaml files under the development subdirectory as needed.  Run the 'kustomize build' command for the 
+development overlay as a sanity check, and then git commit to your branch to include in your pull request.
+
+- For stage overlay:
+
+Same process with respect to editing files, though under the 'stage' subdirectory this time,  and running 'kustomize build',
+but there is a separate step.  Specific 'deploy.yaml' files are created for each of the actual Konflux clusters.
+
+To update them with your yaml changes:
+```shell
+# cd to your infra-deployment git clone base directory
+$ ./hack/generate-deploy-config.sh -c components/pipeline-service/staging
+# to see if your updates made it to the deploy.yaml files
+$ git status
+```
+
+- For production overlay:
+
+Same as 'stage' overlay, though you'll deal with the yaml files under the 'production' subdirectory, and the 
+use of 'generate-deploy-config.sh' similarily is tweaked to update the 'production' overlay.
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ ./hack/generate-deploy-config.sh -c components/pipeline-service/production
+# to see if your updates made it to the deploy.yaml files
+$ git status
+```
\ No newline at end of file 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from e0842126 to 79d59631 on Tue Aug 13 15:41:57 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/README.md b/components/pipeline-service/README.md
new file mode 100644
index 00000000..bc53c7e5
--- /dev/null
+++ b/components/pipeline-service/README.md
@@ -0,0 +1,89 @@
+# Configuring OpenShift Pipelines (the version of Tekton installed by the OpenShift Pipelines Operator) on Konflux
+
+As of August, 2024, Konflux no longer uses the [deprecated 'Pipeline Service' repository](https://github.com/openshift-pipelines/pipeline-service/)
+as a base of the Tekton related configuration deployed on the various Konflux clusters.
+
+All the different Kubernetes base object and CRD instances reside in the various subdirectories here for each of
+the GitOPS overlays employed for Konflux in this repository.
+
+While the OpenShift Pipelines team will continue to provide assistance to questions from the Konflux community, 
+via slack messages to #forum-ocp-pipelines (public facing channel) or #team-ocp-pipeline or mentions in pull
+requests (@openshift-pipelines/pipelines or individual developer github handles), the expectation is that if 
+a Konflux development team needs an update to any Tekton related configuration, they will initiate the change
+and review with the OpenShift Pipelines team as needed.
+
+Configuration documentation:
+[Upstream configuration reference](https://tekton.dev/docs/pipelines/additional-configs/)
+
+[Downstream documentation for OpenShift Pipelines](https://docs.openshift.com/pipelines/1.15/about/understanding-openshift-pipelines.html)
+
+## Kustomize verification commands
+
+All commands in this section are relative to the infra-deployments repository root directory
+
+- development overlay:
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/development/
+```
+
+- stage overlay:
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/staging/base
+```
+
+- production overlay
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/production/base
+```
+
+## Current protocol
+
+The basic pattern followed is to update both the development and stage overlays with as new change.
+The development overlay the 'appstudio-e2e-tests' CI job that leverage Konflux QE's [End to End tests](https://github.com/konflux-ci/e2e-tests) utilize.
+Their slack channel for questions on the tests, known issues, help in debug, is #forum-konflux-qe.
+
+The stage overlay deploys the Konflux clusters that post merge development testing can be done on, where those
+clusters resemble as closely as possible the production clusters.
+
+After vetting the change in stage for an amount of time appropriate for the complexity of your change, move onto
+updating the production clusters.
+
+## Update procedure
+
+All commands in this section are relative to the infra-deployments repository root directory
+
+- For development overlay: 
+
+Edit the yaml files under the development subdirectory as needed.  Run the 'kustomize build' command for the 
+development overlay as a sanity check, and then git commit to your branch to include in your pull request.
+
+- For stage overlay:
+
+Same process with respect to editing files, though under the 'stage' subdirectory this time,  and running 'kustomize build',
+but there is a separate step.  Specific 'deploy.yaml' files are created for each of the actual Konflux clusters.
+
+To update them with your yaml changes:
+```shell
+# cd to your infra-deployment git clone base directory
+$ ./hack/generate-deploy-config.sh -c components/pipeline-service/staging
+# to see if your updates made it to the deploy.yaml files
+$ git status
+```
+
+- For production overlay:
+
+Same as 'stage' overlay, though you'll deal with the yaml files under the 'production' subdirectory, and the 
+use of 'generate-deploy-config.sh' similarily is tweaked to update the 'production' overlay.
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ ./hack/generate-deploy-config.sh -c components/pipeline-service/production
+# to see if your updates made it to the deploy.yaml files
+$ git status
+```
\ No newline at end of file 
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
<h3>2: Development changes from e0842126 to 79d59631 on Tue Aug 13 15:41:57 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/pipeline-service/README.md b/components/pipeline-service/README.md
new file mode 100644
index 00000000..bc53c7e5
--- /dev/null
+++ b/components/pipeline-service/README.md
@@ -0,0 +1,89 @@
+# Configuring OpenShift Pipelines (the version of Tekton installed by the OpenShift Pipelines Operator) on Konflux
+
+As of August, 2024, Konflux no longer uses the [deprecated 'Pipeline Service' repository](https://github.com/openshift-pipelines/pipeline-service/)
+as a base of the Tekton related configuration deployed on the various Konflux clusters.
+
+All the different Kubernetes base object and CRD instances reside in the various subdirectories here for each of
+the GitOPS overlays employed for Konflux in this repository.
+
+While the OpenShift Pipelines team will continue to provide assistance to questions from the Konflux community, 
+via slack messages to #forum-ocp-pipelines (public facing channel) or #team-ocp-pipeline or mentions in pull
+requests (@openshift-pipelines/pipelines or individual developer github handles), the expectation is that if 
+a Konflux development team needs an update to any Tekton related configuration, they will initiate the change
+and review with the OpenShift Pipelines team as needed.
+
+Configuration documentation:
+[Upstream configuration reference](https://tekton.dev/docs/pipelines/additional-configs/)
+
+[Downstream documentation for OpenShift Pipelines](https://docs.openshift.com/pipelines/1.15/about/understanding-openshift-pipelines.html)
+
+## Kustomize verification commands
+
+All commands in this section are relative to the infra-deployments repository root directory
+
+- development overlay:
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/development/
+```
+
+- stage overlay:
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/staging/base
+```
+
+- production overlay
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ kustomize build ./components/pipeline-service/production/base
+```
+
+## Current protocol
+
+The basic pattern followed is to update both the development and stage overlays with as new change.
+The development overlay the 'appstudio-e2e-tests' CI job that leverage Konflux QE's [End to End tests](https://github.com/konflux-ci/e2e-tests) utilize.
+Their slack channel for questions on the tests, known issues, help in debug, is #forum-konflux-qe.
+
+The stage overlay deploys the Konflux clusters that post merge development testing can be done on, where those
+clusters resemble as closely as possible the production clusters.
+
+After vetting the change in stage for an amount of time appropriate for the complexity of your change, move onto
+updating the production clusters.
+
+## Update procedure
+
+All commands in this section are relative to the infra-deployments repository root directory
+
+- For development overlay: 
+
+Edit the yaml files under the development subdirectory as needed.  Run the 'kustomize build' command for the 
+development overlay as a sanity check, and then git commit to your branch to include in your pull request.
+
+- For stage overlay:
+
+Same process with respect to editing files, though under the 'stage' subdirectory this time,  and running 'kustomize build',
+but there is a separate step.  Specific 'deploy.yaml' files are created for each of the actual Konflux clusters.
+
+To update them with your yaml changes:
+```shell
+# cd to your infra-deployment git clone base directory
+$ ./hack/generate-deploy-config.sh -c components/pipeline-service/staging
+# to see if your updates made it to the deploy.yaml files
+$ git status
+```
+
+- For production overlay:
+
+Same as 'stage' overlay, though you'll deal with the yaml files under the 'production' subdirectory, and the 
+use of 'generate-deploy-config.sh' similarily is tweaked to update the 'production' overlay.
+
+```shell
+# cd to your infra-deployment git clone base directory
+$ ./hack/generate-deploy-config.sh -c components/pipeline-service/production
+# to see if your updates made it to the deploy.yaml files
+$ git status
+```
\ No newline at end of file 
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
<h3>3: Production changes from c0776610 to e0842126 on Tue Aug 13 12:49:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 67b6f73a..2533234a 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=21d434a3d205c3dc485d0136cd3816a4744d134b
+- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 21d434a3d205c3dc485d0136cd3816a4744d134b
+  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-c0776610/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
550c550
<         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a
---
>         image: quay.io/konflux-ci/build-service:21d434a3d205c3dc485d0136cd3816a4744d134b
./commit-c0776610/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
550c550
<         image: quay.io/konflux-ci/build-service:8b7ee22295b48de138d5536d9b1fc2c50c3b350a
---
>         image: quay.io/konflux-ci/build-service:21d434a3d205c3dc485d0136cd3816a4744d134b 
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
<h3>3: Staging changes from c0776610 to e0842126 on Tue Aug 13 12:49:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 67b6f73a..2533234a 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=21d434a3d205c3dc485d0136cd3816a4744d134b
+- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 21d434a3d205c3dc485d0136cd3816a4744d134b
+  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from c0776610 to e0842126 on Tue Aug 13 12:49:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 67b6f73a..2533234a 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=21d434a3d205c3dc485d0136cd3816a4744d134b
+- https://github.com/konflux-ci/build-service/config/default?ref=8b7ee22295b48de138d5536d9b1fc2c50c3b350a
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: 21d434a3d205c3dc485d0136cd3816a4744d134b
+  newTag: 8b7ee22295b48de138d5536d9b1fc2c50c3b350a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 6d352451 to c0776610 on Tue Aug 13 08:20:32 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index c1d0817d..565a2362 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -310,8 +310,8 @@ data:
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-1x4"
-  dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
   dynamic.linux-s390x.private-ip: "true"
 
   # dynamic.linux-ppc64le.type: ibmp 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6d352451 to c0776610 on Tue Aug 13 08:20:32 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index c1d0817d..565a2362 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -310,8 +310,8 @@ data:
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-1x4"
-  dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
   dynamic.linux-s390x.private-ip: "true"
 
   # dynamic.linux-ppc64le.type: ibmp 
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
<h3>4: Development changes from 6d352451 to c0776610 on Tue Aug 13 08:20:32 2024 </h3>  
 
<details> 
<summary>Git Diff (15 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index c1d0817d..565a2362 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -310,8 +310,8 @@ data:
   dynamic.linux-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
   dynamic.linux-s390x.region: "us-east-1"
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
-  dynamic.linux-s390x.profile: "bz2-1x4"
-  dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.profile: "bz2-2x8"
+  dynamic.linux-s390x.max-instances: "20"
   dynamic.linux-s390x.private-ip: "true"
 
   # dynamic.linux-ppc64le.type: ibmp 
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
