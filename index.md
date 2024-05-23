# kustomize changes tracked by commits 
### This file generated at Thu May 23 12:05:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 98c4ac15 to 949fceb8 on Thu May 23 10:25:27 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index 54fe94a2..e1dd8c86 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=81d1c5b7365c625b6a96b78a9e4ce675b1873ced
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 81d1c5b7365c625b6a96b78a9e4ce675b1873ced
+  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
 
 namespace: ci-helper-app
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 98c4ac15 to 949fceb8 on Thu May 23 10:25:27 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index 54fe94a2..e1dd8c86 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=81d1c5b7365c625b6a96b78a9e4ce675b1873ced
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 81d1c5b7365c625b6a96b78a9e4ce675b1873ced
+  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-98c4ac15/staging/components/ci-helper-app/staging/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:31701cac48ccc9cf599a788ee08634cfa79eb0cd
---
>         image: quay.io/konflux-ci/ci-helper-app:81d1c5b7365c625b6a96b78a9e4ce675b1873ced 
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
<h3>1: Development changes from 98c4ac15 to 949fceb8 on Thu May 23 10:25:27 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index 54fe94a2..e1dd8c86 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=81d1c5b7365c625b6a96b78a9e4ce675b1873ced
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 81d1c5b7365c625b6a96b78a9e4ce675b1873ced
+  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-98c4ac15/development/components/ci-helper-app/development/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:31701cac48ccc9cf599a788ee08634cfa79eb0cd
---
>         image: quay.io/konflux-ci/ci-helper-app:81d1c5b7365c625b6a96b78a9e4ce675b1873ced 
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
<h3>2: Production changes from 69e8d790 to 98c4ac15 on Thu May 23 05:51:37 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d5348aa8..c63b0d79 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c35f9916..7911c977 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -34,6 +34,30 @@ data:
   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
 
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index eb0bf888..f16d97be 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
   dynamic.linux-arm64.type: aws
@@ -36,6 +36,30 @@ data:
   # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: t4g.large
+  dynamic.linux-root-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le"
   host.ppc1.user: "root" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (90 lines)</summary>  

