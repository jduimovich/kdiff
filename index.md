# kustomize changes tracked by commits 
### This file generated at Wed May 29 00:06:51 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 648808f0 to 26aca1e4 on Tue May 28 15:23:26 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index 1d5d5421..d7d0fb4e 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-arch-controller-ssh-key-internal
+        key: production/build/multi-platform-controller/internal-prod-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,3 +20,26 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-account
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 122de622..6a9d9faf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,53 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-prod
 
-  host.ip-10-29-66-250.address: "10.29.66.250"
-  host.ip-10-29-66-250.platform: "linux/amd64"
-  host.ip-10-29-66-250.user: "ec2-user"
-  host.ip-10-29-66-250.secret: "aws-ssh-key"
-  host.ip-10-29-66-250.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.max-instances: "10"
+  
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.max-instances: "10"
 
-  host.ip-10-29-66-245.address: "10.29.66.245"
-  host.ip-10-29-66-245.platform: "linux/arm64"
-  host.ip-10-29-66-245.user: "ec2-user"
-  host.ip-10-29-66-245.secret: "aws-ssh-key"
-  host.ip-10-29-66-245.concurrency: "4"
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
 
-  host.ip-10-29-66-249.address: "10.29.66.249"
-  host.ip-10-29-66-249.platform: "linux/arm64"
-  host.ip-10-29-66-249.user: "ec2-user"
-  host.ip-10-29-66-249.secret: "aws-ssh-key"
-  host.ip-10-29-66-249.concurrency: "4"
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman" 
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
<h3>1: Staging changes from 648808f0 to 26aca1e4 on Tue May 28 15:23:26 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index 1d5d5421..d7d0fb4e 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-arch-controller-ssh-key-internal
+        key: production/build/multi-platform-controller/internal-prod-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,3 +20,26 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-account
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 122de622..6a9d9faf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,53 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-prod
 
-  host.ip-10-29-66-250.address: "10.29.66.250"
-  host.ip-10-29-66-250.platform: "linux/amd64"
-  host.ip-10-29-66-250.user: "ec2-user"
-  host.ip-10-29-66-250.secret: "aws-ssh-key"
-  host.ip-10-29-66-250.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.max-instances: "10"
+  
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.max-instances: "10"
 
-  host.ip-10-29-66-245.address: "10.29.66.245"
-  host.ip-10-29-66-245.platform: "linux/arm64"
-  host.ip-10-29-66-245.user: "ec2-user"
-  host.ip-10-29-66-245.secret: "aws-ssh-key"
-  host.ip-10-29-66-245.concurrency: "4"
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
 
-  host.ip-10-29-66-249.address: "10.29.66.249"
-  host.ip-10-29-66-249.platform: "linux/arm64"
-  host.ip-10-29-66-249.user: "ec2-user"
-  host.ip-10-29-66-249.secret: "aws-ssh-key"
-  host.ip-10-29-66-249.concurrency: "4"
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman" 
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
<h3>1: Development changes from 648808f0 to 26aca1e4 on Tue May 28 15:23:26 2024 </h3>  
 
