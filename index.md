# kustomize changes tracked by commits 
### This file generated at Fri Jul  5 12:04:21 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 407f739e to a33de09c on Fri Jul 5 09:01:00 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 336f52af..e03f7cc2 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,35 +7,210 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  #root
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
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
<h3>1: Staging changes from 407f739e to a33de09c on Fri Jul 5 09:01:00 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 336f52af..e03f7cc2 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,35 +7,210 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  #root
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (174 lines)</summary>  

``` 
./commit-407f739e/staging/components/multi-platform-controller/staging/kustomize.out.yaml
177c177
<   dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
180c180
<   dynamic.linux-amd64.instance-type: m6a.large
---
>   dynamic.linux-amd64.instance-type: m5.large
190c190
<   dynamic.linux-arm64.instance-type: m6g.large
---
>   dynamic.linux-arm64.instance-type: t4g.small
198,357d197
<   dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
<   dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c2xlarge-amd64.max-instances: "10"
<   dynamic.linux-c2xlarge-amd64.region: us-east-1
<   dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c2xlarge-amd64.type: aws
<   dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
<   dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c2xlarge-arm64.max-instances: "10"
<   dynamic.linux-c2xlarge-arm64.region: us-east-1
<   dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c2xlarge-arm64.type: aws
<   dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
<   dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c4xlarge-amd64.max-instances: "10"
<   dynamic.linux-c4xlarge-amd64.region: us-east-1
<   dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c4xlarge-amd64.type: aws
<   dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
<   dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c4xlarge-arm64.max-instances: "10"
<   dynamic.linux-c4xlarge-arm64.region: us-east-1
<   dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c4xlarge-arm64.type: aws
<   dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
<   dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c8xlarge-amd64.max-instances: "10"
<   dynamic.linux-c8xlarge-amd64.region: us-east-1
<   dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c8xlarge-amd64.type: aws
<   dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
<   dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-c8xlarge-arm64.max-instances: "10"
<   dynamic.linux-c8xlarge-arm64.region: us-east-1
<   dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-c8xlarge-arm64.type: aws
<   dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-cxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
<   dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-cxlarge-amd64.max-instances: "10"
<   dynamic.linux-cxlarge-amd64.region: us-east-1
<   dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-cxlarge-amd64.type: aws
<   dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-cxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
<   dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-cxlarge-arm64.max-instances: "10"
<   dynamic.linux-cxlarge-arm64.region: us-east-1
<   dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-cxlarge-arm64.type: aws
<   dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
<   dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m2xlarge-amd64.max-instances: "10"
<   dynamic.linux-m2xlarge-amd64.region: us-east-1
<   dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m2xlarge-amd64.type: aws
<   dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
<   dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m2xlarge-arm64.max-instances: "10"
<   dynamic.linux-m2xlarge-arm64.region: us-east-1
<   dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m2xlarge-arm64.type: aws
<   dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
<   dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m4xlarge-amd64.max-instances: "10"
<   dynamic.linux-m4xlarge-amd64.region: us-east-1
<   dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m4xlarge-amd64.type: aws
<   dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
<   dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m4xlarge-arm64.max-instances: "10"
<   dynamic.linux-m4xlarge-arm64.region: us-east-1
<   dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m4xlarge-arm64.type: aws
<   dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
<   dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m8xlarge-amd64.max-instances: "10"
<   dynamic.linux-m8xlarge-amd64.region: us-east-1
<   dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m8xlarge-amd64.type: aws
<   dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
<   dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
<   dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-m8xlarge-arm64.max-instances: "10"
<   dynamic.linux-m8xlarge-arm64.region: us-east-1
<   dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-m8xlarge-arm64.type: aws
<   dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-mxlarge-amd64.aws-secret: aws-account
<   dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
<   dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-mxlarge-amd64.max-instances: "10"
<   dynamic.linux-mxlarge-amd64.region: us-east-1
<   dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-mxlarge-amd64.type: aws
<   dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-mxlarge-arm64.aws-secret: aws-account
<   dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
<   dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-mxlarge-arm64.max-instances: "10"
<   dynamic.linux-mxlarge-arm64.region: us-east-1
<   dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-mxlarge-arm64.type: aws 
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
<h3>1: Development changes from 407f739e to a33de09c on Fri Jul 5 09:01:00 2024 </h3>  
 
<details> 
<summary>Git Diff (222 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 336f52af..e03f7cc2 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,35 +7,210 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-mxlarge/amd64,linux-mxlarge/arm64,linux-m2xlarge/amd64,linux-m2xlarge/arm64,linux-m4xlarge/amd64,linux-m4xlarge/arm64,linux-m8xlarge/amd64,linux-m8xlarge/arm64,linux-cxlarge/amd64,linux-cxlarge/arm64,linux-c2xlarge/amd64,linux-c2xlarge/arm64,linux-c4xlarge/amd64,linux-c4xlarge/arm64,linux-c8xlarge/amd64,linux-c8xlarge/arm64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
+  # cpu:memory (1:4)
   dynamic.linux-arm64.type: aws
   dynamic.linux-arm64.region: us-east-1
   dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.instance-type: m6g.large
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
-  # dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-arm64.type: aws
+  dynamic.linux-mxlarge-arm64.region: us-east-1
+  dynamic.linux-mxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-mxlarge-arm64.instance-type: m6g.xlarge
+  dynamic.linux-mxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-mxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-arm64.max-instances: "10"
+  dynamic.linux-mxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-arm64.type: aws
+  dynamic.linux-m2xlarge-arm64.region: us-east-1
+  dynamic.linux-m2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m2xlarge-arm64.instance-type: m6g.2xlarge
+  dynamic.linux-m2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-arm64.max-instances: "10"
+  dynamic.linux-m2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-arm64.type: aws
+  dynamic.linux-m4xlarge-arm64.region: us-east-1
+  dynamic.linux-m4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m4xlarge-arm64.instance-type: m6g.4xlarge
+  dynamic.linux-m4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-arm64.max-instances: "10"
+  dynamic.linux-m4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-arm64.type: aws
+  dynamic.linux-m8xlarge-arm64.region: us-east-1
+  dynamic.linux-m8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-m8xlarge-arm64.instance-type: m6g.8xlarge
+  dynamic.linux-m8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-arm64.max-instances: "10"
+  dynamic.linux-m8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
   dynamic.linux-amd64.type: aws
   dynamic.linux-amd64.region: us-east-1
   dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.instance-type: m6a.large
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
-  # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-mxlarge-amd64.type: aws
+  dynamic.linux-mxlarge-amd64.region: us-east-1
+  dynamic.linux-mxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-mxlarge-amd64.instance-type: m6a.xlarge
+  dynamic.linux-mxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-mxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-mxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-mxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-mxlarge-amd64.max-instances: "10"
+  dynamic.linux-mxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m2xlarge-amd64.type: aws
+  dynamic.linux-m2xlarge-amd64.region: us-east-1
+  dynamic.linux-m2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m2xlarge-amd64.instance-type: m6a.2xlarge
+  dynamic.linux-m2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m2xlarge-amd64.max-instances: "10"
+  dynamic.linux-m2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m4xlarge-amd64.type: aws
+  dynamic.linux-m4xlarge-amd64.region: us-east-1
+  dynamic.linux-m4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m4xlarge-amd64.instance-type: m6a.4xlarge
+  dynamic.linux-m4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m4xlarge-amd64.max-instances: "10"
+  dynamic.linux-m4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-m8xlarge-amd64.type: aws
+  dynamic.linux-m8xlarge-amd64.region: us-east-1
+  dynamic.linux-m8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-m8xlarge-amd64.instance-type: m6a.8xlarge
+  dynamic.linux-m8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-m8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-m8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-m8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-m8xlarge-amd64.max-instances: "10"
+  dynamic.linux-m8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  # cpu:memory (1:2)
+  dynamic.linux-cxlarge-arm64.type: aws
+  dynamic.linux-cxlarge-arm64.region: us-east-1
+  dynamic.linux-cxlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-cxlarge-arm64.instance-type: c6g.xlarge
+  dynamic.linux-cxlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-arm64.aws-secret: aws-account
+  dynamic.linux-cxlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-arm64.max-instances: "10"
+  dynamic.linux-cxlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-arm64.type: aws
+  dynamic.linux-c2xlarge-arm64.region: us-east-1
+  dynamic.linux-c2xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c2xlarge-arm64.instance-type: c6g.2xlarge
+  dynamic.linux-c2xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-arm64.max-instances: "10"
+  dynamic.linux-c2xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-arm64.type: aws
+  dynamic.linux-c4xlarge-arm64.region: us-east-1
+  dynamic.linux-c4xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c4xlarge-arm64.instance-type: c6g.4xlarge
+  dynamic.linux-c4xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-arm64.max-instances: "10"
+  dynamic.linux-c4xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-arm64.type: aws
+  dynamic.linux-c8xlarge-arm64.region: us-east-1
+  dynamic.linux-c8xlarge-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-c8xlarge-arm64.instance-type: c6g.8xlarge
+  dynamic.linux-c8xlarge-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-arm64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-arm64.max-instances: "10"
+  dynamic.linux-c8xlarge-arm64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-cxlarge-amd64.type: aws
+  dynamic.linux-cxlarge-amd64.region: us-east-1
+  dynamic.linux-cxlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-cxlarge-amd64.instance-type: c6a.xlarge
+  dynamic.linux-cxlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-cxlarge-amd64.aws-secret: aws-account
+  dynamic.linux-cxlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-cxlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-cxlarge-amd64.max-instances: "10"
+  dynamic.linux-cxlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c2xlarge-amd64.type: aws
+  dynamic.linux-c2xlarge-amd64.region: us-east-1
+  dynamic.linux-c2xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c2xlarge-amd64.instance-type: c6a.2xlarge
+  dynamic.linux-c2xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c2xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c2xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c2xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c2xlarge-amd64.max-instances: "10"
+  dynamic.linux-c2xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c4xlarge-amd64.type: aws
+  dynamic.linux-c4xlarge-amd64.region: us-east-1
+  dynamic.linux-c4xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c4xlarge-amd64.instance-type: c6a.4xlarge
+  dynamic.linux-c4xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c4xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c4xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c4xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c4xlarge-amd64.max-instances: "10"
+  dynamic.linux-c4xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  dynamic.linux-c8xlarge-amd64.type: aws
+  dynamic.linux-c8xlarge-amd64.region: us-east-1
+  dynamic.linux-c8xlarge-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-c8xlarge-amd64.instance-type: c6a.8xlarge
+  dynamic.linux-c8xlarge-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-c8xlarge-amd64.aws-secret: aws-account
+  dynamic.linux-c8xlarge-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-c8xlarge-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-c8xlarge-amd64.max-instances: "10"
+  dynamic.linux-c8xlarge-amd64.subnet-id: subnet-030738beb81d3863a
+
+  #root
   dynamic.linux-root-arm64.type: aws
   dynamic.linux-root-arm64.region: us-east-1
   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb 
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
<h3>2: Production changes from ab379631 to 407f739e on Fri Jul 5 08:00:32 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index ec80f286..a0b84c80 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,4 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: manager_resources_patch.yaml
+  - path: manager_patches.yaml
diff --git a/components/mintmaker/staging/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_patches.yaml
similarity index 73%
rename from components/mintmaker/staging/base/manager_resources_patch.yaml
rename to components/mintmaker/production/base/manager_patches.yaml
index 3fa41ce9..426a7d8e 100644
--- a/components/mintmaker/staging/base/manager_resources_patch.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -15,3 +15,6 @@ spec:
           requests:
             cpu: 100m
             memory: 256Mi
+        env:
+        - name: RENOVATE_IMAGE
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:40af057"
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 932bdae5..45a55f85 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -16,4 +16,4 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 patches:
-  - path: manager_resources_patch.yaml
+  - path: manager_patches.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/staging/base/manager_patches.yaml
similarity index 73%
rename from components/mintmaker/production/base/manager_resources_patch.yaml
rename to components/mintmaker/staging/base/manager_patches.yaml
index 3fa41ce9..f0828bf4 100644
--- a/components/mintmaker/production/base/manager_resources_patch.yaml
+++ b/components/mintmaker/staging/base/manager_patches.yaml
@@ -15,3 +15,6 @@ spec:
           requests:
             cpu: 100m
             memory: 256Mi
+        env:
+        - name: RENOVATE_IMAGE
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:latest" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ab379631/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
526,528d525
<         env:
<         - name: RENOVATE_IMAGE
<           value: quay.io/konflux-ci/mintmaker-renovate-image:40af057
./commit-ab379631/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
526,528d525
<         env:
<         - name: RENOVATE_IMAGE
<           value: quay.io/konflux-ci/mintmaker-renovate-image:40af057 
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
<h3>2: Staging changes from ab379631 to 407f739e on Fri Jul 5 08:00:32 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index ec80f286..a0b84c80 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,4 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: manager_resources_patch.yaml
+  - path: manager_patches.yaml
diff --git a/components/mintmaker/staging/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_patches.yaml
similarity index 73%
rename from components/mintmaker/staging/base/manager_resources_patch.yaml
rename to components/mintmaker/production/base/manager_patches.yaml
index 3fa41ce9..426a7d8e 100644
--- a/components/mintmaker/staging/base/manager_resources_patch.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -15,3 +15,6 @@ spec:
           requests:
             cpu: 100m
             memory: 256Mi
+        env:
+        - name: RENOVATE_IMAGE
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:40af057"
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 932bdae5..45a55f85 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -16,4 +16,4 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 patches:
-  - path: manager_resources_patch.yaml
+  - path: manager_patches.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/staging/base/manager_patches.yaml
similarity index 73%
rename from components/mintmaker/production/base/manager_resources_patch.yaml
rename to components/mintmaker/staging/base/manager_patches.yaml
index 3fa41ce9..f0828bf4 100644
--- a/components/mintmaker/production/base/manager_resources_patch.yaml
+++ b/components/mintmaker/staging/base/manager_patches.yaml
@@ -15,3 +15,6 @@ spec:
           requests:
             cpu: 100m
             memory: 256Mi
+        env:
+        - name: RENOVATE_IMAGE
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:latest" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-ab379631/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
526,528d525
<         env:
<         - name: RENOVATE_IMAGE
<           value: quay.io/konflux-ci/mintmaker-renovate-image:latest 
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
<h3>2: Development changes from ab379631 to 407f739e on Fri Jul 5 08:00:32 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index ec80f286..a0b84c80 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,4 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: manager_resources_patch.yaml
+  - path: manager_patches.yaml
diff --git a/components/mintmaker/staging/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_patches.yaml
similarity index 73%
rename from components/mintmaker/staging/base/manager_resources_patch.yaml
rename to components/mintmaker/production/base/manager_patches.yaml
index 3fa41ce9..426a7d8e 100644
--- a/components/mintmaker/staging/base/manager_resources_patch.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -15,3 +15,6 @@ spec:
           requests:
             cpu: 100m
             memory: 256Mi
+        env:
+        - name: RENOVATE_IMAGE
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:40af057"
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 932bdae5..45a55f85 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -16,4 +16,4 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 patches:
-  - path: manager_resources_patch.yaml
+  - path: manager_patches.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/staging/base/manager_patches.yaml
similarity index 73%
rename from components/mintmaker/production/base/manager_resources_patch.yaml
rename to components/mintmaker/staging/base/manager_patches.yaml
index 3fa41ce9..f0828bf4 100644
--- a/components/mintmaker/production/base/manager_resources_patch.yaml
+++ b/components/mintmaker/staging/base/manager_patches.yaml
@@ -15,3 +15,6 @@ spec:
           requests:
             cpu: 100m
             memory: 256Mi
+        env:
+        - name: RENOVATE_IMAGE
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:latest" 
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
<h3>3: Production changes from 2ce4833b to ab379631 on Thu Jul 4 13:59:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 53694cb5..553a4724 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 40ff4206..8c8a964a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config 
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
<h3>3: Staging changes from 2ce4833b to ab379631 on Thu Jul 4 13:59:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 53694cb5..553a4724 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 40ff4206..8c8a964a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2ce4833b/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>         image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>             image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100 
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
<h3>3: Development changes from 2ce4833b to ab379631 on Thu Jul 4 13:59:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 53694cb5..553a4724 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 40ff4206..8c8a964a 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/default?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+  newTag: ab1b8d36e8056e26542e6a07f84247302bc886c3
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2ce4833b/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>         image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:ab1b8d36e8056e26542e6a07f84247302bc886c3
---
>             image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100 
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
<h3>4: Production changes from c11156ba to 2ce4833b on Thu Jul 4 11:09:07 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 8e3af301..75093dec 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -22,13 +22,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: quality-dashboard
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-c11156ba/production/components/konflux-ci/production/kustomize.out.yaml
297a298,306
>   name: e2e-tests
> spec:
>   url: https://github.com/konflux-ci/e2e-tests
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Staging changes from c11156ba to 2ce4833b on Thu Jul 4 11:09:07 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 8e3af301..75093dec 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -22,13 +22,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: quality-dashboard
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-c11156ba/staging/components/konflux-ci/staging/kustomize.out.yaml
232a233,241
>   name: e2e-tests
> spec:
>   url: https://github.com/konflux-ci/e2e-tests
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
<h3>4: Development changes from c11156ba to 2ce4833b on Thu Jul 4 11:09:07 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 8e3af301..75093dec 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -22,13 +22,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: quality-dashboard
 spec: 
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
