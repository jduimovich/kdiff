# kustomize changes tracked by commits 
### This file generated at Tue Jun  4 12:03:56 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 533926a6 to 9b260a91 on Tue Jun 4 11:42:47 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 79487fc0..7736ab4b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 96a3b13c..2db0adc5 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 533926a6 to 9b260a91 on Tue Jun 4 11:42:47 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 79487fc0..7736ab4b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 96a3b13c..2db0adc5 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-533926a6/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
743c743
<         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c
---
>         image: quay.io/konflux-ci/build-service:edd586d9d07aba61d6d7f853a3db679db7d1a893 
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
<h3>1: Development changes from 533926a6 to 9b260a91 on Tue Jun 4 11:42:47 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 79487fc0..7736ab4b 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 96a3b13c..2db0adc5 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=edd586d9d07aba61d6d7f853a3db679db7d1a893
+- https://github.com/konflux-ci/build-service/config/default?ref=02a07050a31bf08e813f962d54225583cd67189c
 
 namespace: build-service
 
 images:
 - name: quay.io/konflux-ci/build-service
   newName: quay.io/konflux-ci/build-service
-  newTag: edd586d9d07aba61d6d7f853a3db679db7d1a893
+  newTag: 02a07050a31bf08e813f962d54225583cd67189c
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-533926a6/development/components/build-service/development/kustomize.out.yaml
738c738
<         image: quay.io/konflux-ci/build-service:02a07050a31bf08e813f962d54225583cd67189c
---
>         image: quay.io/konflux-ci/build-service:edd586d9d07aba61d6d7f853a3db679db7d1a893 
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
<h3>2: Production changes from ddefa034 to 533926a6 on Tue Jun 4 00:15:28 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index caad501a..55f96b7c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -45,11 +45,14 @@ data:
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -57,6 +60,9 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.iops: "16000"
+  dynamic.linux-root-amd64.throughput: "1000"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index b49ca1d4..c439eb2b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -46,6 +46,8 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -59,6 +61,8 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.iops: "16000"
+  dynamic.linux-root-amd64.throughput: "1000"
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 6a6afb9b..85dabe56 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -43,6 +43,7 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -55,6 +56,7 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-ddefa034/production/components/multi-platform-controller/production/kustomize.out.yaml
173d172
<   dynamic.linux-root-amd64.iops: "16000"
181d179
<   dynamic.linux-root-amd64.throughput: "1000"
187d184
<   dynamic.linux-root-arm64.iops: "16000"
195d191
<   dynamic.linux-root-arm64.throughput: "1000" 
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
<h3>2: Staging changes from ddefa034 to 533926a6 on Tue Jun 4 00:15:28 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index caad501a..55f96b7c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -45,11 +45,14 @@ data:
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -57,6 +60,9 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.iops: "16000"
+  dynamic.linux-root-amd64.throughput: "1000"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index b49ca1d4..c439eb2b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -46,6 +46,8 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -59,6 +61,8 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.iops: "16000"
+  dynamic.linux-root-amd64.throughput: "1000"
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 6a6afb9b..85dabe56 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -43,6 +43,7 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -55,6 +56,7 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key" 
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
<h3>2: Development changes from ddefa034 to 533926a6 on Tue Jun 4 00:15:28 2024 </h3>  
 
