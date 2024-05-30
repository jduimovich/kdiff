# kustomize changes tracked by commits 
### This file generated at Thu May 30 04:03:54 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 642622dc to 32b5691d on Thu May 30 03:55:15 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a945dd52..cb737ecf 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=e6a24407844cac38b16df363fe2bdf5e23902646
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=e6a24407844cac38b16df363fe2bdf5e23902646
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
+  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
+  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index ceb41a1a..b49ca1d4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -50,7 +50,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 7919567d..336f52af 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-642622dc/production/components/multi-platform-controller/production/kustomize.out.yaml
172c172
<   dynamic.linux-root-amd64.instance-type: m5.2xlarge
---
>   dynamic.linux-root-amd64.instance-type: m5.large
294c294
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:e6a24407844cac38b16df363fe2bdf5e23902646
336c336
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:e6a24407844cac38b16df363fe2bdf5e23902646 
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
<h3>1: Staging changes from 642622dc to 32b5691d on Thu May 30 03:55:15 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a945dd52..cb737ecf 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=e6a24407844cac38b16df363fe2bdf5e23902646
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=e6a24407844cac38b16df363fe2bdf5e23902646
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
+  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
+  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index ceb41a1a..b49ca1d4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -50,7 +50,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 7919567d..336f52af 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-642622dc/staging/components/multi-platform-controller/staging/kustomize.out.yaml
172c172
<   dynamic.linux-root-amd64.instance-type: m5.2xlarge
---
>   dynamic.linux-root-amd64.instance-type: m5.large
284c284
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:e6a24407844cac38b16df363fe2bdf5e23902646
326c326
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:e6a24407844cac38b16df363fe2bdf5e23902646 
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
<h3>1: Development changes from 642622dc to 32b5691d on Thu May 30 03:55:15 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index a945dd52..cb737ecf 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=e6a24407844cac38b16df363fe2bdf5e23902646
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=e6a24407844cac38b16df363fe2bdf5e23902646
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
+  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
+  newTag: ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index ceb41a1a..b49ca1d4 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -50,7 +50,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-prod-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 7919567d..336f52af 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -52,7 +52,7 @@ data:
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
   dynamic.linux-root-amd64.ami: ami-026ebd4cfe2c043b2
-  dynamic.linux-root-amd64.instance-type: m5.large
+  dynamic.linux-root-amd64.instance-type: m5.2xlarge
   dynamic.linux-root-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-root-amd64.aws-secret: aws-account
   dynamic.linux-root-amd64.ssh-secret: aws-ssh-key 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-642622dc/development/components/multi-platform-controller/development/kustomize.out.yaml
