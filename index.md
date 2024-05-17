# kustomize changes tracked by commits 
### This file generated at Fri May 17 08:03:47 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 04f41ba2 to ff067139 on Fri May 17 07:16:12 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 491c9783..4614123a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1e40facc..7e9d47aa 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -17,7 +17,8 @@ data:
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
@@ -29,7 +30,8 @@ data:
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-04f41ba2/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e 
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
<h3>1: Staging changes from 04f41ba2 to ff067139 on Fri May 17 07:16:12 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 491c9783..4614123a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1e40facc..7e9d47aa 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -17,7 +17,8 @@ data:
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
@@ -29,7 +30,8 @@ data:
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-04f41ba2/staging/components/multi-platform-controller/staging/kustomize.out.yaml
144c144
<   dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
---
>   dynamic.linux-amd64.security-group: multi-arch-build-sg
155c155
<   dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
---
>   dynamic.linux-arm64.security-group: multi-arch-build-sg
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
293c293
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e 
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
<h3>1: Development changes from 04f41ba2 to ff067139 on Fri May 17 07:16:12 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 491c9783..4614123a 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=bd110399bbd6228af7248a0c4f0d869831a06f3e
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: bd110399bbd6228af7248a0c4f0d869831a06f3e
+  newTag: 98f8ce3363d1372c298a3949cc3b0fc6d3949f71
 
 namespace: multi-platform-controller
 
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index 1e40facc..7e9d47aa 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -17,7 +17,8 @@ data:
   dynamic.linux-arm64.key-name: konflux-stage-ext-mab01
   dynamic.linux-arm64.aws-secret: aws-account
   dynamic.linux-arm64.ssh-secret: aws-ssh-key
-  dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-arm64.security-group: "multi-arch-build-sg"
+  dynamic.linux-arm64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-arm64.max-instances: "10"
   dynamic.linux-arm64.spot-price: "0.010"
   dynamic.linux-arm64.subnet-id: subnet-030738beb81d3863a
@@ -29,7 +30,8 @@ data:
   dynamic.linux-amd64.key-name: konflux-stage-ext-mab01
   dynamic.linux-amd64.aws-secret: aws-account
   dynamic.linux-amd64.ssh-secret: aws-ssh-key
-  dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  # dynamic.linux-amd64.security-group: "multi-arch-build-sg"
+  dynamic.linux-amd64.security-group-id: sg-05bc8dd0b52158567
   dynamic.linux-amd64.max-instances: "10"
   dynamic.linux-amd64.spot-price: "0.050"
   dynamic.linux-amd64.subnet-id: subnet-030738beb81d3863a 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-04f41ba2/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:bd110399bbd6228af7248a0c4f0d869831a06f3e
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:98f8ce3363d1372c298a3949cc3b0fc6d3949f71
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:bd110399bbd6228af7248a0c4f0d869831a06f3e 
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
<h3>2: Production changes from 5276b56f to 04f41ba2 on Fri May 17 03:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9e95d91c..5eb9a3bd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dd00cd44..26e4154f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index e8f744ab..f49f1fbf 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f2d29e3f..90ecb33f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-5276b56f/production/components/has/production/kustomize.out.yaml
818c818
<         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
---
>         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
978d977
<     - components/status 
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
<h3>2: Staging changes from 5276b56f to 04f41ba2 on Fri May 17 03:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9e95d91c..5eb9a3bd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dd00cd44..26e4154f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index e8f744ab..f49f1fbf 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f2d29e3f..90ecb33f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-5276b56f/staging/components/has/staging/kustomize.out.yaml
845c845
<         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
---
>         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
1005d1004
<     - components/status 
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
<h3>2: Development changes from 5276b56f to 04f41ba2 on Fri May 17 03:47:10 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index 9e95d91c..5eb9a3bd 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dd00cd44..26e4154f 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: 55667ac42aaf29adff17e3563328f70429dc2ba0
+    newTag: bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index e8f744ab..f49f1fbf 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index f2d29e3f..90ecb33f 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=55667ac42aaf29adff17e3563328f70429dc2ba0
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-5276b56f/development/components/has/development/kustomize.out.yaml
777c777
<         image: quay.io/redhat-appstudio/application-service:bfa086dbc8ec3e5b60d2ea85320d0b4b00031857
---
>         image: quay.io/redhat-appstudio/application-service:55667ac42aaf29adff17e3563328f70429dc2ba0
897d896
<     - components/status 
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
<h3>3: Production changes from 2cb2a6c7 to 5276b56f on Thu May 16 20:40:22 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ee2d63df..ad3e5db4 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- network-policy.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
new file mode 100644
index 00000000..1d74af43
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
@@ -0,0 +1,18 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 92650350..3d8e583b 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -1,13 +1,13 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: SpaceProvisionerConfig
 metadata:
-  name: member-stone-stage-p01.apys.p3.openshiftapps.com
+  name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
 spec:
