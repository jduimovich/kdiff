# kustomize changes tracked by commits 
### This file generated at Thu May 23 20:04:55 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 41bbdd62 to a65ea944 on Thu May 23 18:16:09 2024 </h3>  
 
<details> 
<summary>Git Diff (116 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index d7d0fb4e..1d5d5421 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/internal-prod-ssh-key
+        key: production/build/multi-arch-controller-ssh-key-internal
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,26 +20,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-account
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/internal-prod-aws-account
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index ef56d16c..122de622 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,51 +7,26 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
-  instance-tag: internal-konflux-prod
+  host.ip-10-29-66-252.address: "10.29.66.252"
+  host.ip-10-29-66-252.platform: "linux/amd64"
+  host.ip-10-29-66-252.user: "ec2-user"
+  host.ip-10-29-66-252.secret: "aws-ssh-key"
+  host.ip-10-29-66-252.concurrency: "4"
 
-  dynamic.linux-arm64.type: aws
-  dynamic.linux-arm64.region: us-east-1
-  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: m6g.large
-  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
-  dynamic.linux-arm64.aws-secret: aws-account
-  dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-arm64.max-instances: "10"
-  
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-amd64.max-instances: "10"
+  host.ip-10-29-66-250.address: "10.29.66.250"
+  host.ip-10-29-66-250.platform: "linux/amd64"
+  host.ip-10-29-66-250.user: "ec2-user"
+  host.ip-10-29-66-250.secret: "aws-ssh-key"
+  host.ip-10-29-66-250.concurrency: "4"
 
-  dynamic.linux-root-arm64.type: aws
-  dynamic.linux-root-arm64.region: us-east-1
-  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-root-arm64.instance-type: m6g.large
-  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
-  dynamic.linux-root-arm64.aws-secret: aws-account
-  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "10"
-  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  host.ip-10-29-66-245.address: "10.29.66.245"
+  host.ip-10-29-66-245.platform: "linux/arm64"
+  host.ip-10-29-66-245.user: "ec2-user"
+  host.ip-10-29-66-245.secret: "aws-ssh-key"
+  host.ip-10-29-66-245.concurrency: "4"
 
-  dynamic.linux-root-amd64.type: aws
-  dynamic.linux-root-amd64.region: us-east-1
-  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
-  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-root-amd64.aws-secret: aws-account
-  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "10"
-  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  host.ip-10-29-66-249.address: "10.29.66.249"
+  host.ip-10-29-66-249.platform: "linux/arm64"
+  host.ip-10-29-66-249.user: "ec2-user"
+  host.ip-10-29-66-249.secret: "aws-ssh-key"
+  host.ip-10-29-66-249.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 41bbdd62 to a65ea944 on Thu May 23 18:16:09 2024 </h3>  
 
<details> 
<summary>Git Diff (116 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index d7d0fb4e..1d5d5421 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/internal-prod-ssh-key
+        key: production/build/multi-arch-controller-ssh-key-internal
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,26 +20,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-account
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/internal-prod-aws-account
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index ef56d16c..122de622 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,51 +7,26 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
-  instance-tag: internal-konflux-prod
+  host.ip-10-29-66-252.address: "10.29.66.252"
+  host.ip-10-29-66-252.platform: "linux/amd64"
+  host.ip-10-29-66-252.user: "ec2-user"
+  host.ip-10-29-66-252.secret: "aws-ssh-key"
+  host.ip-10-29-66-252.concurrency: "4"
 
-  dynamic.linux-arm64.type: aws
-  dynamic.linux-arm64.region: us-east-1
-  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: m6g.large
-  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
-  dynamic.linux-arm64.aws-secret: aws-account
-  dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-arm64.max-instances: "10"
-  
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-amd64.max-instances: "10"
+  host.ip-10-29-66-250.address: "10.29.66.250"
+  host.ip-10-29-66-250.platform: "linux/amd64"
+  host.ip-10-29-66-250.user: "ec2-user"
+  host.ip-10-29-66-250.secret: "aws-ssh-key"
+  host.ip-10-29-66-250.concurrency: "4"
 
-  dynamic.linux-root-arm64.type: aws
-  dynamic.linux-root-arm64.region: us-east-1
-  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-root-arm64.instance-type: m6g.large
-  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
-  dynamic.linux-root-arm64.aws-secret: aws-account
-  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "10"
-  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  host.ip-10-29-66-245.address: "10.29.66.245"
+  host.ip-10-29-66-245.platform: "linux/arm64"
+  host.ip-10-29-66-245.user: "ec2-user"
+  host.ip-10-29-66-245.secret: "aws-ssh-key"
+  host.ip-10-29-66-245.concurrency: "4"
 
-  dynamic.linux-root-amd64.type: aws
-  dynamic.linux-root-amd64.region: us-east-1
-  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
-  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-root-amd64.aws-secret: aws-account
-  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "10"
-  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  host.ip-10-29-66-249.address: "10.29.66.249"
+  host.ip-10-29-66-249.platform: "linux/arm64"
+  host.ip-10-29-66-249.user: "ec2-user"
+  host.ip-10-29-66-249.secret: "aws-ssh-key"
+  host.ip-10-29-66-249.concurrency: "4" 
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
<h3>1: Development changes from 41bbdd62 to a65ea944 on Thu May 23 18:16:09 2024 </h3>  
 
<details> 
<summary>Git Diff (116 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/external-secrets.yaml b/components/multi-platform-controller/production-downstream/external-secrets.yaml
index d7d0fb4e..1d5d5421 100644
--- a/components/multi-platform-controller/production-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/production-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/multi-platform-controller/internal-prod-ssh-key
+        key: production/build/multi-arch-controller-ssh-key-internal
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -20,26 +20,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: aws-account
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/internal-prod-aws-account
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: aws-account
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index ef56d16c..122de622 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,51 +7,26 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
-  instance-tag: internal-konflux-prod
+  host.ip-10-29-66-252.address: "10.29.66.252"
+  host.ip-10-29-66-252.platform: "linux/amd64"
+  host.ip-10-29-66-252.user: "ec2-user"
+  host.ip-10-29-66-252.secret: "aws-ssh-key"
+  host.ip-10-29-66-252.concurrency: "4"
 
-  dynamic.linux-arm64.type: aws
-  dynamic.linux-arm64.region: us-east-1
-  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-arm64.instance-type: m6g.large
-  dynamic.linux-arm64.key-name: konflux-prod-int-mab01
-  dynamic.linux-arm64.aws-secret: aws-account
-  dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-arm64.max-instances: "10"
-  
-  dynamic.linux-amd64.type: aws
-  dynamic.linux-amd64.region: us-east-1
-  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-amd64.instance-type: m5.large
-  dynamic.linux-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-amd64.aws-secret: aws-account
-  dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-amd64.max-instances: "10"
+  host.ip-10-29-66-250.address: "10.29.66.250"
+  host.ip-10-29-66-250.platform: "linux/amd64"
+  host.ip-10-29-66-250.user: "ec2-user"
+  host.ip-10-29-66-250.secret: "aws-ssh-key"
+  host.ip-10-29-66-250.concurrency: "4"
 
-  dynamic.linux-root-arm64.type: aws
-  dynamic.linux-root-arm64.region: us-east-1
-  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
-  dynamic.linux-root-arm64.instance-type: m6g.large
-  dynamic.linux-root-arm64.key-name: konflux-prod-int-mab01
-  dynamic.linux-root-arm64.aws-secret: aws-account
-  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-root-arm64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-arm64.max-instances: "10"
-  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  host.ip-10-29-66-245.address: "10.29.66.245"
+  host.ip-10-29-66-245.platform: "linux/arm64"
+  host.ip-10-29-66-245.user: "ec2-user"
+  host.ip-10-29-66-245.secret: "aws-ssh-key"
+  host.ip-10-29-66-245.concurrency: "4"
 
-  dynamic.linux-root-amd64.type: aws
-  dynamic.linux-root-amd64.region: us-east-1
-  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
-  dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
-  dynamic.linux-root-amd64.aws-secret: aws-account
-  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-root-amd64.security-group-id: sg-0903aedd465be979e
-  dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
-  dynamic.linux-root-amd64.max-instances: "10"
-  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  host.ip-10-29-66-249.address: "10.29.66.249"
+  host.ip-10-29-66-249.platform: "linux/arm64"
+  host.ip-10-29-66-249.user: "ec2-user"
+  host.ip-10-29-66-249.secret: "aws-ssh-key"
+  host.ip-10-29-66-249.concurrency: "4" 
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
<h3>2: Production changes from 2a6b6f52 to 41bbdd62 on Thu May 23 16:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (116 lines)</summary>  

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
index 122de622..ef56d16c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,51 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: internal-konflux-prod
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 2a6b6f52 to 41bbdd62 on Thu May 23 16:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (116 lines)</summary>  

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
index 122de622..ef56d16c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,51 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: internal-konflux-prod
 
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
<h3>2: Development changes from 2a6b6f52 to 41bbdd62 on Thu May 23 16:18:22 2024 </h3>  
 
<details> 
<summary>Git Diff (116 lines)</summary>  

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
index 122de622..ef56d16c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -7,26 +7,51 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-66-252.address: "10.29.66.252"
-  host.ip-10-29-66-252.platform: "linux/amd64"
-  host.ip-10-29-66-252.user: "ec2-user"
-  host.ip-10-29-66-252.secret: "aws-ssh-key"
-  host.ip-10-29-66-252.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: internal-konflux-prod
 
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
<h3>3: Production changes from e42b7a4c to 2a6b6f52 on Thu May 23 14:17:10 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index f1958a64..3a40ad60 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 78cac5c3..9b0bee93 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
 configMapGenerator:
 - name: console-url 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from e42b7a4c to 2a6b6f52 on Thu May 23 14:17:10 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index f1958a64..3a40ad60 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 78cac5c3..9b0bee93 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e42b7a4c/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1450c1450
<         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>         image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
1541c1541
<             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>             image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e 
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
<h3>3: Development changes from e42b7a4c to 2a6b6f52 on Thu May 23 14:17:10 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index f1958a64..3a40ad60 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 78cac5c3..9b0bee93 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=863a17bf721ce17f20f1cfd6c461c190435e877e
+- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 863a17bf721ce17f20f1cfd6c461c190435e877e
+  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-e42b7a4c/development/components/integration/development/kustomize.out.yaml
1448c1448
<         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>         image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
1542c1542
<             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>             image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e 
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
<h3>4: Production changes from 949fceb8 to e42b7a4c on Thu May 23 12:12:30 2024 </h3>  
 
<details> 
<summary>Git Diff (106 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
index f8e17704..c6699add 100644
--- a/components/multi-platform-controller/staging-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-arch-controller-ssh-key-internal
+        key: staging/build/multi-platform-controller/internal-stage-ssh-key
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
+        key: staging/build/multi-platform-controller/internal-stage-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 0a641bf6..e2831d22 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,14 +7,51 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-64-251.address: "10.29.64.251"
-  host.ip-10-29-64-251.platform: "linux/amd64"
-  host.ip-10-29-64-251.user: "ec2-user"
-  host.ip-10-29-64-251.secret: "aws-ssh-key"
-  host.ip-10-29-64-251.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-staging
 
-  host.ip-10-29-64-249.address: "10.29.64.249"
-  host.ip-10-29-64-249.platform: "linux/arm64"
-  host.ip-10-29-64-249.user: "ec2-user"
-  host.ip-10-29-64-249.secret: "aws-ssh-key"
-  host.ip-10-29-64-249.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: t4g.large
+  dynamic.linux-root-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 949fceb8 to e42b7a4c on Thu May 23 12:12:30 2024 </h3>  
 
<details> 
<summary>Git Diff (106 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
index f8e17704..c6699add 100644
--- a/components/multi-platform-controller/staging-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-arch-controller-ssh-key-internal
+        key: staging/build/multi-platform-controller/internal-stage-ssh-key
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
+        key: staging/build/multi-platform-controller/internal-stage-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 0a641bf6..e2831d22 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,14 +7,51 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-64-251.address: "10.29.64.251"
-  host.ip-10-29-64-251.platform: "linux/amd64"
-  host.ip-10-29-64-251.user: "ec2-user"
-  host.ip-10-29-64-251.secret: "aws-ssh-key"
-  host.ip-10-29-64-251.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-staging
 
-  host.ip-10-29-64-249.address: "10.29.64.249"
-  host.ip-10-29-64-249.platform: "linux/arm64"
-  host.ip-10-29-64-249.user: "ec2-user"
-  host.ip-10-29-64-249.secret: "aws-ssh-key"
-  host.ip-10-29-64-249.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: t4g.large
+  dynamic.linux-root-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
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
<h3>4: Development changes from 949fceb8 to e42b7a4c on Thu May 23 12:12:30 2024 </h3>  
 
<details> 
<summary>Git Diff (106 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
index f8e17704..c6699add 100644
--- a/components/multi-platform-controller/staging-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -11,7 +11,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: staging/build/multi-arch-controller-ssh-key-internal
+        key: staging/build/multi-platform-controller/internal-stage-ssh-key
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
+        key: staging/build/multi-platform-controller/internal-stage-aws-account
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-account
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 0a641bf6..e2831d22 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,14 +7,51 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  host.ip-10-29-64-251.address: "10.29.64.251"
-  host.ip-10-29-64-251.platform: "linux/amd64"
-  host.ip-10-29-64-251.user: "ec2-user"
-  host.ip-10-29-64-251.secret: "aws-ssh-key"
-  host.ip-10-29-64-251.concurrency: "4"
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  instance-tag: rhtap-staging
 
-  host.ip-10-29-64-249.address: "10.29.64.249"
-  host.ip-10-29-64-249.platform: "linux/arm64"
-  host.ip-10-29-64-249.user: "ec2-user"
-  host.ip-10-29-64-249.secret: "aws-ssh-key"
-  host.ip-10-29-64-249.concurrency: "4"
+  dynamic.linux-arm64.type: aws
+  dynamic.linux-arm64.region: us-east-1
+  dynamic.linux-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-arm64.instance-type: t4g.small
+  dynamic.linux-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-arm64.aws-secret: aws-account
+  dynamic.linux-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-arm64.max-instances: "10"
+  dynamic.linux-arm64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-amd64.type: aws
+  dynamic.linux-amd64.region: us-east-1
+  dynamic.linux-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-amd64.instance-type: m5.large
+  dynamic.linux-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-amd64.aws-secret: aws-account
+  dynamic.linux-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-amd64.max-instances: "10"
+  dynamic.linux-amd64.subnet-id: subnet-07597d1edafa2b9d3
+
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: t4g.large
+  dynamic.linux-root-arm64.key-name: konflux-stage-int-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-stage-int-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0482e8ccae008b240
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
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