<details> 
<summary>Git Diff (118 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index 1d5d5421..d7d0fb4e 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-arch-controller-ssh-key-internal
+        key: production/build/multi-platform-controller/internal-prod-ssh-key
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,3 +20,26 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-account
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/internal-prod-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 122de622..6a9d9faf 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,53 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-prod
 
-  host.ip-10-29-66-250.address: "10.29.66.250"
-  host.ip-10-29-66-250.platform: "linux/amd64"
-  host.ip-10-29-66-250.user: "ec2-user"
-  host.ip-10-29-66-250.secret: "aws-ssh-key"
-  host.ip-10-29-66-250.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: m6g.large
+  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-arm64.max-instances: "10"
+  
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-amd64.max-instances: "10"
 
-  host.ip-10-29-66-245.address: "10.29.66.245"
-  host.ip-10-29-66-245.platform: "linux/arm64"
-  host.ip-10-29-66-245.user: "ec2-user"
-  host.ip-10-29-66-245.secret: "aws-ssh-key"
-  host.ip-10-29-66-245.concurrency: "4"
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
 
-  host.ip-10-29-66-249.address: "10.29.66.249"
-  host.ip-10-29-66-249.platform: "linux/arm64"
-  host.ip-10-29-66-249.user: "ec2-user"
-  host.ip-10-29-66-249.secret: "aws-ssh-key"
-  host.ip-10-29-66-249.concurrency: "4"
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
+  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 544eb33a to 648808f0 on Tue May 28 12:40:11 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f22abb6e..0f455dcb 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -5,9 +5,9 @@ metadata:
   namespace: build-service
 data:
   config.yaml: |
-    default-pipeline-name: docker-builder
+    default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
-    - name: docker-builder
+    - name: docker-build
       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-544eb33a/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
631c631
<     default-pipeline-name: docker-build
---
>     default-pipeline-name: docker-builder
635c635
<     - name: docker-build
---
>     - name: docker-builder
./commit-544eb33a/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
631c631
<     default-pipeline-name: docker-build
---
>     default-pipeline-name: docker-builder
635c635
<     - name: docker-build
---
>     - name: docker-builder 
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
<h3>2: Staging changes from 544eb33a to 648808f0 on Tue May 28 12:40:11 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f22abb6e..0f455dcb 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -5,9 +5,9 @@ metadata:
   namespace: build-service
 data:
   config.yaml: |
-    default-pipeline-name: docker-builder
+    default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
-    - name: docker-builder
+    - name: docker-build
       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-544eb33a/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
631c631
<     default-pipeline-name: docker-build
---
>     default-pipeline-name: docker-builder
635c635
<     - name: docker-build
---
>     - name: docker-builder 
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
<h3>2: Development changes from 544eb33a to 648808f0 on Tue May 28 12:40:11 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index f22abb6e..0f455dcb 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -5,9 +5,9 @@ metadata:
   namespace: build-service
 data:
   config.yaml: |
-    default-pipeline-name: docker-builder
+    default-pipeline-name: docker-build
     pipelines:
     - name: fbc-builder
       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:13ecd03ec9f7de811f837a5460c41105231c911a
-    - name: docker-builder
+    - name: docker-build
       bundle: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:13ecd03ec9f7de811f837a5460c41105231c911a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-544eb33a/development/components/build-service/development/kustomize.out.yaml
631c631
<     default-pipeline-name: docker-build
---
>     default-pipeline-name: docker-builder
635c635
<     - name: docker-build
---
>     - name: docker-builder 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from db49c365 to 544eb33a on Tue May 28 07:22:33 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index c32b6964..c7217dda 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -67,6 +67,7 @@ data:
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.private-ip: "true"
 
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key" 
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
<h3>3: Staging changes from db49c365 to 544eb33a on Tue May 28 07:22:33 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index c32b6964..c7217dda 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -67,6 +67,7 @@ data:
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.private-ip: "true"
 
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key" 
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
<h3>3: Development changes from db49c365 to 544eb33a on Tue May 28 07:22:33 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index c32b6964..c7217dda 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -67,6 +67,7 @@ data:
   dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
   dynamic.linux-s390x.profile: "bz2-1x4"
   dynamic.linux-s390x.max-instances: "2"
+  dynamic.linux-s390x.private-ip: "true"
 
   dynamic.linux-ppc64le.type: ibmp
   dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from d0487fc0 to db49c365 on Tue May 28 00:38:21 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index c63b0d79..ac4640bf 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
+  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
+  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-d0487fc0/production/components/multi-platform-controller/production/kustomize.out.yaml
90,100d89
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
292c281
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:8a46fa41e0d666373d0113af757f4fb377d063d1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:58989e5842ebbb12c35f260ba3f6c7368700895b
334c323
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:8a46fa41e0d666373d0113af757f4fb377d063d1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:58989e5842ebbb12c35f260ba3f6c7368700895b 
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
<h3>4: Staging changes from d0487fc0 to db49c365 on Tue May 28 00:38:21 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index c63b0d79..ac4640bf 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
+  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
+  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-d0487fc0/staging/components/multi-platform-controller/staging/kustomize.out.yaml
90,100d89
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
282c271
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:8a46fa41e0d666373d0113af757f4fb377d063d1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:58989e5842ebbb12c35f260ba3f6c7368700895b
324c313
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:8a46fa41e0d666373d0113af757f4fb377d063d1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:58989e5842ebbb12c35f260ba3f6c7368700895b 
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
<h3>4: Development changes from d0487fc0 to db49c365 on Tue May 28 00:38:21 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index c63b0d79..ac4640bf 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
+  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
+  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-d0487fc0/development/components/multi-platform-controller/development/kustomize.out.yaml
90,100d89
< - apiGroups:
<   - ""
<   resources:
<   - pods
<   verbs:
<   - create
<   - get
<   - list
<   - patch
<   - update
<   - watch
220c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:8a46fa41e0d666373d0113af757f4fb377d063d1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:58989e5842ebbb12c35f260ba3f6c7368700895b
262c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:8a46fa41e0d666373d0113af757f4fb377d063d1
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:58989e5842ebbb12c35f260ba3f6c7368700895b 
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
```
 
</details> 
<br> 


</div>