-  toolchainCluster: member-stone-stage-p01.apys.p3.openshiftapps.com
+  toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
<h3>3: Staging changes from 2cb2a6c7 to 5276b56f on Thu May 16 20:40:22 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ee2d63df..ad3e5db4 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- network-policy.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
new file mode 100644
index 00000000..1d74af43
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
@@ -0,0 +1,18 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 92650350..3d8e583b 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -1,13 +1,13 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: SpaceProvisionerConfig
 metadata:
-  name: member-stone-stage-p01.apys.p3.openshiftapps.com
+  name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
 spec:
-  toolchainCluster: member-stone-stage-p01.apys.p3.openshiftapps.com
+  toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
<h3>3: Development changes from 2cb2a6c7 to 5276b56f on Thu May 16 20:40:22 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ee2d63df..ad3e5db4 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- network-policy.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
new file mode 100644
index 00000000..1d74af43
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/network-policy.yaml
@@ -0,0 +1,18 @@
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-traffic-from-ui-proxy-and-router
+  namespace: toolchain-host-operator
+spec:
+  podSelector: {}
+  ingress:
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            policy-group.network.openshift.io/ingress: ""
+    - from:
+      - namespaceSelector:
+          matchLabels:
+            kubernetes.io/metadata.name: rhtap-ui
+  policyTypes:
+    - Ingress
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 92650350..3d8e583b 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -1,13 +1,13 @@
 apiVersion: toolchain.dev.openshift.com/v1alpha1
 kind: SpaceProvisionerConfig
 metadata:
-  name: member-stone-stage-p01.apys.p3.openshiftapps.com
+  name: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   namespace: toolchain-host-operator
 spec:
-  toolchainCluster: member-stone-stage-p01.apys.p3.openshiftapps.com
+  toolchainCluster: member-stone-stage-p01.hpmt.p1.openshiftapps.com
   enabled: true
   capacityThresholds:
     maxNumberOfSpaces: 1500
     maxMemoryUtilizationPercent: 90
   placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/tenant
\ No newline at end of file
+  - cluster-role.toolchain.dev.openshift.com/tenant 
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
<h3>4: Production changes from d75acea1 to 2cb2a6c7 on Thu May 16 19:48:08 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index b36d2c5e..31c1fdfa 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/default?ref=7c81a1183c8df515993765a4dd18852823d88a1b
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7c81a1183c8df515993765a4dd18852823d88a1b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+  newTag: 7c81a1183c8df515993765a4dd18852823d88a1b
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 59719c28..8879e7a8 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/default?ref=7c81a1183c8df515993765a4dd18852823d88a1b
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7c81a1183c8df515993765a4dd18852823d88a1b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+  newTag: 7c81a1183c8df515993765a4dd18852823d88a1b
 
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
<h3>4: Staging changes from d75acea1 to 2cb2a6c7 on Thu May 16 19:48:08 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index b36d2c5e..31c1fdfa 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/default?ref=7c81a1183c8df515993765a4dd18852823d88a1b
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7c81a1183c8df515993765a4dd18852823d88a1b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+  newTag: 7c81a1183c8df515993765a4dd18852823d88a1b
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 59719c28..8879e7a8 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/default?ref=7c81a1183c8df515993765a4dd18852823d88a1b
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7c81a1183c8df515993765a4dd18852823d88a1b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+  newTag: 7c81a1183c8df515993765a4dd18852823d88a1b
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-d75acea1/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1449c1449
<         image: quay.io/redhat-appstudio/integration-service:7c81a1183c8df515993765a4dd18852823d88a1b
---
>         image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f
1540c1540
<             image: quay.io/redhat-appstudio/integration-service:7c81a1183c8df515993765a4dd18852823d88a1b
---
>             image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f 
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
<h3>4: Development changes from d75acea1 to 2cb2a6c7 on Thu May 16 19:48:08 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index b36d2c5e..31c1fdfa 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/default?ref=7c81a1183c8df515993765a4dd18852823d88a1b
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7c81a1183c8df515993765a4dd18852823d88a1b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+  newTag: 7c81a1183c8df515993765a4dd18852823d88a1b
 
 configMapGenerator:
 - name: console-url
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 59719c28..8879e7a8 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+- https://github.com/konflux-ci/integration-service/config/default?ref=7c81a1183c8df515993765a4dd18852823d88a1b
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=7c81a1183c8df515993765a4dd18852823d88a1b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 9a688fec6f074efcf8f83b41a0a74e53e5496b8f
+  newTag: 7c81a1183c8df515993765a4dd18852823d88a1b
 
 configMapGenerator:
 - name: console-url 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-d75acea1/development/components/integration/development/kustomize.out.yaml
1447c1447
<         image: quay.io/redhat-appstudio/integration-service:7c81a1183c8df515993765a4dd18852823d88a1b
---
>         image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f
1541c1541
<             image: quay.io/redhat-appstudio/integration-service:7c81a1183c8df515993765a4dd18852823d88a1b
---
>             image: quay.io/redhat-appstudio/integration-service:9a688fec6f074efcf8f83b41a0a74e53e5496b8f 
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