220c220
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:e6a24407844cac38b16df363fe2bdf5e23902646
262c262
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:ebbede04bd89fc9fdcc27cfd7f678417ebe24a7b
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:e6a24407844cac38b16df363fe2bdf5e23902646 
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
<h3>2: Production changes from 83fa965d to 642622dc on Wed May 29 22:07:58 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index ac4640bf..a945dd52 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=e6a24407844cac38b16df363fe2bdf5e23902646
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=e6a24407844cac38b16df363fe2bdf5e23902646
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
+  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
+  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-83fa965d/production/components/multi-platform-controller/production/kustomize.out.yaml
294c294
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:e6a24407844cac38b16df363fe2bdf5e23902646
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:8a46fa41e0d666373d0113af757f4fb377d063d1
336c336
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:e6a24407844cac38b16df363fe2bdf5e23902646
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:8a46fa41e0d666373d0113af757f4fb377d063d1 
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
<h3>2: Staging changes from 83fa965d to 642622dc on Wed May 29 22:07:58 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index ac4640bf..a945dd52 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=e6a24407844cac38b16df363fe2bdf5e23902646
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=e6a24407844cac38b16df363fe2bdf5e23902646
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
+  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
+  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-83fa965d/staging/components/multi-platform-controller/staging/kustomize.out.yaml
284c284
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:e6a24407844cac38b16df363fe2bdf5e23902646
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:8a46fa41e0d666373d0113af757f4fb377d063d1
326c326
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:e6a24407844cac38b16df363fe2bdf5e23902646
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:8a46fa41e0d666373d0113af757f4fb377d063d1 
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
<h3>2: Development changes from 83fa965d to 642622dc on Wed May 29 22:07:58 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index ac4640bf..a945dd52 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=8a46fa41e0d666373d0113af757f4fb377d063d1
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=e6a24407844cac38b16df363fe2bdf5e23902646
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=e6a24407844cac38b16df363fe2bdf5e23902646
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
+  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 8a46fa41e0d666373d0113af757f4fb377d063d1
+  newTag: e6a24407844cac38b16df363fe2bdf5e23902646
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-83fa965d/development/components/multi-platform-controller/development/kustomize.out.yaml
220c220
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:e6a24407844cac38b16df363fe2bdf5e23902646
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:8a46fa41e0d666373d0113af757f4fb377d063d1
262c262
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:e6a24407844cac38b16df363fe2bdf5e23902646
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:8a46fa41e0d666373d0113af757f4fb377d063d1 
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
<h3>3: Production changes from 5da4e44e to 83fa965d on Wed May 29 21:23:32 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 7911c977..ceb41a1a 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -45,6 +45,7 @@ data:
   dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -57,6 +58,7 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index f16d97be..7919567d 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -47,6 +47,7 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.subnet-id: subnet-030738beb81d3863a
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -59,6 +60,7 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-030738beb81d3863a
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5da4e44e/production/components/multi-platform-controller/production/kustomize.out.yaml
171d170
<   dynamic.linux-root-amd64.disk: "200"
183d181
<   dynamic.linux-root-arm64.disk: "200" 
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
<h3>3: Staging changes from 5da4e44e to 83fa965d on Wed May 29 21:23:32 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 7911c977..ceb41a1a 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -45,6 +45,7 @@ data:
   dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -57,6 +58,7 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index f16d97be..7919567d 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -47,6 +47,7 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.subnet-id: subnet-030738beb81d3863a
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -59,6 +60,7 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-030738beb81d3863a
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5da4e44e/staging/components/multi-platform-controller/staging/kustomize.out.yaml
171d170
<   dynamic.linux-root-amd64.disk: "200"
183d181
<   dynamic.linux-root-arm64.disk: "200" 
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
<h3>3: Development changes from 5da4e44e to 83fa965d on Wed May 29 21:23:32 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index 7911c977..ceb41a1a 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -45,6 +45,7 @@ data:
   dynamic.linux-root-arm64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -57,6 +58,7 @@ data:
   dynamic.linux-root-amd64.subnet-id: subnet-0c39ff75f819abfc5
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index f16d97be..7919567d 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -47,6 +47,7 @@ data:
   dynamic.linux-root-arm64.max-instances: "10"
   dynamic.linux-root-arm64.subnet-id: subnet-030738beb81d3863a
   dynamic.linux-root-arm64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-arm64.disk: "200"
 
   dynamic.linux-root-amd64.type: aws
   dynamic.linux-root-amd64.region: us-east-1
@@ -59,6 +60,7 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-030738beb81d3863a
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+  dynamic.linux-root-amd64.disk: "200"
 
   host.ppc1.address: "150.240.147.198"
   host.ppc1.platform: "linux/ppc64le" 
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
<h3>4: Production changes from b304aee7 to 5da4e44e on Wed May 29 18:40:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index e1dd8c86..3431d104 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
+  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from b304aee7 to 5da4e44e on Wed May 29 18:40:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index e1dd8c86..3431d104 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
+  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b304aee7/staging/components/ci-helper-app/staging/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
---
>         image: quay.io/konflux-ci/ci-helper-app:31701cac48ccc9cf599a788ee08634cfa79eb0cd 
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
<h3>4: Development changes from b304aee7 to 5da4e44e on Wed May 29 18:40:43 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/ci-helper-app/base/kustomization.yaml b/components/ci-helper-app/base/kustomization.yaml
index e1dd8c86..3431d104 100644
--- a/components/ci-helper-app/base/kustomization.yaml
+++ b/components/ci-helper-app/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 
 resources:
 - rbac
-- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=31701cac48ccc9cf599a788ee08634cfa79eb0cd
+- https://github.com/konflux-ci/ci-helper-app/deploy/base?ref=3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 
 images:
 - name: quay.io/konflux-ci/ci-helper-app
   newName: quay.io/konflux-ci/ci-helper-app
-  newTag: 31701cac48ccc9cf599a788ee08634cfa79eb0cd
+  newTag: 3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
 
 namespace: ci-helper-app
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-b304aee7/development/components/ci-helper-app/development/kustomize.out.yaml
88c88
<         image: quay.io/konflux-ci/ci-helper-app:3d5effdd4bde8b319a653b0e39a18f324b7c7c4c
---
>         image: quay.io/konflux-ci/ci-helper-app:31701cac48ccc9cf599a788ee08634cfa79eb0cd 
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
