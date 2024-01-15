# kustomize changes tracked by commits 
### This file generated at Mon Jan 15 08:03:22 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from db0e4bef to ebfe0eaa on Mon Jan 15 07:41:31 2024 </h3>  
 
<details> 
<summary>Git Diff (92 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index d846d785..a1606a9e 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -6,3 +6,9 @@ resources:
   - ../../base/ui
 patchesStrategicMerge:
   - delete-applications.yaml
+patches:
+  - path: staging-downstream-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
diff --git a/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml b/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml
new file mode 100644
index 00000000..ba8e5721
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: staging-downstream
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
new file mode 100644
index 00000000..f8e17704
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -0,0 +1,22 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-arch-controller-ssh-key-internal
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
new file mode 100644
index 00000000..0a641bf6
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -0,0 +1,20 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+
+  host.ip-10-29-64-251.address: "10.29.64.251"
+  host.ip-10-29-64-251.platform: "linux/amd64"
+  host.ip-10-29-64-251.user: "ec2-user"
+  host.ip-10-29-64-251.secret: "aws-ssh-key"
+  host.ip-10-29-64-251.concurrency: "4"
+
+  host.ip-10-29-64-249.address: "10.29.64.249"
+  host.ip-10-29-64-249.platform: "linux/arm64"
+  host.ip-10-29-64-249.user: "ec2-user"
+  host.ip-10-29-64-249.secret: "aws-ssh-key"
+  host.ip-10-29-64-249.concurrency: "4"
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..edfa9ff5
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- host-config.yaml
+- external-secrets.yaml
+
+namespace: multi-platform-controller 
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
<h3>1: Staging changes from db0e4bef to ebfe0eaa on Mon Jan 15 07:41:31 2024 </h3>  
 
<details> 
<summary>Git Diff (92 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index d846d785..a1606a9e 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -6,3 +6,9 @@ resources:
   - ../../base/ui
 patchesStrategicMerge:
   - delete-applications.yaml
+patches:
+  - path: staging-downstream-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
diff --git a/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml b/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml
new file mode 100644
index 00000000..ba8e5721
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: staging-downstream
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
new file mode 100644
index 00000000..f8e17704
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -0,0 +1,22 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-arch-controller-ssh-key-internal
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
new file mode 100644
index 00000000..0a641bf6
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -0,0 +1,20 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+
+  host.ip-10-29-64-251.address: "10.29.64.251"
+  host.ip-10-29-64-251.platform: "linux/amd64"
+  host.ip-10-29-64-251.user: "ec2-user"
+  host.ip-10-29-64-251.secret: "aws-ssh-key"
+  host.ip-10-29-64-251.concurrency: "4"
+
+  host.ip-10-29-64-249.address: "10.29.64.249"
+  host.ip-10-29-64-249.platform: "linux/arm64"
+  host.ip-10-29-64-249.user: "ec2-user"
+  host.ip-10-29-64-249.secret: "aws-ssh-key"
+  host.ip-10-29-64-249.concurrency: "4"
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..edfa9ff5
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- host-config.yaml
+- external-secrets.yaml
+
+namespace: multi-platform-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from db0e4bef to ebfe0eaa on Mon Jan 15 07:41:31 2024 </h3>  
 
<details> 
<summary>Git Diff (92 lines)</summary>  

``` 
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index d846d785..a1606a9e 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -6,3 +6,9 @@ resources:
   - ../../base/ui
 patchesStrategicMerge:
   - delete-applications.yaml
+patches:
+  - path: staging-downstream-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: multi-platform-controller
diff --git a/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml b/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml
new file mode 100644
index 00000000..ba8e5721
--- /dev/null
+++ b/argo-cd-apps/overlays/staging-downstream/staging-downstream-overlay-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/generators/0/merge/generators/0/clusters/values/environment
+  value: staging-downstream
diff --git a/components/multi-platform-controller/staging-downstream/external-secrets.yaml b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
new file mode 100644
index 00000000..f8e17704
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/external-secrets.yaml
@@ -0,0 +1,22 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: aws-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: staging/build/multi-arch-controller-ssh-key-internal
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: aws-ssh-key
diff --git a/components/multi-platform-controller/staging-downstream/host-config.yaml b/components/multi-platform-controller/staging-downstream/host-config.yaml
new file mode 100644
index 00000000..0a641bf6
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/host-config.yaml
@@ -0,0 +1,20 @@
+apiVersion: v1
+kind: ConfigMap
+metadata:
+  labels:
+    build.appstudio.redhat.com/multi-platform-config: hosts
+  name: host-config
+  namespace: multi-platform-controller
+data:
+
+  host.ip-10-29-64-251.address: "10.29.64.251"
+  host.ip-10-29-64-251.platform: "linux/amd64"
+  host.ip-10-29-64-251.user: "ec2-user"
+  host.ip-10-29-64-251.secret: "aws-ssh-key"
+  host.ip-10-29-64-251.concurrency: "4"
+
+  host.ip-10-29-64-249.address: "10.29.64.249"
+  host.ip-10-29-64-249.platform: "linux/arm64"
+  host.ip-10-29-64-249.user: "ec2-user"
+  host.ip-10-29-64-249.secret: "aws-ssh-key"
+  host.ip-10-29-64-249.concurrency: "4"
diff --git a/components/multi-platform-controller/staging-downstream/kustomization.yaml b/components/multi-platform-controller/staging-downstream/kustomization.yaml
new file mode 100644
index 00000000..edfa9ff5
--- /dev/null
+++ b/components/multi-platform-controller/staging-downstream/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- host-config.yaml
+- external-secrets.yaml
+
+namespace: multi-platform-controller 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 756cc2d7 to db0e4bef on Sun Jan 14 15:52:37 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index 2c13e66b..e0be8861 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/sprayproxy/config?ref=8a03dffd427c35646ba6aca73ee17ec68fd356c2
+  - https://github.com/redhat-appstudio/sprayproxy/config?ref=c6f8bf26007c140d51326760e16eb52ae5072e3b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/redhat-appstudio/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 8a03dffd427c35646ba6aca73ee17ec68fd356c2
+    newTag: c6f8bf26007c140d51326760e16eb52ae5072e3b
 
 patches:
   - path: change-backends.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-756cc2d7/production/components/sprayproxy/production/kustomize.out.yaml
184c184
<         image: quay.io/redhat-appstudio/sprayproxy:c6f8bf26007c140d51326760e16eb52ae5072e3b
---
>         image: quay.io/redhat-appstudio/sprayproxy:8a03dffd427c35646ba6aca73ee17ec68fd356c2 
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
<h3>2: Staging changes from 756cc2d7 to db0e4bef on Sun Jan 14 15:52:37 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index 2c13e66b..e0be8861 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/sprayproxy/config?ref=8a03dffd427c35646ba6aca73ee17ec68fd356c2
+  - https://github.com/redhat-appstudio/sprayproxy/config?ref=c6f8bf26007c140d51326760e16eb52ae5072e3b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/redhat-appstudio/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 8a03dffd427c35646ba6aca73ee17ec68fd356c2
+    newTag: c6f8bf26007c140d51326760e16eb52ae5072e3b
 
 patches:
   - path: change-backends.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 756cc2d7 to db0e4bef on Sun Jan 14 15:52:37 2024 </h3>  
 
<details> 
<summary>Git Diff (20 lines)</summary>  

``` 
diff --git a/components/sprayproxy/production/kustomization.yaml b/components/sprayproxy/production/kustomization.yaml
index 2c13e66b..e0be8861 100644
--- a/components/sprayproxy/production/kustomization.yaml
+++ b/components/sprayproxy/production/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/sprayproxy/config?ref=8a03dffd427c35646ba6aca73ee17ec68fd356c2
+  - https://github.com/redhat-appstudio/sprayproxy/config?ref=c6f8bf26007c140d51326760e16eb52ae5072e3b
   - pipelines-as-code-secret.yaml
 
 images:
   - name: ko://github.com/redhat-appstudio/sprayproxy
     newName: quay.io/redhat-appstudio/sprayproxy
-    newTag: 8a03dffd427c35646ba6aca73ee17ec68fd356c2
+    newTag: c6f8bf26007c140d51326760e16eb52ae5072e3b
 
 patches:
   - path: change-backends.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 19a845a4 to 756cc2d7 on Fri Jan 12 21:39:56 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/development/kustomization.yaml b/components/monitoring/logging/development/kustomization.yaml
index 4ea1bcca..e609fb24 100644
--- a/components/monitoring/logging/development/kustomization.yaml
+++ b/components/monitoring/logging/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+resources: [] 
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
<h3>3: Staging changes from 19a845a4 to 756cc2d7 on Fri Jan 12 21:39:56 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/development/kustomization.yaml b/components/monitoring/logging/development/kustomization.yaml
index 4ea1bcca..e609fb24 100644
--- a/components/monitoring/logging/development/kustomization.yaml
+++ b/components/monitoring/logging/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+resources: [] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 19a845a4 to 756cc2d7 on Fri Jan 12 21:39:56 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/development/kustomization.yaml b/components/monitoring/logging/development/kustomization.yaml
index 4ea1bcca..e609fb24 100644
--- a/components/monitoring/logging/development/kustomization.yaml
+++ b/components/monitoring/logging/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+resources: [] 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from cd9c293d to 19a845a4 on Fri Jan 12 19:38:26 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 71faabe4..41788c6d 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   # value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 4620d416..94cf33e1 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   #value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f1ac2121..acd04240 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4e1c607..6af9cb18 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eaf4a3ce..9de100b3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift: 
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
<h3>4: Staging changes from cd9c293d to 19a845a4 on Fri Jan 12 19:38:26 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 71faabe4..41788c6d 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   # value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 4620d416..94cf33e1 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   #value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f1ac2121..acd04240 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4e1c607..6af9cb18 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eaf4a3ce..9de100b3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-cd9c293d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1876c1876
<       buckets: 4
---
>       buckets: 1
1880c1880
<       replicas: 2
---
>       replicas: 1
./commit-cd9c293d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1876c1876
<       buckets: 4
---
>       buckets: 1
1880c1880
<       replicas: 2
---
>       replicas: 1
./commit-cd9c293d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1876c1876
<       buckets: 4
---
>       buckets: 1
1880c1880
<       replicas: 2
---
>       replicas: 1 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from cd9c293d to 19a845a4 on Fri Jan 12 19:38:26 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 71faabe4..41788c6d 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   # value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 4620d416..94cf33e1 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   #value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f1ac2121..acd04240 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4e1c607..6af9cb18 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eaf4a3ce..9de100b3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-cd9c293d/development/components/pipeline-service/development/kustomize.out.yaml
2008c2008
<       buckets: 4
---
>       buckets: 1
2012c2012
<       replicas: 2
---
>       replicas: 1 
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
```
 
</details> 
<br> 


</div>
