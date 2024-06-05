# kustomize changes tracked by commits 
### This file generated at Wed Jun  5 04:03:44 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 92c408cc to 5b466c13 on Wed Jun 5 02:29:51 2024 </h3>  
 
<details> 
<summary>Git Diff (201 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 268b267d..448a9b2d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 55f96b7c..ccb0dfbd 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,70 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c439eb2b..67d693f4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,71 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
+
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (82 lines)</summary>  

``` 
./commit-92c408cc/production/components/multi-platform-controller/production/kustomize.out.yaml
171c171,173
<   dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
---
>   dynamic.linux-root-amd64.disk: "200"
>   dynamic.linux-root-amd64.instance-type: m5.2xlarge
>   dynamic.linux-root-amd64.iops: "16000"
178a181
>   dynamic.linux-root-amd64.throughput: "1000"
180,243d182
<   dynamic.linux-root-amd64.user-data: |-
<     Content-Type: multipart/mixed; boundary="//"
<     MIME-Version: 1.0
< 
<     --//
<     Content-Type: text/cloud-config; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="cloud-config.txt"
< 
<     #cloud-config
<     cloud_final_modules:
<       - [scripts-user, always]
< 
<     --//
<     Content-Type: text/x-shellscript; charset="us-ascii"
<     MIME-Version: 1.0
<     Content-Transfer-Encoding: 7bit
<     Content-Disposition: attachment; filename="userdata.txt"
< 
<     #!/bin/bash -ex
< 
<     if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
<      echo "File system exists on the disk."
<     else
<      echo "No file system found on the disk /dev/nvme1n1"
<      mkfs -t xfs /dev/nvme1n1
<     fi
< 
<     mount /dev/nvme1n1 /home
< 
<     if [ -d "/home/var-lib-containers" ]; then
<      echo "Directory '/home/var-lib-containers' exist"
<     else
<      echo "Directory '/home/var-lib-containers' doesn't exist"
<      mkdir -p /home/var-lib-containers /var/lib/containers
<     fi
< 
<     mount --bind /home/var-lib-containers /var/lib/containers
< 
<     if [ -d "/home/var-tmp" ]; then
<      echo "Directory '/home/var-tmp' exist"
<     else
<      echo "Directory '/home/var-tmp' doesn't exist"
<      mkdir -p /home/var-tmp /var/tmp
<     fi
< 
<     mount --bind /home/var-tmp /var/tmp
< 
<     if [ -d "/home/ec2-user" ]; then
<     echo "ec2-user home exists"
<     else
<     echo "ec2-user home doesn't exist"
<     mkdir -p /home/ec2-user/.ssh
<     chown -R ec2-user /home/ec2-user
<     fi
< 
<     sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
<     chown ec2-user /home/ec2-user/.ssh/authorized_keys
<     chmod 600 /home/ec2-user/.ssh/authorized_keys
<     chmod 700 /home/ec2-user/.ssh
<     restorecon -r /home/ec2-user
< 
<     --//--
359c298
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
401c340
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5 
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
<h3>1: Staging changes from 92c408cc to 5b466c13 on Wed Jun 5 02:29:51 2024 </h3>  
 
<details> 
<summary>Git Diff (201 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 268b267d..448a9b2d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 55f96b7c..ccb0dfbd 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,70 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c439eb2b..67d693f4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,71 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
+
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-92c408cc/staging/components/multi-platform-controller/staging/kustomize.out.yaml
284c284
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
326c326
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5 
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
<h3>1: Development changes from 92c408cc to 5b466c13 on Wed Jun 5 02:29:51 2024 </h3>  
 
<details> 
<summary>Git Diff (201 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 268b267d..448a9b2d 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=5b1471af94ef8dace6717d59ee9b8fa156752445
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: ce42aa40fc65c2beab7804294ce3dca37c9a91f5
+  newTag: 5b1471af94ef8dace6717d59ee9b8fa156752445
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 55f96b7c..ccb0dfbd 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,70 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+    
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+    
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+    
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+    
+    #!/bin/bash -ex
+    
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+    
+    mount /dev/nvme1n1 /home
+    
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+    
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+    
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+    
+    --//--
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c439eb2b..67d693f4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.2xlarge
+  dynamic.linux-root-amd64.instance-type: m6idn.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -60,9 +60,71 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
-  dynamic.linux-root-amd64.disk: "200"
-  dynamic.linux-root-amd64.iops: "16000"
-  dynamic.linux-root-amd64.throughput: "1000"
+  dynamic.linux-root-amd64.user-data: |-
+    Content-Type: multipart/mixed; boundary="//"
+    MIME-Version: 1.0
+
+    --//
+    Content-Type: text/cloud-config; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="cloud-config.txt"
+
+    #cloud-config
+    cloud_final_modules:
+      - [scripts-user, always]
+
+    --//
+    Content-Type: text/x-shellscript; charset="us-ascii"
+    MIME-Version: 1.0
+    Content-Transfer-Encoding: 7bit
+    Content-Disposition: attachment; filename="userdata.txt"
+
+    #!/bin/bash -ex
+
+    if lsblk -no FSTYPE /dev/nvme1n1 | grep -qE '\S'; then
+     echo "File system exists on the disk."
+    else
+     echo "No file system found on the disk /dev/nvme1n1"
+     mkfs -t xfs /dev/nvme1n1
+    fi
+
+    mount /dev/nvme1n1 /home
+
+    if [ -d "/home/var-lib-containers" ]; then
+     echo "Directory '/home/var-lib-containers' exist"
+    else
+     echo "Directory '/home/var-lib-containers' doesn't exist"
+     mkdir -p /home/var-lib-containers /var/lib/containers
+    fi
+
+    mount --bind /home/var-lib-containers /var/lib/containers
+
+    if [ -d "/home/var-tmp" ]; then
+     echo "Directory '/home/var-tmp' exist"
+    else
+     echo "Directory '/home/var-tmp' doesn't exist"
+     mkdir -p /home/var-tmp /var/tmp
+    fi
+    
+    mount --bind /home/var-tmp /var/tmp
+    
+    if [ -d "/home/ec2-user" ]; then
+    echo "ec2-user home exists"
+    else
+    echo "ec2-user home doesn't exist"
+    mkdir -p /home/ec2-user/.ssh
+    chown -R ec2-user /home/ec2-user
+    fi
+
+    sed -n 's,.*\(ssh-.*\s\),\1,p' /root/.ssh/authorized_keys > /home/ec2-user/.ssh/authorized_keys
+    chown ec2-user /home/ec2-user/.ssh/authorized_keys
+    chmod 600 /home/ec2-user/.ssh/authorized_keys
+    chmod 700 /home/ec2-user/.ssh
+    restorecon -r /home/ec2-user
+
+    --//--
+
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-92c408cc/development/components/multi-platform-controller/development/kustomize.out.yaml
220c220
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ce42aa40fc65c2beab7804294ce3dca37c9a91f5
262c262
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:5b1471af94ef8dace6717d59ee9b8fa156752445
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ce42aa40fc65c2beab7804294ce3dca37c9a91f5 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from c757a1d2 to 92c408cc on Tue Jun 4 20:09:58 2024 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 42b14d47..c04e0a6b 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,6 +4,7 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
 # otel-collector is dev only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 3cb9b66d..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -4,3 +4,10 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c757a1d2 to 92c408cc on Tue Jun 4 20:09:58 2024 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 42b14d47..c04e0a6b 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,6 +4,7 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
 # otel-collector is dev only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 3cb9b66d..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -4,3 +4,10 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from c757a1d2 to 92c408cc on Tue Jun 4 20:09:58 2024 </h3>  
 
<details> 
<summary>Git Diff (59 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 42b14d47..c04e0a6b 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,6 +4,7 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
 # otel-collector is dev only.
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
index 3cb9b66d..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -4,3 +4,10 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+---
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 8f910fc0..e911b60d 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -28,10 +28,4 @@ apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
 metadata:
   name: quality-dashboard
-$patch: delete
-# otel-collector is dev only.
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: tracing-workload-otel-collector
 $patch: delete
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from a7d8d928 to c757a1d2 on Tue Jun 4 18:25:22 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 064973c6..c7908094 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,7 +11,6 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
   - ../base/rbac
-  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -29,10 +28,6 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
deleted file mode 100644
index 886f7f6d..00000000
--- a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
---- 
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-  - kind: ServiceAccount
-    name: tekton-pipelines-controller
-    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/development/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b3d2df0e..894045c2 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,15 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here:
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml
-  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -40,15 +39,11 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
-  #  - path: scale-down-exporter.yaml
-  #    target:
-  #      kind: Deployment
-  #      name: pipeline-metrics-exporter
-  #      namespace: openshift-pipelines
+#  - path: scale-down-exporter.yaml
+#    target:
+#      kind: Deployment
+#      name: pipeline-metrics-exporter
+#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -62,4 +57,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
deleted file mode 100644
index 886f7f6d..00000000
--- a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
---- 
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-  - kind: ServiceAccount
-    name: tekton-pipelines-controller
-    namespace: openshift-pipelines
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/staging/base/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d633c841..28de3bd0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index ae31166b..5f54a0d7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 64aaa3d0..54fce7e1 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
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
<h3>3: Staging changes from a7d8d928 to c757a1d2 on Tue Jun 4 18:25:22 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 064973c6..c7908094 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,7 +11,6 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
   - ../base/rbac
-  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -29,10 +28,6 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
deleted file mode 100644
index 886f7f6d..00000000
--- a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
---- 
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-  - kind: ServiceAccount
-    name: tekton-pipelines-controller
-    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/development/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b3d2df0e..894045c2 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,15 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here:
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml
-  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -40,15 +39,11 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
-  #  - path: scale-down-exporter.yaml
-  #    target:
-  #      kind: Deployment
-  #      name: pipeline-metrics-exporter
-  #      namespace: openshift-pipelines
+#  - path: scale-down-exporter.yaml
+#    target:
+#      kind: Deployment
+#      name: pipeline-metrics-exporter
+#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -62,4 +57,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
deleted file mode 100644
index 886f7f6d..00000000
--- a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
---- 
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-  - kind: ServiceAccount
-    name: tekton-pipelines-controller
-    namespace: openshift-pipelines
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/staging/base/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d633c841..28de3bd0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index ae31166b..5f54a0d7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 64aaa3d0..54fce7e1 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (120 lines)</summary>  

``` 
./commit-a7d8d928/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
398a399,415
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods/log
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
834a852,867
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-pipelines-controller-pods-log-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-pipelines-controller
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1886a1920
>     max-result-size: 12288
1991a2026
>     results-from: sidecar-logs
./commit-a7d8d928/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
398a399,415
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods/log
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
834a852,867
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-pipelines-controller-pods-log-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-pipelines-controller
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1886a1920
>     max-result-size: 12288
1991a2026
>     results-from: sidecar-logs
./commit-a7d8d928/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
398a399,415
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods/log
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
834a852,867
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-pipelines-controller-pods-log-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-pipelines-controller
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1886a1920
>     max-result-size: 12288
1991a2026
>     results-from: sidecar-logs 
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
<h3>3: Development changes from a7d8d928 to c757a1d2 on Tue Jun 4 18:25:22 2024 </h3>  
 
<details> 
<summary>Git Diff (382 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 064973c6..c7908094 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -11,7 +11,6 @@ resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
   - ../base/rbac
-  - tekton-pipelines-controller-pods-log-access-rbac.yaml
 
 images:
   - name: quay.io/redhat-appstudio/tekton-results-api
@@ -29,10 +28,6 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
 #  - path: scale-down-exporter.yaml
 #    target:
 #      kind: Deployment
diff --git a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
deleted file mode 100644
index 886f7f6d..00000000
--- a/components/pipeline-service/development/tekton-pipelines-controller-pods-log-access-rbac.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
---- 
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-  - kind: ServiceAccount
-    name: tekton-pipelines-controller
-    namespace: openshift-pipelines
diff --git a/components/pipeline-service/development/update-tekton-config-features.yaml b/components/pipeline-service/development/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/development/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index b3d2df0e..894045c2 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -2,15 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 
 # Skip applying the Tekton/PaC operands while the Tekton/PaC operator is being installed.
-# See more information about this option, here:
-# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types
+# See more information about this option, here: 
+# https://argo-cd.readthedocs.io/en/stable/user-guide/sync-options/#skip-dry-run-for-new-custom-resources-types 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
   - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
   - pipelines-as-code-secret.yaml
-  - tekton-pipelines-controller-pods-log-access-rbac.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
@@ -40,15 +39,11 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: update-tekton-config-features.yaml
-    target:
-      kind: TektonConfig
-      name: config
-  #  - path: scale-down-exporter.yaml
-  #    target:
-  #      kind: Deployment
-  #      name: pipeline-metrics-exporter
-  #      namespace: openshift-pipelines
+#  - path: scale-down-exporter.yaml
+#    target:
+#      kind: Deployment
+#      name: pipeline-metrics-exporter
+#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
@@ -62,4 +57,4 @@ patches:
     target:
       kind: Deployment
       namespace: tekton-results
-      name: tekton-results-watcher
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml b/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
deleted file mode 100644
index 886f7f6d..00000000
--- a/components/pipeline-service/staging/base/tekton-pipelines-controller-pods-log-access-rbac.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
---- 
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
-metadata:
-  name: tekton-pipelines-controller-pods-log-access
-  annotations:
-    argocd.argoproj.io/sync-wave: "0"
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-  - kind: ServiceAccount
-    name: tekton-pipelines-controller
-    namespace: openshift-pipelines
diff --git a/components/pipeline-service/staging/base/update-tekton-config-features.yaml b/components/pipeline-service/staging/base/update-tekton-config-features.yaml
deleted file mode 100644
index c7da332c..00000000
--- a/components/pipeline-service/staging/base/update-tekton-config-features.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
----
-- op: add
-  path: /spec/pipeline/results-from
-  # default upstream setting
-  # value: termination-message
-  value: sidecar-logs
-
-- op: add
-  path: /spec/pipeline/max-result-size
-  # default upstream setting
-  # value: 4096
-  value: 12288
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index d633c841..28de3bd0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index ae31166b..5f54a0d7 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 64aaa3d0..54fce7e1 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -393,23 +393,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRole
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - pods/log
-  verbs:
-  - get
-  - list
-  - watch
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRole
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -846,22 +829,6 @@ subjects:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: tekton-pipelines-controller-pods-log-access
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: tekton-pipelines-controller-pods-log-access
-subjects:
-- kind: ServiceAccount
-  name: tekton-pipelines-controller
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: ClusterRoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1917,7 +1884,6 @@ spec:
     enable-git-resolver: true
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
-    max-result-size: 12288
     options:
       configMaps:
         config-logging:
@@ -2023,7 +1989,6 @@ spec:
       kube-api-qps: 50
       replicas: 2
       threads-per-controller: 32
-    results-from: sidecar-logs
   platforms:
     openshift:
       pipelinesAsCode: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (40 lines)</summary>  

``` 
./commit-a7d8d928/development/components/pipeline-service/development/kustomize.out.yaml
415a416,432
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - pods/log
>   verbs:
>   - get
>   - list
>   - watch
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
835a853,868
>     argocd.argoproj.io/sync-wave: "0"
>   name: tekton-pipelines-controller-pods-log-access
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: tekton-pipelines-controller-pods-log-access
> subjects:
> - kind: ServiceAccount
>   name: tekton-pipelines-controller
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1995a2029
>     max-result-size: 12288
2100a2135
>     results-from: sidecar-logs 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 1b4ae8ce to a7d8d928 on Tue Jun 4 17:22:06 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e52827ad..87df0c4d 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -11,7 +11,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Dev version"
     - CONSOLE_URL=""
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 4336816e..e76e3fed 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_NAME
               optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 0df270fa..6fa9abd0 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -12,7 +12,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 23de54ac..f846f3dc 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index adb35c7d..64c31211 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -12,11 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-name
-  - path: console-url-config-patch.json
-    target:
-      kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
 
diff --git a/components/integration/production/stone-prod-p02/kustomization.yaml b/components/integration/production/stone-prod-p02/kustomization.yaml
index 2f086e27..64c31211 100644
--- a/components/integration/production/stone-prod-p02/kustomization.yaml
+++ b/components/integration/production/stone-prod-p02/kustomization.yaml
@@ -12,7 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 1db3c09d..53827125 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -12,7 +12,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 3534c0f7..58ee593c 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index adb35c7d..64c31211 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -12,11 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-name
-  - path: console-url-config-patch.json
-    target:
-      kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-1b4ae8ce/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1306c1306
<   name: integration-config-tc57tckhc8
---
>   name: console-url-tc57tckhc8
1424c1424
<               name: integration-config-tc57tckhc8
---
>               name: console-url-tc57tckhc8
1430c1430
<               name: integration-config-tc57tckhc8
---
>               name: console-url-tc57tckhc8
1436c1436
<               name: integration-config-tc57tckhc8
---
>               name: console-url-tc57tckhc8
./commit-1b4ae8ce/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1306c1306
<   name: integration-config-gkchk67fck
---
>   name: console-url-gkchk67fck
1424c1424
<               name: integration-config-gkchk67fck
---
>               name: console-url-gkchk67fck
1430c1430
<               name: integration-config-gkchk67fck
---
>               name: console-url-gkchk67fck
1436c1436
<               name: integration-config-gkchk67fck
---
>               name: console-url-gkchk67fck 
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
<h3>4: Staging changes from 1b4ae8ce to a7d8d928 on Tue Jun 4 17:22:06 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e52827ad..87df0c4d 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -11,7 +11,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Dev version"
     - CONSOLE_URL=""
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 4336816e..e76e3fed 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_NAME
               optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 0df270fa..6fa9abd0 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -12,7 +12,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 23de54ac..f846f3dc 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index adb35c7d..64c31211 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -12,11 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-name
-  - path: console-url-config-patch.json
-    target:
-      kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
 
diff --git a/components/integration/production/stone-prod-p02/kustomization.yaml b/components/integration/production/stone-prod-p02/kustomization.yaml
index 2f086e27..64c31211 100644
--- a/components/integration/production/stone-prod-p02/kustomization.yaml
+++ b/components/integration/production/stone-prod-p02/kustomization.yaml
@@ -12,7 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 1db3c09d..53827125 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -12,7 +12,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 3534c0f7..58ee593c 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index adb35c7d..64c31211 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -12,11 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-name
-  - path: console-url-config-patch.json
-    target:
-      kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-1b4ae8ce/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1306c1306
<   name: integration-config-m6fh7c768d
---
>   name: console-url-m6fh7c768d
1424c1424
<               name: integration-config-m6fh7c768d
---
>               name: console-url-m6fh7c768d
1430c1430
<               name: integration-config-m6fh7c768d
---
>               name: console-url-m6fh7c768d
1436c1436
<               name: integration-config-m6fh7c768d
---
>               name: console-url-m6fh7c768d 
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
<h3>4: Development changes from 1b4ae8ce to a7d8d928 on Tue Jun 4 17:22:06 2024 </h3>  
 
<details> 
<summary>Git Diff (167 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e52827ad..87df0c4d 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -11,7 +11,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Dev version"
     - CONSOLE_URL=""
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 4336816e..e76e3fed 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_NAME
               optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 0df270fa..6fa9abd0 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -12,7 +12,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Red Hat Konflux"
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 23de54ac..f846f3dc 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index adb35c7d..64c31211 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -12,11 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-name
-  - path: console-url-config-patch.json
-    target:
-      kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
 
diff --git a/components/integration/production/stone-prod-p02/kustomization.yaml b/components/integration/production/stone-prod-p02/kustomization.yaml
index 2f086e27..64c31211 100644
--- a/components/integration/production/stone-prod-p02/kustomization.yaml
+++ b/components/integration/production/stone-prod-p02/kustomization.yaml
@@ -12,7 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
 
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 1db3c09d..53827125 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -12,7 +12,7 @@ images:
   newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
-- name: console-url
+- name: integration-config
   literals:
     - CONSOLE_NAME="Konflux Staging"
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index 3534c0f7..58ee593c 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -19,19 +19,19 @@ spec:
         - name: CONSOLE_NAME
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_NAME
                 optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
-                name: console-url
+                name: integration-config
                 key: CONSOLE_URL
                 optional: true
         - name: CONSOLE_URL_TASKLOG
           valueFrom:
             configMapKeyRef:
-              name: console-url
+              name: integration-config
               key: CONSOLE_URL_TASKLOG
               optional: true
         - name: PIPELINE_TIMEOUT
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index adb35c7d..64c31211 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -12,11 +12,7 @@ patches:
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
-      name: console-name
-  - path: console-url-config-patch.json
-    target:
-      kind: ConfigMap
-      name: console-url
+      name: integration-config
 components:
   - ../../rh-certs
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-1b4ae8ce/development/components/integration/development/kustomize.out.yaml
1304c1304
<   name: integration-config-h9d67t5c7h
---
>   name: console-url-h9d67t5c7h
1422c1422
<               name: integration-config-h9d67t5c7h
---
>               name: console-url-h9d67t5c7h
1428c1428
<               name: integration-config-h9d67t5c7h
---
>               name: console-url-h9d67t5c7h
1434c1434
<               name: integration-config-h9d67t5c7h
---
>               name: console-url-h9d67t5c7h 
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
```
 
</details> 
<br> 


</div>
