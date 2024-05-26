# kustomize changes tracked by commits 
### This file generated at Sun May 26 08:03:46 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from cc46a725 to 8fd7bf7f on Sun May 26 07:25:54 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 697a7ab3..7e66d891 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target: 
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
<h3>1: Staging changes from cc46a725 to 8fd7bf7f on Sun May 26 07:25:54 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 697a7ab3..7e66d891 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target: 
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
<h3>1: Development changes from cc46a725 to 8fd7bf7f on Sun May 26 07:25:54 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
new file mode 100644
index 00000000..3cb9b66d
--- /dev/null
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -0,0 +1,6 @@
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: gitops
+$patch: delete
diff --git a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
index 697a7ab3..7e66d891 100644
--- a/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/kustomization.yaml
@@ -13,6 +13,9 @@ resources:
 
 namespace: konflux-public-production
 
+patchesStrategicMerge:
+  - delete-applications.yaml
+
 patches:
   - path: production-overlay-patch.yaml
     target: 
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
<h3>2: Production changes from 924f9827 to cc46a725 on Fri May 24 15:13:21 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
index c6699add..cffefd66 100644
--- a/components/multi-platform-controller/staging-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -43,3 +43,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-stage-ibm-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-platform-controller/internal-stage-ibm-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-stage-ibm-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-stage-ibm-api-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-platform-controller/internal-stage-ibm-api-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-stage-ibm-api-key
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e2831d22..c32b6964 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x,linux/ppc64le
   instance-tag: rhtap-staging
 
   dynamic.linux-arm64.type: aws
@@ -55,3 +55,28 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-stage-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-ecc81939-f243-41e8-a0bc-a27b6db8ebc3"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-1x4"
+  dynamic.linux-s390x.max-instances: "2"
+
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-ppc64le.key: "konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2" 
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
<h3>2: Staging changes from 924f9827 to cc46a725 on Fri May 24 15:13:21 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
index c6699add..cffefd66 100644
--- a/components/multi-platform-controller/staging-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -43,3 +43,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-stage-ibm-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-platform-controller/internal-stage-ibm-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-stage-ibm-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-stage-ibm-api-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-platform-controller/internal-stage-ibm-api-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-stage-ibm-api-key
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e2831d22..c32b6964 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x,linux/ppc64le
   instance-tag: rhtap-staging
 
   dynamic.linux-arm64.type: aws
@@ -55,3 +55,28 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-stage-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-ecc81939-f243-41e8-a0bc-a27b6db8ebc3"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-1x4"
+  dynamic.linux-s390x.max-instances: "2"
+
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-ppc64le.key: "konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2" 
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
<h3>2: Development changes from 924f9827 to cc46a725 on Fri May 24 15:13:21 2024 </h3>  
 