``` 
./commit-69e8d790/production/components/multi-platform-controller/production/kustomize.out.yaml
137c137
<   dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64
158,179d157
<   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-root-amd64.aws-secret: aws-account
<   dynamic.linux-root-amd64.instance-type: m5.large
<   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-root-amd64.max-instances: "10"
<   dynamic.linux-root-amd64.region: us-east-1
<   dynamic.linux-root-amd64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-root-amd64.sudo-commands: /usr/bin/podman
<   dynamic.linux-root-amd64.type: aws
<   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-root-arm64.aws-secret: aws-account
<   dynamic.linux-root-arm64.instance-type: m6g.large
<   dynamic.linux-root-arm64.key-name: konflux-prod-ext-mab01
<   dynamic.linux-root-arm64.max-instances: "10"
<   dynamic.linux-root-arm64.region: us-east-1
<   dynamic.linux-root-arm64.security-group-id: sg-0fbf35ced0d59fd4a
<   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
<   dynamic.linux-root-arm64.sudo-commands: /usr/bin/podman
<   dynamic.linux-root-arm64.type: aws
281c259
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:58989e5842ebbb12c35f260ba3f6c7368700895b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
323c301
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:58989e5842ebbb12c35f260ba3f6c7368700895b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
523,538d500
<   - name: SUDO_COMMANDS
<     type: string
<   stepTemplate:
<     env:
<     - name: SECRET_NAME
<       value: $(params.SECRET_NAME)
<     - name: TASKRUN_NAME
<       value: $(params.TASKRUN_NAME)
<     - name: NAMESPACE
<       value: $(params.NAMESPACE)
<     - name: HOST
<       value: $(params.HOST)
<     - name: USER
<       value: $(params.USER)
<     - name: SUDO_COMMANDS
<       value: $(params.SUDO_COMMANDS)
552c514
<       export SSH_HOST="$USER@$HOST"
---
>       export SSH_HOST=$(params.USER)@$(params.HOST)
554c516
<       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
---
>       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
567,573d528
< 
<       if [ ! -z "$SUDO_COMMANDS" ]; then
<       #if we need sudo access add it to the script
<       cat >>script.sh <<EOF
<       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
<       EOF
<       fi
578c533,534
<       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
---
>       ssh -i id_rsa -o StrictHostKeyChecking=no $USERNAME@$(params.HOST) echo "test"
>       HOST=$(echo $USERNAME@$(params.HOST) | base64 -w 0)
596,597c552,553
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
---
>           name: $(params.SECRET_NAME)
>           namespace: $(params.NAMESPACE)
612,613c568,569
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
---
>           name: $(params.SECRET_NAME)
>           namespace: $(params.NAMESPACE)
650c606
<     name: update
---
>     name: provision 
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
<h3>2: Staging changes from 69e8d790 to 98c4ac15 on Thu May 23 05:51:37 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d5348aa8..c63b0d79 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c35f9916..7911c977 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -34,6 +34,30 @@ data:
   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
 
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index eb0bf888..f16d97be 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
   dynamic.linux-arm64.type: aws
@@ -36,6 +36,30 @@ data:
   # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: t4g.large
+  dynamic.linux-root-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le"
   host.ppc1.user: "root" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (90 lines)</summary>  

``` 
./commit-69e8d790/staging/components/multi-platform-controller/staging/kustomize.out.yaml
137c137
<   dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
---
>   dynamic-platforms: linux/arm64,linux/amd64
158,179d157
<   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
<   dynamic.linux-root-amd64.aws-secret: aws-account
<   dynamic.linux-root-amd64.instance-type: m5.large
<   dynamic.linux-root-amd64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-root-amd64.max-instances: "10"
<   dynamic.linux-root-amd64.region: us-east-1
<   dynamic.linux-root-amd64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
<   dynamic.linux-root-amd64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-root-amd64.sudo-commands: /usr/bin/podman
<   dynamic.linux-root-amd64.type: aws
<   dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
<   dynamic.linux-root-arm64.aws-secret: aws-account
<   dynamic.linux-root-arm64.instance-type: t4g.large
<   dynamic.linux-root-arm64.key-name: konflux-stage-ext-mab01
<   dynamic.linux-root-arm64.max-instances: "10"
<   dynamic.linux-root-arm64.region: us-east-1
<   dynamic.linux-root-arm64.security-group-id: sg-05bc8dd0b52158567
<   dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
<   dynamic.linux-root-arm64.subnet-id: subnet-030738beb81d3863a
<   dynamic.linux-root-arm64.sudo-commands: /usr/bin/podman
<   dynamic.linux-root-arm64.type: aws
271c249
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:58989e5842ebbb12c35f260ba3f6c7368700895b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
313c291
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:58989e5842ebbb12c35f260ba3f6c7368700895b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
467,482d444
<   - name: SUDO_COMMANDS
<     type: string
<   stepTemplate:
<     env:
<     - name: SECRET_NAME
<       value: $(params.SECRET_NAME)
<     - name: TASKRUN_NAME
<       value: $(params.TASKRUN_NAME)
<     - name: NAMESPACE
<       value: $(params.NAMESPACE)
<     - name: HOST
<       value: $(params.HOST)
<     - name: USER
<       value: $(params.USER)
<     - name: SUDO_COMMANDS
<       value: $(params.SUDO_COMMANDS)
496c458
<       export SSH_HOST="$USER@$HOST"
---
>       export SSH_HOST=$(params.USER)@$(params.HOST)
498c460
<       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
---
>       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
511,517d472
< 
<       if [ ! -z "$SUDO_COMMANDS" ]; then
<       #if we need sudo access add it to the script
<       cat >>script.sh <<EOF
<       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
<       EOF
<       fi
522c477,478
<       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
---
>       ssh -i id_rsa -o StrictHostKeyChecking=no $USERNAME@$(params.HOST) echo "test"
>       HOST=$(echo $USERNAME@$(params.HOST) | base64 -w 0)
540,541c496,497
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
---
>           name: $(params.SECRET_NAME)
>           namespace: $(params.NAMESPACE)
556,557c512,513
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
---
>           name: $(params.SECRET_NAME)
>           namespace: $(params.NAMESPACE)
594c550
<     name: update
---
>     name: provision 
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
<h3>2: Development changes from 69e8d790 to 98c4ac15 on Thu May 23 05:51:37 2024 </h3>  
 
