# kustomize changes tracked by commits 
### This file generated at Thu May 23 16:06:06 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e42b7a4c to 2a6b6f52 on Thu May 23 14:17:10 2024 </h3>  
 
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
<h3>1: Staging changes from e42b7a4c to 2a6b6f52 on Thu May 23 14:17:10 2024 </h3>  
 
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
<h3>1: Development changes from e42b7a4c to 2a6b6f52 on Thu May 23 14:17:10 2024 </h3>  
 
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
<h3>2: Production changes from 949fceb8 to e42b7a4c on Thu May 23 12:12:30 2024 </h3>  
 
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
<h3>2: Staging changes from 949fceb8 to e42b7a4c on Thu May 23 12:12:30 2024 </h3>  
 
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
<h3>2: Development changes from 949fceb8 to e42b7a4c on Thu May 23 12:12:30 2024 </h3>  
 
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

<div>
<h3>3: Production changes from 98c4ac15 to 949fceb8 on Thu May 23 10:25:27 2024 </h3>  
 
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
<h3>3: Staging changes from 98c4ac15 to 949fceb8 on Thu May 23 10:25:27 2024 </h3>  
 
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
<h3>3: Development changes from 98c4ac15 to 949fceb8 on Thu May 23 10:25:27 2024 </h3>  
 
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
<h3>4: Production changes from 69e8d790 to 98c4ac15 on Thu May 23 05:51:37 2024 </h3>  
 
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
<h3>4: Staging changes from 69e8d790 to 98c4ac15 on Thu May 23 05:51:37 2024 </h3>  
 
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
<h3>4: Development changes from 69e8d790 to 98c4ac15 on Thu May 23 05:51:37 2024 </h3>  
 
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