<details> 
<summary>Git Diff (96 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
index c6699add..cffefd66 100644
--- a/components/multi-platform-controller/staging-downstream/external-secrets.yaml
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -43,3 +43,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-stage-ibm-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-platform-controller/internal-stage-ibm-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-stage-ibm-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: internal-stage-ibm-api-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-platform-controller/internal-stage-ibm-api-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: internal-stage-ibm-api-key
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
index e2831d22..c32b6964 100644
--- a/components/multi-platform-controller/staging-downstream/host-config.yaml
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -7,7 +7,7 @@ metadata:
   namespace: multi-platform-controller
 data:
 
-  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64
+  dynamic-platforms: linux/arm64,linux/amd64,linux-root/arm64,linux-root/amd64,linux/s390x,linux/ppc64le
   instance-tag: rhtap-staging
 
   dynamic.linux-arm64.type: aws
@@ -55,3 +55,28 @@ data:
   dynamic.linux-root-amd64.max-instances: "10"
   dynamic.linux-root-amd64.subnet-id: subnet-07597d1edafa2b9d3
   dynamic.linux-root-amd64.sudo-commands: "/usr/bin/podman"
+
+  dynamic.linux-s390x.type: ibmz
+  dynamic.linux-s390x.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-s390x.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-s390x.key: "internal-stage-key"
+  dynamic.linux-s390x.subnet: "internal-a"
+  dynamic.linux-s390x.image-id: "r014-ecc81939-f243-41e8-a0bc-a27b6db8ebc3"
+  dynamic.linux-s390x.region: "us-east-1"
+  dynamic.linux-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-s390x.profile: "bz2-1x4"
+  dynamic.linux-s390x.max-instances: "2"
+
+  dynamic.linux-ppc64le.type: ibmp
+  dynamic.linux-ppc64le.ssh-secret: "internal-stage-ibm-ssh-key"
+  dynamic.linux-ppc64le.secret: "internal-stage-ibm-api-key"
+  dynamic.linux-ppc64le.key: "konflux-infra"
+  dynamic.linux-ppc64le.image: "RHEL9-SP2"
+  dynamic.linux-ppc64le.crn: "crn:v1:bluemix:public:power-iaas:wdc06:a/5cb0704ee6304413bd0b171372c0fd77:4e9dc638-7a78-4e7c-b432-e83b7010c531::"
+  dynamic.linux-ppc64le.url: "https://us-east.power-iaas.cloud.ibm.com"
+  dynamic.linux-ppc64le.network: "a6d8d6da-c412-4106-9b57-4e25541b2e7f"
+  dynamic.linux-ppc64le.system: "e980"
+  dynamic.linux-ppc64le.cores: "0.25"
+  dynamic.linux-ppc64le.memory: "2"
+  dynamic.linux-ppc64le.max-instances: "2" 
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
<h3>3: Production changes from a65ea944 to 924f9827 on Thu May 23 20:20:24 2024 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a40ad60..71997792 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -13,6 +13,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME=""
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index fdee9558..25f647c8 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 100m
             memory: 20Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+            configMapKeyRef:
+              name: console-name
+              key: CONSOLE_NAME
+              optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 474e109f..984320e7 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -14,6 +14,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME="Red Hat Konflux"
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 745c4630..d21f788a 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 200m
             memory: 600Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+              configMapKeyRef:
+                name: console-name
+                key: CONSOLE_NAME
+                optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/production/stone-prod-p01/console-url-config-patch.json b/components/integration/production/stone-prod-p01/console-url-config-patch.json
index 13515386..30bf84ec 100644
--- a/components/integration/production/stone-prod-p01/console-url-config-patch.json
+++ b/components/integration/production/stone-prod-p01/console-url-config-patch.json
@@ -1,4 +1,9 @@
 [
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_NAME",
+    "value": "Konflux Production Internal"
+  },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index 2f086e27..adb35c7d 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-name
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9b0bee93..46d70d3d 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -14,6 +14,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME="Konflux Staging"
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index fdee9558..3b14f600 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 100m
             memory: 20Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+              configMapKeyRef:
+                name: console-name
+                key: CONSOLE_NAME
+                optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/staging/stone-stage-p01/console-url-config-patch.json b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
index 9340e821..6e78a35d 100644
--- a/components/integration/staging/stone-stage-p01/console-url-config-patch.json
+++ b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
@@ -1,4 +1,9 @@
 [
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_NAME",
+    "value": "Konflux Staging Internal"
+  },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index 2f086e27..adb35c7d 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-name
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-a65ea944/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1300d1299
<   CONSOLE_NAME: Konflux Production Internal
1307c1306
<   name: console-url-tc57tckhc8
---
>   name: console-url-df26hc8c6c
1421,1426d1419
<         - name: CONSOLE_NAME
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_NAME
<               name: console-name
<               optional: true
1431c1424
<               name: console-url-tc57tckhc8
---
>               name: console-url-df26hc8c6c
1437c1430
<               name: console-url-tc57tckhc8
---
>               name: console-url-df26hc8c6c 
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
<h3>3: Staging changes from a65ea944 to 924f9827 on Thu May 23 20:20:24 2024 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a40ad60..71997792 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -13,6 +13,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME=""
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index fdee9558..25f647c8 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 100m
             memory: 20Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+            configMapKeyRef:
+              name: console-name
+              key: CONSOLE_NAME
+              optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 474e109f..984320e7 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -14,6 +14,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME="Red Hat Konflux"
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 745c4630..d21f788a 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 200m
             memory: 600Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+              configMapKeyRef:
+                name: console-name
+                key: CONSOLE_NAME
+                optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/production/stone-prod-p01/console-url-config-patch.json b/components/integration/production/stone-prod-p01/console-url-config-patch.json
index 13515386..30bf84ec 100644
--- a/components/integration/production/stone-prod-p01/console-url-config-patch.json
+++ b/components/integration/production/stone-prod-p01/console-url-config-patch.json
@@ -1,4 +1,9 @@
 [
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_NAME",
+    "value": "Konflux Production Internal"
+  },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index 2f086e27..adb35c7d 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-name
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9b0bee93..46d70d3d 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -14,6 +14,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME="Konflux Staging"
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index fdee9558..3b14f600 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 100m
             memory: 20Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+              configMapKeyRef:
+                name: console-name
+                key: CONSOLE_NAME
+                optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/staging/stone-stage-p01/console-url-config-patch.json b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
index 9340e821..6e78a35d 100644
--- a/components/integration/staging/stone-stage-p01/console-url-config-patch.json
+++ b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
@@ -1,4 +1,9 @@
 [
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_NAME",
+    "value": "Konflux Staging Internal"
+  },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index 2f086e27..adb35c7d 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-name
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-a65ea944/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1300d1299
<   CONSOLE_NAME: Konflux Staging Internal
1307c1306
<   name: console-url-m6fh7c768d
---
>   name: console-url-tkt7bh5md9
1421,1426d1419
<         - name: CONSOLE_NAME
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_NAME
<               name: console-name
<               optional: true
1431c1424
<               name: console-url-m6fh7c768d
---
>               name: console-url-tkt7bh5md9
1437c1430
<               name: console-url-m6fh7c768d
---
>               name: console-url-tkt7bh5md9 
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
<h3>3: Development changes from a65ea944 to 924f9827 on Thu May 23 20:20:24 2024 </h3>  
 
<details> 
<summary>Git Diff (145 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 3a40ad60..71997792 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -13,6 +13,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME=""
     - CONSOLE_URL=""
     - CONSOLE_URL_TASKLOG=""
 - name: pipelinerun-options
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index fdee9558..25f647c8 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 100m
             memory: 20Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+            configMapKeyRef:
+              name: console-name
+              key: CONSOLE_NAME
+              optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 474e109f..984320e7 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -14,6 +14,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME="Red Hat Konflux"
     - CONSOLE_URL="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
diff --git a/components/integration/production/base/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
index 745c4630..d21f788a 100644
--- a/components/integration/production/base/manager_resources_patch.yaml
+++ b/components/integration/production/base/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 200m
             memory: 600Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+              configMapKeyRef:
+                name: console-name
+                key: CONSOLE_NAME
+                optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/production/stone-prod-p01/console-url-config-patch.json b/components/integration/production/stone-prod-p01/console-url-config-patch.json
index 13515386..30bf84ec 100644
--- a/components/integration/production/stone-prod-p01/console-url-config-patch.json
+++ b/components/integration/production/stone-prod-p01/console-url-config-patch.json
@@ -1,4 +1,9 @@
 [
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_NAME",
+    "value": "Konflux Production Internal"
+  },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
index 2f086e27..adb35c7d 100644
--- a/components/integration/production/stone-prod-p01/kustomization.yaml
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-name
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 9b0bee93..46d70d3d 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -14,6 +14,7 @@ images:
 configMapGenerator:
 - name: console-url
   literals:
+    - CONSOLE_NAME="Konflux Staging"
     - CONSOLE_URL="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}"
     - CONSOLE_URL_TASKLOG="https://console.dev.redhat.com/preview/application-pipeline/ns/{{ .Namespace }}/pipelinerun/{{ .PipelineRunName }}/logs/{{ .TaskName }}"
 - name: pipelinerun-options
diff --git a/components/integration/staging/base/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
index fdee9558..3b14f600 100644
--- a/components/integration/staging/base/manager_resources_patch.yaml
+++ b/components/integration/staging/base/manager_resources_patch.yaml
@@ -16,6 +16,12 @@ spec:
             cpu: 100m
             memory: 20Mi
         env:
+        - name: CONSOLE_NAME
+          valueFrom:
+              configMapKeyRef:
+                name: console-name
+                key: CONSOLE_NAME
+                optional: true
         - name: CONSOLE_URL
           valueFrom:
               configMapKeyRef:
diff --git a/components/integration/staging/stone-stage-p01/console-url-config-patch.json b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
index 9340e821..6e78a35d 100644
--- a/components/integration/staging/stone-stage-p01/console-url-config-patch.json
+++ b/components/integration/staging/stone-stage-p01/console-url-config-patch.json
@@ -1,4 +1,9 @@
 [
+  {
+    "op": "replace",
+    "path": "/data/CONSOLE_NAME",
+    "value": "Konflux Staging Internal"
+  },
   {
     "op": "replace",
     "path": "/data/CONSOLE_URL",
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
index 2f086e27..adb35c7d 100644
--- a/components/integration/staging/stone-stage-p01/kustomization.yaml
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -9,6 +9,10 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - path: console-url-config-patch.json
+    target:
+      kind: ConfigMap
+      name: console-name
   - path: console-url-config-patch.json
     target:
       kind: ConfigMap 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-a65ea944/development/components/integration/development/kustomize.out.yaml
1300d1299
<   CONSOLE_NAME: ""
1305c1304
<   name: console-url-b6926b66g6
---
>   name: console-url-cc96c44t2h
1419,1424d1417
<         - name: CONSOLE_NAME
<           valueFrom:
<             configMapKeyRef:
<               key: CONSOLE_NAME
<               name: console-name
<               optional: true
1429c1422
<               name: console-url-b6926b66g6
---
>               name: console-url-cc96c44t2h
1435c1428
<               name: console-url-b6926b66g6
---
>               name: console-url-cc96c44t2h 
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
<h3>4: Production changes from 41bbdd62 to a65ea944 on Thu May 23 18:16:09 2024 </h3>  
 
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
<h3>4: Staging changes from 41bbdd62 to a65ea944 on Thu May 23 18:16:09 2024 </h3>  
 
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
<h3>4: Development changes from 41bbdd62 to a65ea944 on Thu May 23 18:16:09 2024 </h3>  
 
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