<details> 
<summary>Git Diff (72 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index caad501a..55f96b7c 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -45,11 +45,14 @@ data:
   dynamic.linux-root-arm64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-int-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
@@ -57,6 +60,9 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0aa719a6c5b602b16
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.iops: "16000"
+  dynamic.linux-root-amd64.throughput: "1000"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index b49ca1d4..c439eb2b 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -46,6 +46,8 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-arm64.disk: "200"
+  dynamic.linux-root-arm64.iops: "16000"
+  dynamic.linux-root-arm64.throughput: "1000"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -59,6 +61,8 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
   dynamic.linux-root-amd64.disk: "200"
+  dynamic.linux-root-amd64.iops: "16000"
+  dynamic.linux-root-amd64.throughput: "1000"
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index 6a6afb9b..85dabe56 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -43,6 +43,7 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -55,6 +56,7 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key" 
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
<h3>3: Production changes from d5b91a2f to ddefa034 on Mon Jun 3 20:55:33 2024 </h3>  
 
<details> 
<summary>Git Diff (344 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..af3fb4dc
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,38 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: enable-tekton-tracing
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/enable-tekton-tracing
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: enable-tekton-tracing-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: configs/enable-tekton-tracing
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
new file mode 100644
index 00000000..e13ea0b1
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - enable-tekton-tracing.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 143ee88d..8dc26bc5 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,7 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
+  - tracing-workload-otel-collector
+  - enable-tekton-tracing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
new file mode 100644
index 00000000..692af320
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- tracing-workload-otel-collector.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
new file mode 100644
index 00000000..96609719
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -0,0 +1,132 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+  labels:
+    ### Prevent the repoURL from being transformed to a local fork name.
+    noSourceTransform: "true"
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/tracing/otel-collector
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: tracing-workload-otel-collector-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        chart: opentelemetry-collector
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
+        targetRevision: 0.90.1
+        helm:
+          parameters:
+            - name: "image.repository"
+              value: otel/opentelemetry-collector-k8s
+            - name: "mode"
+              value: deployment
+          releaseName: open-telemetry
+          values: |
+            config:
+              exporters:
+                debug:
+                  verbosity: basic
+              #             ### To be configured in later work for stage and prod clusters..
+              #                otlphttp:
+              #                  endpoint: https://api.honeycomb.io:443
+              #                  headers:
+              #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
+              extensions:
+                # The health_check extension is mandatory for this chart.
+                # Without the health_check extension the collector will fail the readiness and liveliness probes.
+                # The health_check extension can be modified, but should never be removed.
+                health_check: {}
+                memory_ballast: {}
+              processors:
+                batch: {}
+                # If set to null, will be overridden with values based on k8s resource limits
+                memory_limiter:
+                  check_interval: 2s
+                  limit_mib: 512
+                  spike_limit_percentage: 100
+                attributes/collector-info:
+                  actions:
+                    - key: collector.hostname
+                      action: insert
+                      value: ${env:HOSTNAME}
+                    - key: collector.clustername
+                      action: insert
+                      value: dev
+              receivers:
+                jaeger: null
+                prometheus: null
+                zipkin: null
+                otlp:
+                  protocols:
+                    grpc:
+                      endpoint: 0.0.0.0:4317
+                      max_recv_msg_size_mib: 999999999
+                    http:
+                      endpoint: 0.0.0.0:4318
+              service:
+                extensions:
+                  - health_check
+                  - memory_ballast
+                pipelines:
+                  traces:
+                    exporters:
+                      - debug
+                    processors:
+                      - memory_limiter
+                      - attributes/collector-info
+                      - batch
+                    receivers:
+                      - otlp
+                  metrics: null
+            # Configuration for ports
+            ports:
+              otlp:
+                enabled: true
+                containerPort: 4317
+                servicePort: 4317
+                hostPort: 4317
+                protocol: TCP
+              otlp-http:
+                enabled: true
+                containerPort: 4318
+                servicePort: 4318
+                hostPort: 4318
+                protocol: TCP
+              jaeger-compact:
+                enabled: false
+              jaeger-thrift:
+                enabled: false
+              jaeger-grpc:
+                enabled: false
+              zipkin:
+                enabled: false
+
+      destination:
+        namespace: konflux-otel
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
index 1f1b9b76..4a094f7d 100644
--- a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
@@ -7,8 +7,10 @@ patches:
       group: argoproj.io
       version: v1alpha1
       kind: ApplicationSet
+      labelSelector: noSourceTransform != true
   - path: application-patch.yaml
     target:
       group: argoproj.io
       version: v1alpha1
-      kind: Application
\ No newline at end of file
+      kind: Application
+      labelSelector: noSourceTransform != true
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5aca14d8..0abff43b 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -159,3 +159,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: cluster-as-a-service
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tracing-workload-otel-collector
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 3cb9b66d..42b14d47 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,3 +4,9 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..8f910fc0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 139b6bb0..8f910fc0 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..8fb3ad5a 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
   - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
+
 patches:
   - path: staging-downstream-overlay-patch.yaml
     target:
diff --git a/components/tracing/OWNERS b/components/tracing/OWNERS
new file mode 100644
index 00000000..12a728a1
--- /dev/null
+++ b/components/tracing/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- mike-kingsbury
+- mftb
+- pacho-rh
+- raks-tt
+
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..3ddf898a
--- /dev/null
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: config-tracing
+  namespace: openshift-pipelines
+data:
+  enabled: "true"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
diff --git a/configs/enable-tekton-tracing/kustomization.yaml b/configs/enable-tekton-tracing/kustomization.yaml
new file mode 100644
index 00000000..09fe7785
--- /dev/null
+++ b/configs/enable-tekton-tracing/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - enable-tekton-tracing.yaml
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
<h3>3: Staging changes from d5b91a2f to ddefa034 on Mon Jun 3 20:55:33 2024 </h3>  
 
<details> 
<summary>Git Diff (344 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..af3fb4dc
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,38 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: enable-tekton-tracing
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/enable-tekton-tracing
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: enable-tekton-tracing-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: configs/enable-tekton-tracing
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
new file mode 100644
index 00000000..e13ea0b1
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - enable-tekton-tracing.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 143ee88d..8dc26bc5 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,7 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
+  - tracing-workload-otel-collector
+  - enable-tekton-tracing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
new file mode 100644
index 00000000..692af320
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- tracing-workload-otel-collector.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
new file mode 100644
index 00000000..96609719
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -0,0 +1,132 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+  labels:
+    ### Prevent the repoURL from being transformed to a local fork name.
+    noSourceTransform: "true"
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/tracing/otel-collector
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: tracing-workload-otel-collector-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        chart: opentelemetry-collector
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
+        targetRevision: 0.90.1
+        helm:
+          parameters:
+            - name: "image.repository"
+              value: otel/opentelemetry-collector-k8s
+            - name: "mode"
+              value: deployment
+          releaseName: open-telemetry
+          values: |
+            config:
+              exporters:
+                debug:
+                  verbosity: basic
+              #             ### To be configured in later work for stage and prod clusters..
+              #                otlphttp:
+              #                  endpoint: https://api.honeycomb.io:443
+              #                  headers:
+              #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
+              extensions:
+                # The health_check extension is mandatory for this chart.
+                # Without the health_check extension the collector will fail the readiness and liveliness probes.
+                # The health_check extension can be modified, but should never be removed.
+                health_check: {}
+                memory_ballast: {}
+              processors:
+                batch: {}
+                # If set to null, will be overridden with values based on k8s resource limits
+                memory_limiter:
+                  check_interval: 2s
+                  limit_mib: 512
+                  spike_limit_percentage: 100
+                attributes/collector-info:
+                  actions:
+                    - key: collector.hostname
+                      action: insert
+                      value: ${env:HOSTNAME}
+                    - key: collector.clustername
+                      action: insert
+                      value: dev
+              receivers:
+                jaeger: null
+                prometheus: null
+                zipkin: null
+                otlp:
+                  protocols:
+                    grpc:
+                      endpoint: 0.0.0.0:4317
+                      max_recv_msg_size_mib: 999999999
+                    http:
+                      endpoint: 0.0.0.0:4318
+              service:
+                extensions:
+                  - health_check
+                  - memory_ballast
+                pipelines:
+                  traces:
+                    exporters:
+                      - debug
+                    processors:
+                      - memory_limiter
+                      - attributes/collector-info
+                      - batch
+                    receivers:
+                      - otlp
+                  metrics: null
+            # Configuration for ports
+            ports:
+              otlp:
+                enabled: true
+                containerPort: 4317
+                servicePort: 4317
+                hostPort: 4317
+                protocol: TCP
+              otlp-http:
+                enabled: true
+                containerPort: 4318
+                servicePort: 4318
+                hostPort: 4318
+                protocol: TCP
+              jaeger-compact:
+                enabled: false
+              jaeger-thrift:
+                enabled: false
+              jaeger-grpc:
+                enabled: false
+              zipkin:
+                enabled: false
+
+      destination:
+        namespace: konflux-otel
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
index 1f1b9b76..4a094f7d 100644
--- a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
@@ -7,8 +7,10 @@ patches:
       group: argoproj.io
       version: v1alpha1
       kind: ApplicationSet
+      labelSelector: noSourceTransform != true
   - path: application-patch.yaml
     target:
       group: argoproj.io
       version: v1alpha1
-      kind: Application
\ No newline at end of file
+      kind: Application
+      labelSelector: noSourceTransform != true
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5aca14d8..0abff43b 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -159,3 +159,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: cluster-as-a-service
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tracing-workload-otel-collector
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 3cb9b66d..42b14d47 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,3 +4,9 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..8f910fc0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 139b6bb0..8f910fc0 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..8fb3ad5a 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
   - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
+
 patches:
   - path: staging-downstream-overlay-patch.yaml
     target:
diff --git a/components/tracing/OWNERS b/components/tracing/OWNERS
new file mode 100644
index 00000000..12a728a1
--- /dev/null
+++ b/components/tracing/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- mike-kingsbury
+- mftb
+- pacho-rh
+- raks-tt
+
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..3ddf898a
--- /dev/null
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: config-tracing
+  namespace: openshift-pipelines
+data:
+  enabled: "true"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
diff --git a/configs/enable-tekton-tracing/kustomization.yaml b/configs/enable-tekton-tracing/kustomization.yaml
new file mode 100644
index 00000000..09fe7785
--- /dev/null
+++ b/configs/enable-tekton-tracing/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - enable-tekton-tracing.yaml
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
<h3>3: Development changes from d5b91a2f to ddefa034 on Mon Jun 3 20:55:33 2024 </h3>  
 
<details> 
<summary>Git Diff (344 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..af3fb4dc
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,38 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: enable-tekton-tracing
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: configs/enable-tekton-tracing
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: enable-tekton-tracing-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: configs/enable-tekton-tracing
+        repoURL: https://github.com/redhat-appstudio/infra-deployments.git
+        targetRevision: main
+      destination:
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
new file mode 100644
index 00000000..e13ea0b1
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/enable-tekton-tracing/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - enable-tekton-tracing.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
index 143ee88d..8dc26bc5 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/kustomization.yaml
@@ -11,5 +11,7 @@ resources:
   - disable-csvcopy-for-all-cluster
   - enable-dvo-for-all-cluster
   - kubesaw-common
+  - tracing-workload-otel-collector
+  - enable-tekton-tracing
 components:
   - ../../../k-components/inject-infra-deployments-repo-details
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
new file mode 100644
index 00000000..692af320
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- tracing-workload-otel-collector.yaml
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
new file mode 100644
index 00000000..96609719
--- /dev/null
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -0,0 +1,132 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+  labels:
+    ### Prevent the repoURL from being transformed to a local fork name.
+    noSourceTransform: "true"
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/tracing/otel-collector
+                environment: staging
+                clusterDir: ""
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: tracing-workload-otel-collector-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        chart: opentelemetry-collector
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
+        targetRevision: 0.90.1
+        helm:
+          parameters:
+            - name: "image.repository"
+              value: otel/opentelemetry-collector-k8s
+            - name: "mode"
+              value: deployment
+          releaseName: open-telemetry
+          values: |
+            config:
+              exporters:
+                debug:
+                  verbosity: basic
+              #             ### To be configured in later work for stage and prod clusters..
+              #                otlphttp:
+              #                  endpoint: https://api.honeycomb.io:443
+              #                  headers:
+              #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
+              extensions:
+                # The health_check extension is mandatory for this chart.
+                # Without the health_check extension the collector will fail the readiness and liveliness probes.
+                # The health_check extension can be modified, but should never be removed.
+                health_check: {}
+                memory_ballast: {}
+              processors:
+                batch: {}
+                # If set to null, will be overridden with values based on k8s resource limits
+                memory_limiter:
+                  check_interval: 2s
+                  limit_mib: 512
+                  spike_limit_percentage: 100
+                attributes/collector-info:
+                  actions:
+                    - key: collector.hostname
+                      action: insert
+                      value: ${env:HOSTNAME}
+                    - key: collector.clustername
+                      action: insert
+                      value: dev
+              receivers:
+                jaeger: null
+                prometheus: null
+                zipkin: null
+                otlp:
+                  protocols:
+                    grpc:
+                      endpoint: 0.0.0.0:4317
+                      max_recv_msg_size_mib: 999999999
+                    http:
+                      endpoint: 0.0.0.0:4318
+              service:
+                extensions:
+                  - health_check
+                  - memory_ballast
+                pipelines:
+                  traces:
+                    exporters:
+                      - debug
+                    processors:
+                      - memory_limiter
+                      - attributes/collector-info
+                      - batch
+                    receivers:
+                      - otlp
+                  metrics: null
+            # Configuration for ports
+            ports:
+              otlp:
+                enabled: true
+                containerPort: 4317
+                servicePort: 4317
+                hostPort: 4317
+                protocol: TCP
+              otlp-http:
+                enabled: true
+                containerPort: 4318
+                servicePort: 4318
+                hostPort: 4318
+                protocol: TCP
+              jaeger-compact:
+                enabled: false
+              jaeger-thrift:
+                enabled: false
+              jaeger-grpc:
+                enabled: false
+              zipkin:
+                enabled: false
+
+      destination:
+        namespace: konflux-otel
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          prune: true
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=true
+        retry:
+          limit: 50
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
index 1f1b9b76..4a094f7d 100644
--- a/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
+++ b/argo-cd-apps/k-components/inject-infra-deployments-repo-details/kustomization.yaml
@@ -7,8 +7,10 @@ patches:
       group: argoproj.io
       version: v1alpha1
       kind: ApplicationSet
+      labelSelector: noSourceTransform != true
   - path: application-patch.yaml
     target:
       group: argoproj.io
       version: v1alpha1
-      kind: Application
\ No newline at end of file
+      kind: Application
+      labelSelector: noSourceTransform != true
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 5aca14d8..0abff43b 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -159,3 +159,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: cluster-as-a-service
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: tracing-workload-otel-collector
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 3cb9b66d..42b14d47 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -4,3 +4,9 @@ kind: ApplicationSet
 metadata:
   name: gitops
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 139b6bb0..8f910fc0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 139b6bb0..8f910fc0 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
@@ -29,3 +29,9 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
+# otel-collector is dev only.
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: tracing-workload-otel-collector
+$patch: delete
\ No newline at end of file
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index 676dddba..8fb3ad5a 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -10,6 +10,7 @@ resources:
   - ../../base/repository-validator
 patchesStrategicMerge:
   - delete-applications.yaml
+
 patches:
   - path: staging-downstream-overlay-patch.yaml
     target:
diff --git a/components/tracing/OWNERS b/components/tracing/OWNERS
new file mode 100644
index 00000000..12a728a1
--- /dev/null
+++ b/components/tracing/OWNERS
@@ -0,0 +1,8 @@
+# See the OWNERS docs: https://go.k8s.io/owners
+
+approvers:
+- mike-kingsbury
+- mftb
+- pacho-rh
+- raks-tt
+
diff --git a/configs/enable-tekton-tracing/enable-tekton-tracing.yaml b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
new file mode 100644
index 00000000..3ddf898a
--- /dev/null
+++ b/configs/enable-tekton-tracing/enable-tekton-tracing.yaml
@@ -0,0 +1,9 @@
+---
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  name: config-tracing
+  namespace: openshift-pipelines
+data:
+  enabled: "true"
+  endpoint: "http://open-telemetry-opentelemetry-collector.konflux-otel.svc.cluster.local:4318/v1/traces"
\ No newline at end of file
diff --git a/configs/enable-tekton-tracing/kustomization.yaml b/configs/enable-tekton-tracing/kustomization.yaml
new file mode 100644
index 00000000..09fe7785
--- /dev/null
+++ b/configs/enable-tekton-tracing/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+  - enable-tekton-tracing.yaml
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (195 lines)</summary>  

``` 
./commit-d5b91a2f/development/app-of-apps-development.yaml
348,397d347
<   name: enable-tekton-tracing
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: staging
<             sourceRoot: configs/enable-tekton-tracing
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: enable-tekton-tracing-{{nameNormalized}}
<     spec:
<       destination:
<         server: '{{server}}'
<       project: default
<       source:
<         path: configs/enable-tekton-tracing
<         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
<         targetRevision: main
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m
<           limit: -1
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
1294,1435d1243
<           limit: 50
<         syncOptions:
<         - CreateNamespace=true
< ---
< apiVersion: argoproj.io/v1alpha1
< kind: ApplicationSet
< metadata:
<   labels:
<     noSourceTransform: "true"
<   name: tracing-workload-otel-collector
<   namespace: openshift-gitops
< spec:
<   generators:
<   - merge:
<       generators:
<       - clusters:
<           selector:
<             matchExpressions:
<             - key: app.kubernetes.io/name
<               operator: NotIn
<               values:
<               - argocd-default-cluster-config
<             - key: clustertemplateinstance.openshift.io/name
<               operator: DoesNotExist
<             matchLabels:
<               argocd.argoproj.io/secret-type: cluster
<           values:
<             clusterDir: ""
<             environment: development
<             sourceRoot: components/tracing/otel-collector
<       - list:
<           elements: []
<       mergeKeys:
<       - nameNormalized
<   template:
<     metadata:
<       name: tracing-workload-otel-collector-{{nameNormalized}}
<     spec:
<       destination:
<         namespace: konflux-otel
<         server: '{{server}}'
<       project: default
<       source:
<         chart: opentelemetry-collector
<         helm:
<           parameters:
<           - name: image.repository
<             value: otel/opentelemetry-collector-k8s
<           - name: mode
<             value: deployment
<           releaseName: open-telemetry
<           values: |
<             config:
<               exporters:
<                 debug:
<                   verbosity: basic
<               #             ### To be configured in later work for stage and prod clusters..
<               #                otlphttp:
<               #                  endpoint: https://api.honeycomb.io:443
<               #                  headers:
<               #                    "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
<               extensions:
<                 # The health_check extension is mandatory for this chart.
<                 # Without the health_check extension the collector will fail the readiness and liveliness probes.
<                 # The health_check extension can be modified, but should never be removed.
<                 health_check: {}
<                 memory_ballast: {}
<               processors:
<                 batch: {}
<                 # If set to null, will be overridden with values based on k8s resource limits
<                 memory_limiter:
<                   check_interval: 2s
<                   limit_mib: 512
<                   spike_limit_percentage: 100
<                 attributes/collector-info:
<                   actions:
<                     - key: collector.hostname
<                       action: insert
<                       value: ${env:HOSTNAME}
<                     - key: collector.clustername
<                       action: insert
<                       value: dev
<               receivers:
<                 jaeger: null
<                 prometheus: null
<                 zipkin: null
<                 otlp:
<                   protocols:
<                     grpc:
<                       endpoint: 0.0.0.0:4317
<                       max_recv_msg_size_mib: 999999999
<                     http:
<                       endpoint: 0.0.0.0:4318
<               service:
<                 extensions:
<                   - health_check
<                   - memory_ballast
<                 pipelines:
<                   traces:
<                     exporters:
<                       - debug
<                     processors:
<                       - memory_limiter
<                       - attributes/collector-info
<                       - batch
<                     receivers:
<                       - otlp
<                   metrics: null
<             # Configuration for ports
<             ports:
<               otlp:
<                 enabled: true
<                 containerPort: 4317
<                 servicePort: 4317
<                 hostPort: 4317
<                 protocol: TCP
<               otlp-http:
<                 enabled: true
<                 containerPort: 4318
<                 servicePort: 4318
<                 hostPort: 4318
<                 protocol: TCP
<               jaeger-compact:
<                 enabled: false
<               jaeger-thrift:
<                 enabled: false
<               jaeger-grpc:
<                 enabled: false
<               zipkin:
<                 enabled: false
<         path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
<         repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
<         targetRevision: 0.90.1
<       syncPolicy:
<         automated:
<           prune: true
<           selfHeal: true
<         retry:
<           backoff:
<             duration: 10s
<             factor: 2
<             maxDuration: 3m 
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
<h3>4: Production changes from c992601e to d5b91a2f on Mon Jun 3 18:18:48 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 68432c50..0df270fa 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-c992601e/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
800a801
>   - delete
1456c1457
<         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
1547c1548
<             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
./commit-c992601e/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
800a801
>   - delete
1456c1457
<         image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
1547c1548
<             image: quay.io/redhat-appstudio/integration-service:6ebd87075fe3e22640ba5f86b4dcfdf412394109
---
>             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49 
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
<h3>4: Staging changes from c992601e to d5b91a2f on Mon Jun 3 18:18:48 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 68432c50..0df270fa 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
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
<h3>4: Development changes from c992601e to d5b91a2f on Mon Jun 3 18:18:48 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 68432c50..0df270fa 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=d00547f344dcbc938efd6715ef93a55a121c0d49
+- https://github.com/konflux-ci/integration-service/config/default?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: d00547f344dcbc938efd6715ef93a55a121c0d49
+  newTag: 6ebd87075fe3e22640ba5f86b4dcfdf412394109
 
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
```
 
</details> 
<br> 


</div>