<details> 
<summary>Git Diff (114 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index d5348aa8..c63b0d79 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=58989e5842ebbb12c35f260ba3f6c7368700895b
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: f2a2906784539e1baf50bb8dba0fc06fb2f4d709
+  newTag: 58989e5842ebbb12c35f260ba3f6c7368700895b
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index c35f9916..7911c977 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-prod
 
   dynamic.linux-arm64.type: aws
@@ -34,6 +34,30 @@ data:
   dynamic.linux-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-amd64.max-instances: "10"
 
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: m6g.large
+  dynamic.linux-root-arm64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-0fbf35ced0d59fd4a
+  dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index eb0bf888..f16d97be 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
   instance-tag: rhtap-staging
 
   dynamic.linux-arm64.type: aws
@@ -36,6 +36,30 @@ data:
   # dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a
 
+  dynamic.linux-root-arm64.type: aws
+  dynamic.linux-root-arm64.region: us-east-1
+  dynamic.linux-root-arm64.ami: ami-03d6a5256a46c9feb
+  dynamic.linux-root-arm64.instance-type: t4g.large
+  dynamic.linux-root-arm64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-root-arm64.aws-secret: aws-account
+  dynamic.linux-root-arm64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-arm64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-root-arm64.max-instances: "10"
+  dynamic.linux-root-arm64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-root-amd64.type: aws
+  dynamic.linux-root-amd64.region: us-east-1
+  dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
+  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.key-name: konflux-stage-ext-mab01
+  dynamic.linux-root-amd64.aws-secret: aws-account
+  dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
+  dynamic.linux-root-amd64.security-group-id: sg-05bc8dd0b52158567
+  dynamic.linux-root-amd64.max-instances: "10"
+  dynamic.linux-root-amd64.subnet-id: subnet-030738beb81d3863a
+  dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le"
   host.ppc1.user: "root" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (63 lines)</summary>  

``` 
./commit-69e8d790/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:58989e5842ebbb12c35f260ba3f6c7368700895b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:58989e5842ebbb12c35f260ba3f6c7368700895b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:f2a2906784539e1baf50bb8dba0fc06fb2f4d709
336,351d335
<   - name: SUDO_COMMANDS
<     type: string
<   stepTemplate:
<     env:
<     - name: SECRET_NAME
<       value: $(params.SECRET_NAME)
<     - name: TASKRUN_NAME
<       value: $(params.TASKRUN_NAME)
<     - name: NAMESPACE
<       value: $(params.NAMESPACE)
<     - name: HOST
<       value: $(params.HOST)
<     - name: USER
<       value: $(params.USER)
<     - name: SUDO_COMMANDS
<       value: $(params.SUDO_COMMANDS)
365c349
<       export SSH_HOST="$USER@$HOST"
---
>       export SSH_HOST=$(params.USER)@$(params.HOST)
367c351
<       export USERNAME=u-$(echo "$TASKRUN_NAME$NAMESPACE" | md5sum | cut -b-28)
---
>       export USERNAME=u-$(echo $(params.TASKRUN_NAME)$(params.NAMESPACE) | md5sum | cut -b-28)
380,386d363
< 
<       if [ ! -z "$SUDO_COMMANDS" ]; then
<       #if we need sudo access add it to the script
<       cat >>script.sh <<EOF
<       echo "$USERNAME ALL=(ALL) NOPASSWD: $SUDO_COMMANDS" | sudo tee /etc/sudoers
<       EOF
<       fi
391c368,369
<       HOST=$(echo "$USERNAME@$HOST" | base64 -w 0)
---
>       ssh -i id_rsa -o StrictHostKeyChecking=no $USERNAME@$(params.HOST) echo "test"
>       HOST=$(echo $USERNAME@$(params.HOST) | base64 -w 0)
409,410c387,388
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
---
>           name: $(params.SECRET_NAME)
>           namespace: $(params.NAMESPACE)
425,426c403,404
<           name: "$SECRET_NAME"
<           namespace: "$NAMESPACE"
---
>           name: $(params.SECRET_NAME)
>           namespace: $(params.NAMESPACE)
463c441
<     name: update
---
>     name: provision 
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
<h3>3: Production changes from eaaaf018 to 69e8d790 on Wed May 22 20:25:28 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index a72bd10a..e1ff152e 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index bb2924ea..a1d62bfe 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -8,3 +8,5 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/ci-helper-app
 namespace: konflux-public-staging
+patchesStrategicMerge:
+  - delete-applications.yaml 
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
<h3>3: Staging changes from eaaaf018 to 69e8d790 on Wed May 22 20:25:28 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index a72bd10a..e1ff152e 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index bb2924ea..a1d62bfe 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -8,3 +8,5 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/ci-helper-app
 namespace: konflux-public-staging
+patchesStrategicMerge:
+  - delete-applications.yaml 
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
<h3>3: Development changes from eaaaf018 to 69e8d790 on Wed May 22 20:25:28 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index a72bd10a..e1ff152e 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -88,3 +88,9 @@ kind: ApplicationSet
 metadata:
   name: ui
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-staging/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
index bb2924ea..a1d62bfe 100644
--- a/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-staging/kustomization.yaml
@@ -8,3 +8,5 @@ resources:
   - ../../base/quality-dashboard
   - ../../base/ci-helper-app
 namespace: konflux-public-staging
+patchesStrategicMerge:
+  - delete-applications.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (60 lines)</summary>  

``` 
./commit-eaaaf018/development/app-of-apps-development.yaml
324a325,382
>   name: gitops
>   namespace: openshift-gitops
> spec:
>   generators:
>   - merge:
>       generators:
>       - clusters:
>           selector:
>             matchLabels:
>               appstudio.redhat.com/member-cluster: "true"
>           values:
>             clusterDir: ""
>             environment: development
>             sourceRoot: components/gitops
>       - list:
>           elements:
>           - nameNormalized: stone-stg-m01
>             values.clusterDir: stone-stg-m01
>           - nameNormalized: stone-stg-rh01
>             values.clusterDir: stone-stg-rh01
>           - nameNormalized: stone-prd-m01
>             values.clusterDir: stone-prd-m01
>           - nameNormalized: stone-prd-rh01
>             values.clusterDir: stone-prd-rh01
>           - nameNormalized: stone-stage-p01
>             values.clusterDir: stone-stage-p01
>           - nameNormalized: stone-prod-p01
>             values.clusterDir: stone-prod-p01
>       mergeKeys:
>       - nameNormalized
>   template:
>     metadata:
>       name: gitops-{{nameNormalized}}
>     spec:
>       destination:
>         namespace: gitops
>         server: '{{server}}'
>       project: default
>       source:
>         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
>         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
>         targetRevision: main
>       syncPolicy:
>         automated:
>           prune: true
>           selfHeal: true
>         retry:
>           backoff:
>             duration: 10s
>             factor: 2
>             maxDuration: 3m
>           limit: -1
>         syncOptions:
>         - CreateNamespace=true
> ---
> apiVersion: argoproj.io/v1alpha1
> kind: ApplicationSet
> metadata: 
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
<h3>4: Production changes from d1e954f4 to eaaaf018 on Wed May 22 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index f9f3263b..b8e4e926 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 2c1d1deb..59f6ccc2 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9713f0c2..59dfc02b 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 86bb1f8f..ccfe62b8 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d1e954f4/production/components/has/production/kustomize.out.yaml
311a312,353
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
776c818
<         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232
---
>         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1 
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
<h3>4: Staging changes from d1e954f4 to eaaaf018 on Wed May 22 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index f9f3263b..b8e4e926 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 2c1d1deb..59f6ccc2 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9713f0c2..59dfc02b 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 86bb1f8f..ccfe62b8 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d1e954f4/staging/components/has/staging/kustomize.out.yaml
324a325,366
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
803c845
<         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232
---
>         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1 
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
<h3>4: Development changes from d1e954f4 to eaaaf018 on Wed May 22 15:28:32 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index f9f3263b..b8e4e926 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index 2c1d1deb..59f6ccc2 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+    newTag: f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 9713f0c2..59dfc02b 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index 86bb1f8f..ccfe62b8 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=f66b32659666c075ae0769b4a2a79cdce7c2b232
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d1e954f4/development/components/has/development/kustomize.out.yaml
305a306,347
>   - environments
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings
>   verbs:
>   - create
>   - delete
>   - get
>   - list
>   - patch
>   - update
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/finalizers
>   verbs:
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshotenvironmentbindings/status
>   verbs:
>   - get
>   - patch
>   - update
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
>   - snapshots
>   verbs:
>   - get
>   - list
>   - watch
> - apiGroups:
>   - appstudio.redhat.com
>   resources:
735c777
<         image: quay.io/redhat-appstudio/application-service:f66b32659666c075ae0769b4a2a79cdce7c2b232
---
>         image: quay.io/redhat-appstudio/application-service:4affbb7d4f6d88d49b8a1f07f25f7f151bbc05d1 
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
