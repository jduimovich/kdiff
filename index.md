# kustomize changes tracked by commits 
### This file generated at Tue Sep 10 12:08:05 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 99fc1232 to aba75824 on Tue Sep 10 11:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6b8517a7
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-stage-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/qe/konflux-e2e-secrets/registry-stage-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-stage-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}" 
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
<h3>1: Staging changes from 99fc1232 to aba75824 on Tue Sep 10 11:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6b8517a7
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-stage-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/qe/konflux-e2e-secrets/registry-stage-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-stage-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 99fc1232 to aba75824 on Tue Sep 10 11:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
new file mode 100644
index 00000000..6b8517a7
--- /dev/null
+++ b/components/mintmaker/base/external-secrets/registry-stage-redhat-io-pull-secret.yaml
@@ -0,0 +1,24 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: registry-stage-redhat-io-pull-secret
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/qe/konflux-e2e-secrets/registry-stage-redhat-io-pull-secret
+  refreshInterval: 15m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: registry-stage-redhat-io-pull-secret
+    template:
+      engineVersion: v2
+      type: kubernetes.io/dockerconfigjson
+      data:
+        .dockerconfigjson: "{{ .config }}" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from f0b7e9d2 to 99fc1232 on Tue Sep 10 10:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6bb51b1e..e9556e32 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 02a6ee72..23a08c20 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
+      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-f0b7e9d2/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
332c332
<   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
---
>   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f 
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
<h3>2: Staging changes from f0b7e9d2 to 99fc1232 on Tue Sep 10 10:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6bb51b1e..e9556e32 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 02a6ee72..23a08c20 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
+      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-f0b7e9d2/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
332c332
<   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
---
>   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from f0b7e9d2 to 99fc1232 on Tue Sep 10 10:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 6bb51b1e..e9556e32 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 02a6ee72..23a08c20 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=07bd0594d01811dc6573a87b60fa48d989c8523c
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2efb0f20730eae62eeff1c639c71875f48da974e
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=014a488a431c8d2a18cee994c8a586011f2bdb77
+      - verify_ec_task_git_revision=99e828afb24cfdb38800ff4b4fe8769510c67926
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-f0b7e9d2/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:99e828afb24cfdb38800ff4b4fe8769510c67926@sha256:5dc4dcc194bf640ea02b415a8ffebefc1e44d304ec50e23f02a23e869c8d21e2
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:014a488a431c8d2a18cee994c8a586011f2bdb77@sha256:d51a78d353f15c713052a6cd1a1c9aa5896531d7e4b6f3ffd4a9dd2d02f7b3f0
332c332
<   verify_ec_task_git_revision: 99e828afb24cfdb38800ff4b4fe8769510c67926
---
>   verify_ec_task_git_revision: 014a488a431c8d2a18cee994c8a586011f2bdb77
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-f80804c@sha256:1b3f60d3a16b6c48e975dfb4abbc3489b211f9c5b0e164b430314319339c8054
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fd5bb41@sha256:e9946127735c06f0b19282f2551c713416c1c60188d86e948f6db73a4f3b8afd
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-efe20ef@sha256:be8a8f9fdc6760c1dbed8f3726a69e2df6c097047969ebad2789e80879173c0f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from eba1c611 to f0b7e9d2 on Tue Sep 10 08:17:54 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/notification-controller/production/external-secret-path.yaml b/components/notification-controller/production/external-secret-path.yaml
new file mode 100644
index 00000000..3a57cce7
--- /dev/null
+++ b/components/notification-controller/production/external-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipelinerun-results-notifier/sns_secret
diff --git a/components/notification-controller/production/kustomization.yaml b/components/notification-controller/production/kustomization.yaml
new file mode 100644
index 00000000..1bbc0d04
--- /dev/null
+++ b/components/notification-controller/production/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
+- ../base/external-secrets
+
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
+
+patches:
+  - path: external-secret-path.yaml
+    target:
+      name: aws-sns-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1      
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller-controller-manager
+      kind: Deployment
diff --git a/components/notification-controller/production/topic_region_add.yaml b/components/notification-controller/production/topic_region_add.yaml
new file mode 100644
index 00000000..1bab15eb
--- /dev/null
+++ b/components/notification-controller/production/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:520050076864:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-f0b7e9d2/production/components: notification-controller 
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
<h3>3: Staging changes from eba1c611 to f0b7e9d2 on Tue Sep 10 08:17:54 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/notification-controller/production/external-secret-path.yaml b/components/notification-controller/production/external-secret-path.yaml
new file mode 100644
index 00000000..3a57cce7
--- /dev/null
+++ b/components/notification-controller/production/external-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipelinerun-results-notifier/sns_secret
diff --git a/components/notification-controller/production/kustomization.yaml b/components/notification-controller/production/kustomization.yaml
new file mode 100644
index 00000000..1bbc0d04
--- /dev/null
+++ b/components/notification-controller/production/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
+- ../base/external-secrets
+
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
+
+patches:
+  - path: external-secret-path.yaml
+    target:
+      name: aws-sns-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1      
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller-controller-manager
+      kind: Deployment
diff --git a/components/notification-controller/production/topic_region_add.yaml b/components/notification-controller/production/topic_region_add.yaml
new file mode 100644
index 00000000..1bab15eb
--- /dev/null
+++ b/components/notification-controller/production/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:520050076864:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from eba1c611 to f0b7e9d2 on Tue Sep 10 08:17:54 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/notification-controller/production/external-secret-path.yaml b/components/notification-controller/production/external-secret-path.yaml
new file mode 100644
index 00000000..3a57cce7
--- /dev/null
+++ b/components/notification-controller/production/external-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipelinerun-results-notifier/sns_secret
diff --git a/components/notification-controller/production/kustomization.yaml b/components/notification-controller/production/kustomization.yaml
new file mode 100644
index 00000000..1bbc0d04
--- /dev/null
+++ b/components/notification-controller/production/kustomization.yaml
@@ -0,0 +1,25 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+
+resources:
+- https://github.com/konflux-ci/notification-service/config/default?ref=7045e57c2c14b6c33a4d15e1374290b694a73906
+- ../base/external-secrets
+
+images:
+  - name: quay.io/konflux-ci/notification-service
+    newName: quay.io/konflux-ci/notification-service
+    newTag: 7045e57c2c14b6c33a4d15e1374290b694a73906
+
+namespace: notification-controller
+
+patches:
+  - path: external-secret-path.yaml
+    target:
+      name: aws-sns-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1      
+  - path: topic_region_add.yaml
+    target:
+      name: notification-controller-controller-manager
+      kind: Deployment
diff --git a/components/notification-controller/production/topic_region_add.yaml b/components/notification-controller/production/topic_region_add.yaml
new file mode 100644
index 00000000..1bab15eb
--- /dev/null
+++ b/components/notification-controller/production/topic_region_add.yaml
@@ -0,0 +1,8 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/env
+  value: 
+    - name: NOTIFICATION_TOPIC_ARN
+      value: "arn:aws:sns:us-east-1:520050076864:scan_topic"
+    - name: NOTIFICATION_REGION
+      value: "us-east-1" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ad2cb8ad to eba1c611 on Tue Sep 10 07:05:16 2024 </h3>  
 
<details> 
<summary>Git Diff (615 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 1e7a9263..210f9696 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -1,214 +1,233 @@
-## Onboarding Services to Monitoring
+# Onboarding Services to Monitoring
 
+This document contains guidelines and references for configuring services in the
+Konflux clusters to be monitored and graphed.
 
-### 1. Metrics-exporting services
+## 1. Metrics-exporting Services
 
-- The intended service should export the metrics from the application so that prometheus is able to understand it.
+For a service to be monitored, it needs to instrument Prometheus metrics, or have an
+external service that will poll it and generate metrics on its behalf.
 
-- For reference, see
-  [Writing Exporters](https://prometheus.io/docs/instrumenting/writing_exporters)
+For reference, see
+[Writing Exporters](https://prometheus.io/docs/instrumenting/writing_exporters)
 
-- The exported port, service and route should be accessible to the prometheus service.
+Prometheus needs to be able to reach the service in order to scrape the metrics it
+generates. Check out [this example](./prometheus/development/dummy-service.yaml) of a
+metrics-exporting service.
 
-- Check out [this example](./prometheus/development/dummy-service.yaml) of a
-  metrics-exporting service.
+## 2. Service Monitors
 
-
-### 2. Service monitors
-
-Creating a service monitor instructs Prometheus to create a new target to collect
-metrics from.
+Service Monitors (ServiceMonitors) are Kubernetes custom resources that the Prometheus
+operator uses for creating scraping configurations for Prometheus pods. Consequently,
+Creating a Service Monitor creates a new target for Prometheus to collect metrics from.
 
 Copy and modify
 [this example](./prometheus/development/dummy-service-service-monitor.yaml)
-for adding the service monitor declaration:
+for adding the Service Monitor declaration.
 
-- The service monitor should be defined under the component which it monitors. Copy the
-  example under your [component](../../components/) and reference it in your
-  kustomization.yaml file.
+Ideally, the Service Monitor should be defined inside the component repository and then
+referenced by the infra-deployment [component's](../../components/) configurations.
 
-- Namespace: the service monitor should be defined under the same namespace as the
-  service it monitors. Same goes for the namespaces for the rest of the resources
-  defined for the service monitor. Namely, service, servicemonitor and the
-  servicemonitor's serviceaccount and secret.
+**Namespace**: the Service Monitor should be defined under the **same namespace** as the
+service it monitors. Same goes for the namespaces for the rest of the resources
+defined for the Service Monitor. Namely, `service`, `servicemonitor` and the
+servicemonitor's `serviceaccount` and `secret`.
 
-- ClusterRole and ClusterRoleBinding: make sure you edit the cluster role and cluster
-  role binding definitions so their names are unique.
+**ClusterRole and ClusterRoleBinding**: make sure you edit the cluster role and cluster
+role binding definitions so their names are **unique**.
 
-- ServiceMonitor: Verify the validity of the service monitor's selector. For example,
-  it can be matching a label - make sure you specify your app's label appropriately
-  (e.g. `app: my-app`, `control-plane: controller-manager`).
+**ServiceMonitor**: Verify the validity of the Service Monitor's selector. For example,
+if it's matching a label, make sure you specify your app's label appropriately (e.g.
+`app: my-app`, `control-plane: controller-manager`).
 
 > **_IMPORTANT:_** make sure your service's namespace does NOT contain label
                    `openshift.io/cluster-monitoring: 'true'`. Otherwise, it will not be
                    monitored by the user workload Prometheus instance.
-                  
 
-### 3. Grafana Datasource
+## 3. Grafana Datasource
 
 Grafana datasources contain the connection settings to the Prometheus instances.
 
-A single [datasource (Thanos querier)](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/grafana-app.yaml#L206), `appstudio-datasource` is defined and it lets us query metrics from the Platform and User Workload Monitoring Prometheus.
-
-To use this default datasource any definition of a datasource in the dashboard json file should be removed or a `templating` should be used.
+A single
+[datasource (Thanos querier)](https://github.com/redhat-appstudio/infra-deployments/blob/16e48656370dc65dba6471a9f50d745832535723/components/monitoring/grafana/base/grafana-app.yaml#L216),
+`appstudio-datasource` is defined and it lets us query metrics from the Platform and
+User Workload Monitoring Prometheus.
 
+To use this default datasource any definition of a datasource in the dashboard json file
+should be removed or a `templating` should be used.
 
-### 4. Grafana dashboards
+## 4. Grafana Dashboards
 
 A dashboard is a set of one or more panels organized and arranged into one or more rows. 
 It visualizes results from multiple data sources simultaneously.
-New dashboards can be added through the user interface, preconfigured in the infra-deployments repository, 
-or imported from other projects.
-
-
-#### Create a dashboard
-
-  1. [Create a dashboard](https://grafana.com/docs/grafana/v9.0/dashboards/)
-  for your team's view of your service's Service Level Indicators.
-  (After navigating to your folder, + Create Dashboard)  
-  ***Note:***  
-  Creating a new dashboard manually is available only for development environment.  
-  You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
-
-      The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
-
-
-  2. Add tiles to the dashboard to track your initial set of service level indicators.  
-  If the servicemonitor was added correctly to the stage Prometheus datasource, 
-  it will show up in the query list when you edit a tile.
-
-  3. Export the dashboard definition in JSON format. 
-  (At the top of the screen, the icon with 3 dots lets you "Share dashboard or panel". Select Export... Save to file.)
-   
-
-#### Team's repository
-
-Follow the next steps to define a dashboard in your team's repository
-
-  1. The dashboard should be located in the team’s repository, no change in `infra-deployments` is required,
-  the recommended structure is:
-      ```
-      ├── grafana
-      │   ├── dashboards
-      │   │   └── <teams_dashboard>.json
-      │   ├── <GrafanaDashboard resource file>
-      │   └── kustomization.yaml
-      ```
-      For example:
-      ```
-      ├── grafana
-      │   ├── dashboards
-      │   │   └── example-dashboard.json
-      │   ├── dashboard.yaml
-      │   └── kustomization.yaml
-      ```
-
-  2. Create a folder in your team's repository to maintain the dashboard configuration (e.g. grafana)
+New dashboards can be added through the user interface, preconfigured in the
+infra-deployments repository, or imported from other projects.
+
+### Create a Dashboard
+
+1. [Create a dashboard](https://grafana.com/docs/grafana/v10.4/dashboards/)
+   for your team's view of your service's Service Level Indicators
+   (After navigating to your folder + Create Dashboard).
+
+   > **_Note:_**  Creating a new dashboard manually is available only for development
+                   environment. You may copy and edit the `example` dashboard json
+                   instead, and test the new dashboard on the staging and production
+                   environments. The `example` dashboard json definition can be found
+                   [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
+
+2. Add tiles to the dashboard to track your initial set of service level indicators.
+   If the servicemonitor was added correctly to the stage Prometheus datasource,
+   it will show up in the query list when you edit a tile.
+
+3. Export the dashboard definition in JSON format: At the top of the screen, select the
+   icon with 3 dots and click `Share dashboard or panel` --> `Export` -->
+   `Save to file`.
+
+### Team's Repository
+
+Follow the next steps to define a dashboard in your team's repository:
+
+1. The dashboard should be located in the team’s repository, so no change in
+   `infra-deployments` is required.
+
+   The recommended structure is:
+
+   ```
+   ├── grafana
+   │   ├── dashboards
+   │   │   └── <teams_dashboard>.json
+   │   ├── <GrafanaDashboard resource file>
+   │   └── kustomization.yaml
+   ```
+
+   For example:
+   ```
+   ├── grafana
+   │   ├── dashboards
+   │   │   └── example-dashboard.json
+   │   ├── dashboard.yaml
+   │   └── kustomization.yaml
+   ```
+
+2. Create a folder in your team's repository to maintain the dashboard configuration
+   (e.g. grafana)
   
-  3. Edit the dashboard json file:  
-      - to pick the default predefined datasource Edit the dashboard json file and **remove** `datasource` from it, for example:
-          ```yaml 
-            "datasource": {
-              "type": "prometheus",
-              "uid": "PF224BEF3374A25F8"
-            }
-          ```
-        
-      - Alternatively it is possible to use templating to select a datasource, for example: 
-          ```json
-          "templating": {
-            "list": [
-              {
-                "current": {
-                  "selected": true,
-                  "text": "Prometheus",
-                  "value": "Prometheus"
-                },
-                "hide": 0,
-                "includeAll": false,
-                "multi": false,
-                "name": "datasource",
-                "options": [],
-                "query": "prometheus",
-                "queryValue": "",
-                "refresh": 1,
-                "regex": ".*-(appstudio)-.*",
-                "skipUrlSync": false,
-                "type": "datasource"
-              }
-            ]
-          },
-          ```
+3. Edit the dashboard json file:
+
+   To pick the default predefined datasource, edit the dashboard json file and
+   **remove** `datasource` from it. For example:
+
+   ```yaml
+     "datasource": {
+       "type": "prometheus",
+       "uid": "PF224BEF3374A25F8"
+     }
+   ```
         
-        In this example, the dashboard will use `Prometheus` datasource, with ability to use other datasource that contains `appstudio` in the name.
-      
-  4. Add the dashboard json file to the folder you created.
-
-  5. Create a `kustomization.yaml` to generate a config map from the dashboard json, 
-  and to add the `GrafanaDashboard` resource file (`dashboard.yaml`), for example: 
-      ```yaml
-      kind: Kustomization
-      apiVersion: kustomize.config.k8s.io/v1beta1
-
-      namespace: example
-
-      configMapGenerator:
-        - name: grafana-dashboard-example
-          files:
-            - dashboards/example-dashboard.json
-
-      resources:
-        - dashboard.yaml
-      ```
-  
-  6. Create the `GrafanaDashboard` resource file that uses the config map to create the dashboard
-      ```yaml
-      apiVersion: grafana.integreatly.org/v1beta1
-      kind: GrafanaDashboard
-      metadata:
-        name: grafana-dashboard-example
-        labels:
-          app: appstudio-grafana
-      spec:
-        instanceSelector:
-          matchLabels:
-            dashboards: "appstudio-grafana"
-        configMapRef:
-          name: grafana-dashboard-example
-          key: example-dashboard.json
-      ```
- 7. Push the code to the team's repository
-
- - Check out [this example o11y PR](https://github.com/redhat-appstudio/o11y/pull/39) 
- for creating a dashboard in the team's repository
+   Alternatively it is possible to use templating to select a datasource. For example:
+
+   ```json
+   "templating": {
+     "list": [
+       {
+         "current": {
+           "selected": true,
+           "text": "Prometheus",
+           "value": "Prometheus"
+         },
+         "hide": 0,
+         "includeAll": false,
+         "multi": false,
+         "name": "datasource",
+         "options": [],
+         "query": "prometheus",
+         "queryValue": "",
+         "refresh": 1,
+         "regex": ".*-(appstudio)-.*",
+         "skipUrlSync": false,
+         "type": "datasource"
+       }
+     ]
+   },
+   ```
   
+   In this example, the dashboard will use `Prometheus` datasource, with ability to use
+   other datasource that contains `appstudio` in the name.
+
+4. Add the dashboard json file to the folder you created.
+
+5. Create a `kustomization.yaml` file to generate a config map from the dashboard json,
+   and to add the `GrafanaDashboard` resource file (`dashboard.yaml`). For example:
+
+   ```yaml
+   kind: Kustomization
+   apiVersion: kustomize.config.k8s.io/v1beta1
+
+   namespace: example
+
+   configMapGenerator:
+     - name: grafana-dashboard-example
+       files:
+         - dashboards/example-dashboard.json
+
+   resources:
+     - dashboard.yaml
+   ```
+
+6. Create the `GrafanaDashboard` resource file that uses the config map to create the
+   dashboard:
+
+   ```yaml
+   apiVersion: grafana.integreatly.org/v1beta1
+   kind: GrafanaDashboard
+   metadata:
+     name: grafana-dashboard-example
+     labels:
+       app: appstudio-grafana
+   spec:
+     instanceSelector:
+       matchLabels:
+         dashboards: "appstudio-grafana"
+     configMapRef:
+       name: grafana-dashboard-example
+       key: example-dashboard.json
+   ```
+
+7. Push the code to the team's repository.
+
+Check out [this example o11y PR](https://github.com/redhat-appstudio/o11y/pull/39)
+for creating a dashboard in the team's repository.
+
+### infra-deployments Repository
+
+Follow these steps to add a dashboard to the `infra-deployments` repository:
+
+1. Create a team folder under `components/monitoring/grafana/base/<team_name>`.
+
+2. Create a `kustomization.yaml` file and add the dashboard you created as a resource by
+   using the commit sha as ref. For example:
 
-#### infra-deployments repository
-Follow these steps to add a dashboard to the `infra-deployments` repository
+   ```yaml
+   apiVersion: kustomize.config.k8s.io/v1beta1
+   kind: Kustomization
+   resources:
+     - https://github.com/redhat-appstudio/o11y/grafana/?ref=82bec1c488250ae32d458c77755e432329be1b45
+   ```
 
-  1. Create a team folder under `components/monitoring/grafana/base/<team_name>`
+3. Add your team's folder to the base
+   [kustomization file](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/kustomization.yaml#L14)
+   to automatically add it to future deployments.
   
-  2. Create a `kustomization.yaml` file and add the dashboard you created as a resource by using the commit sha as ref, 
-  for example:
-      ```yaml
-      apiVersion: kustomize.config.k8s.io/v1beta1
-      kind: Kustomization
-      resources:
-        - https://github.com/redhat-appstudio/o11y/grafana/?ref=82bec1c488250ae32d458c77755e432329be1b45
-      ```
-    
-  3. Add your team's folder to the base [kustomization file](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/kustomization.yaml#L14) to automatically add it to future deployments.
-   
-  4. Push the code to the `infra-deployments` repository
+4. Push the code to the `infra-deployments` repository.
 
 
-#### Verification
+### Verification
 
-Follow the next steps to to verify and check your dashboard after merging the configurations
+Follow the next steps to verify and check your dashboard after merging the
+configurations:
 
-1. Open the Grafana UI
+1. Open the Grafana UI.
 
-2. Click the `Manage` option in the `Dashboards` menu
+2. Click the `Manage` option in the `Dashboards` menu.
 
-3. Verify that your team’s dashboard is located under `appstudio-grafana` folder 
+3. Verify that your team’s dashboard is located under `appstudio-grafana` folder.
diff --git a/components/monitoring/prometheus/README.md b/components/monitoring/prometheus/README.md
index b131470a..8f903ab9 100644
--- a/components/monitoring/prometheus/README.md
+++ b/components/monitoring/prometheus/README.md
@@ -1,23 +1,23 @@
-## RHTAP Central Monitoring
-The RHTAP monitoring solution is based on three Prometheus instances deployed to each
-Production and Staging host and member clusters. Each cluster writes a subset of the
+# Konflux Central Monitoring
+The Konflux monitoring solution is based on three Prometheus instances deployed to each
+Production and Staging host and member cluster. Each cluster writes a subset of the
 metrics it generates into Observatorium (RHOBS), marking each metric with a label
 indicating its cluster of origin.
 
-Observatorium holds metrics for RHTAP's tenant in two RHOBS environments – Production
-and one Staging. The metrics collected for each of those environments are available
-for presentation via the AppSRE Grafana instance.
+Observatorium holds metrics for Konflux's tenant in two RHOBS environments – Production
+and Staging. The metrics collected for each of those environments are available for
+presentation via the AppSRE Grafana instance.
 
 ```mermaid
 %%{init: {'theme':'forest'}}%%
 flowchart BT
-  services(RHTAP Services) --> |scrape|UWM
+  services(Konflux Services) --> |scrape|UWM
   pods(kubelet, pods, etc.) --> |scrape|Platform
   UWM(User Workload Monitoring) --> |federate| MS(Monitoring Stack)
   Platform --> |federate|MS(Monitoring Stack)
   MS --> |remote-write|rhobs(Observatorium)
 
-  services2(RHTAP Services) --> |scrape|UWM2
+  services2(Konflux Services) --> |scrape|UWM2
   pods2(kubelet, pods, etc.) --> |scrape|Platform2
   UWM2(User Workload Monitoring) --> |federate| MS2(Monitoring Stack)
   Platform2(Platform) --> |federate|MS2(Monitoring Stack)
@@ -25,7 +25,7 @@ flowchart BT
 
   rhobs --> |scrape|grafana(AppSRE Grafana)
 
-  subgraph member[RHTAP Member Clusters]
+  subgraph member[Konflux Member Clusters]
     services
     pods
     subgraph "cmo member"[Cluster Monitoring Operator]
@@ -35,7 +35,7 @@ flowchart BT
     MS
   end
 
-  subgraph host["RHTAP Host Cluster"]
+  subgraph host["Konflux Host Cluster"]
     services2
     pods2
     subgraph "cmo host"[Cluster Monitoring Operator]
@@ -48,34 +48,30 @@ flowchart BT
   style member color:blue
   style host color:red
 ```
-### Data Plane Clusters Prometheus Instances
+## Data Plane Clusters Prometheus Instances
 We use the
 [Openshift-provided](https://docs.openshift.com/container-platform/4.12/monitoring/monitoring-overview.html)
 Prometheus deployments, Platform and user-workload-monitoring (UWM), alongside a
 Prometheus instance deployed by the RHOBS
 [Observability Operator](https://github.com/rhobs/observability-operator).
 
-#### Platform Prometheus
-Mainly scrapes generic metrics produced by built-in exports such as cAdvisor,
-kube-state-metrics, etc.
+### Platform Prometheus
+Mainly scrapes generic metrics produced by built-in exporters such as cAdvisor and
+kube-state-metrics.
 
-#### User Workload Monitoring (UWM) Prometheus
-Scrapes custom metrics provided by services deployed by the different RHTAP teams, and
+### User Workload Monitoring (UWM) Prometheus
+Scrapes custom metrics provided by services deployed by the different Konflux teams, and
 collected by Service Monitors, also provided by the teams.
 
 In Production and Staging, UWM Prometheus is enabled using OCM (since it maintains the
-Prometheus configurations).  
-The retention is set to 3 days and the retention size is set to 10GiB.  
-It is defined in `components/monitoring/prometheus/base/uwm-config/uwm-config.yaml`
-and it is controlled by ArgoCD.
+Prometheus configurations).
+The retention period and size is maintained using an ArgoCD-controlled
+[ConfigMap](./base/uwm-config/uwm-config.yaml).
 
+In Development this ConfigMap is created implicitly when UWM is enabled. Consequently,
+the retention period and size assume their default values. To configure those for a development environment, edit the  `user-workload-monitoring-config` ConfigMap in
+`openshift-user-workload-monitoring` namespace.
 
-In Development it's enabled without deploying a ConfigMap using ArgoCD 
-(The ConfigMap is created automatically when UWM is enabled)  
-
-The retention is set to default (24h).  
-To configure the retention for development environment, edit the 
-`user-workload-monitoring-config` ConfigMap in `openshift-user-workload-monitoring` namespace.  
 For example:
 ```yaml
 apiVersion: v1
@@ -90,16 +86,16 @@ data:
       retentionSize: 1GiB
 ```
 
-#### Observability Operator (OBO) Prometheus
-Federates the Platform and UWM Prometheus instances.
+### Observability Operator (OBO) Prometheus
+This instance federates the Platform and UWM Prometheus instances.
 
 There are limitations for both built-in Prometheus instances that do not allow us to
-use them to write metrics to RHOBS:
+use them directly to write metrics to RHOBS:
 
 - The configurations of the Platform Prometheus instance are owned by SRE Platform, thus
 we cannot configure this instance to remote-write.
 - Service Monitors for The UWM Prometheus instance are limited for scraping metrics
-from the same namespace in which the Service Monitor is defined. it means that this
+from the same namespace in which the Service Monitor is defined. It means that this
 instance cannot federate the Platform Prometheus instance, thus cannot hold all data
 needed to be exported (it also cannot remote-write metrics coming from different
 namespaces).
@@ -112,15 +108,15 @@ remote-writes selected labels for those metrics to RHOBS, which in turn, makes t
 metrics accessible to AppSRE Grafana.
 
 This Prometheus instance is deployed using a MonitoringStack custom resource provided
-by the Observability Operator. This operator is installed by default in Production and Staging clusters.  
+by the Observability Operator. This operator is installed by default in Production and Staging clusters.
 In Development clusters, it's not installed by default to prevent conflicts with other deployments. 
-It can be installed and configured in development by using the `--obo/-o` flags.  
+It can be installed and configured in development by using the `--obo/-o` flags.
 For example:
 
 `./hack/bootstrap-cluster.sh preview --obo`  
 `./hack/bootstrap-cluster.sh preview -o`
 
-#### Federation and Remote-write
+### Federation and Remote-write
 
 Through Federation and remote-write configurations, only a subset of the metrics and
 the labels collected within the data plane clusters reach RHOBS. For that reason, it
@@ -128,10 +124,10 @@ might be that metrics that are visible via the OCP web console (under Observe --
 Metrics) do not reach RHOBS and are not visible in AppSRE Grafana.
 
 The Platform Prometheus instance monitors a wide variety of resources which are, in
-nature, of an unbound cardinality (e.g. containers, pods, jobs). Consequently, it
-generates a substantial amount of metrics time series that cannot all be forwarded to
-RHOBS. For that reason, we only allow a very small subset of the metrics it scrapes
-to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
+nature, of an unbound cardinality (e.g. containers, pods, jobs, pipelineruns, taskruns).
+Consequently, it generates a substantial amount of metrics time series that cannot all
+be forwarded to RHOBS. For that reason, we only allow a very small subset of the metrics
+it scrapes to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
 
 The UWM Prometheus instance, on the other hand, generates a very few time series by
 default, and the metrics it is configured to scrape for services are generally of
@@ -145,45 +141,3 @@ will not include some of the labels the same time series have on the data plane
 clusters. The OBO instance is configured to remote-write only specific labels, and if
 the presence of a new label is required in alerting rules or AppSRE Grafana dashboards,
 then this label should be added to the configurations.
-
-##### Troubleshooting Missing Metrics and Labels
-
-There are a few steps to follow when specific metrics or labels are required for new
-alerting rules or Grafana dashboards, but are not present in AppSRE Grafana.
-
-> **_NOTE:_**  While we remote-write the metrics to RHOBS rather than to AppSRE Grafana,
-we don't have an easy way to directly confirm whether metrics are reaching RHOBS or not.
-Instead, we check AppSRE Grafana, assuming no metrics/labels are dropped between RHOBS
-and AppSRE Grafana. Nevertheless, such drops are possible, although far less probable
-comparing to MonitoringStack misconfigurations.
-
-If the metric is missing altogether:
-
-1. Verify that the metric does exist inside its expected cluster of origin by querying
-   for it on the Observe --> Metrics screen on the OCP web console.
-    * If it doesn't, further troubleshoot the service monitor expected to collect the
-      metric and the Kubernetes resource expected to generate it.
-2. While querying for the metric, check the value of its `prometheus` label.
-    * if the value is `openshift-monitoring/k8s`, it means it's being collected by the
-      Platform Prometheus instance. As we only federate specific metrics from this
-      instance, the metric needs to be added to the `match` list under the
-      `appstudio-federate-smon` ServiceMonitor resource within the
-      [MonitoringStack configurations].
-    * if the label value is different, reach out to the o11y team on [Slack][o11y-slack]
-3. Once added, the metric should be federated by the OBO instance and remote-written to
-   RHOBS.
-
-If the metric is present, but labels are missing:
-
-1. Verify that the labels do exist when querying for the metric through the OCP web
-   console.
-    * If not, further troubleshoot the resource that should export or instrument
-      the metric.
-2. Add the missing labels to the `LabelKeep` action's `regex` field within the
-   `MonitoringStack` resource definition in the [MonitoringStack configurations].
-3. Once added, the label should be remote-written by the OBO instance to RHOBS.
-
-For further assistance, reach out to the o11y team on [Slack][o11y-slack].
-
-[MonitoringStack configurations]: base/monitoringstack/monitoringstack.yaml
-[o11y-slack]: https://redhat-internal.slack.com/archives/C04FDFTF8EB 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ad2cb8ad to eba1c611 on Tue Sep 10 07:05:16 2024 </h3>  
 
<details> 
<summary>Git Diff (615 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 1e7a9263..210f9696 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -1,214 +1,233 @@
-## Onboarding Services to Monitoring
+# Onboarding Services to Monitoring
 
+This document contains guidelines and references for configuring services in the
+Konflux clusters to be monitored and graphed.
 
-### 1. Metrics-exporting services
+## 1. Metrics-exporting Services
 
-- The intended service should export the metrics from the application so that prometheus is able to understand it.
+For a service to be monitored, it needs to instrument Prometheus metrics, or have an
+external service that will poll it and generate metrics on its behalf.
 
-- For reference, see
-  [Writing Exporters](https://prometheus.io/docs/instrumenting/writing_exporters)
+For reference, see
+[Writing Exporters](https://prometheus.io/docs/instrumenting/writing_exporters)
 
-- The exported port, service and route should be accessible to the prometheus service.
+Prometheus needs to be able to reach the service in order to scrape the metrics it
+generates. Check out [this example](./prometheus/development/dummy-service.yaml) of a
+metrics-exporting service.
 
-- Check out [this example](./prometheus/development/dummy-service.yaml) of a
-  metrics-exporting service.
+## 2. Service Monitors
 
-
-### 2. Service monitors
-
-Creating a service monitor instructs Prometheus to create a new target to collect
-metrics from.
+Service Monitors (ServiceMonitors) are Kubernetes custom resources that the Prometheus
+operator uses for creating scraping configurations for Prometheus pods. Consequently,
+Creating a Service Monitor creates a new target for Prometheus to collect metrics from.
 
 Copy and modify
 [this example](./prometheus/development/dummy-service-service-monitor.yaml)
-for adding the service monitor declaration:
+for adding the Service Monitor declaration.
 
-- The service monitor should be defined under the component which it monitors. Copy the
-  example under your [component](../../components/) and reference it in your
-  kustomization.yaml file.
+Ideally, the Service Monitor should be defined inside the component repository and then
+referenced by the infra-deployment [component's](../../components/) configurations.
 
-- Namespace: the service monitor should be defined under the same namespace as the
-  service it monitors. Same goes for the namespaces for the rest of the resources
-  defined for the service monitor. Namely, service, servicemonitor and the
-  servicemonitor's serviceaccount and secret.
+**Namespace**: the Service Monitor should be defined under the **same namespace** as the
+service it monitors. Same goes for the namespaces for the rest of the resources
+defined for the Service Monitor. Namely, `service`, `servicemonitor` and the
+servicemonitor's `serviceaccount` and `secret`.
 
-- ClusterRole and ClusterRoleBinding: make sure you edit the cluster role and cluster
-  role binding definitions so their names are unique.
+**ClusterRole and ClusterRoleBinding**: make sure you edit the cluster role and cluster
+role binding definitions so their names are **unique**.
 
-- ServiceMonitor: Verify the validity of the service monitor's selector. For example,
-  it can be matching a label - make sure you specify your app's label appropriately
-  (e.g. `app: my-app`, `control-plane: controller-manager`).
+**ServiceMonitor**: Verify the validity of the Service Monitor's selector. For example,
+if it's matching a label, make sure you specify your app's label appropriately (e.g.
+`app: my-app`, `control-plane: controller-manager`).
 
 > **_IMPORTANT:_** make sure your service's namespace does NOT contain label
                    `openshift.io/cluster-monitoring: 'true'`. Otherwise, it will not be
                    monitored by the user workload Prometheus instance.
-                  
 
-### 3. Grafana Datasource
+## 3. Grafana Datasource
 
 Grafana datasources contain the connection settings to the Prometheus instances.
 
-A single [datasource (Thanos querier)](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/grafana-app.yaml#L206), `appstudio-datasource` is defined and it lets us query metrics from the Platform and User Workload Monitoring Prometheus.
-
-To use this default datasource any definition of a datasource in the dashboard json file should be removed or a `templating` should be used.
+A single
+[datasource (Thanos querier)](https://github.com/redhat-appstudio/infra-deployments/blob/16e48656370dc65dba6471a9f50d745832535723/components/monitoring/grafana/base/grafana-app.yaml#L216),
+`appstudio-datasource` is defined and it lets us query metrics from the Platform and
+User Workload Monitoring Prometheus.
 
+To use this default datasource any definition of a datasource in the dashboard json file
+should be removed or a `templating` should be used.
 
-### 4. Grafana dashboards
+## 4. Grafana Dashboards
 
 A dashboard is a set of one or more panels organized and arranged into one or more rows. 
 It visualizes results from multiple data sources simultaneously.
-New dashboards can be added through the user interface, preconfigured in the infra-deployments repository, 
-or imported from other projects.
-
-
-#### Create a dashboard
-
-  1. [Create a dashboard](https://grafana.com/docs/grafana/v9.0/dashboards/)
-  for your team's view of your service's Service Level Indicators.
-  (After navigating to your folder, + Create Dashboard)  
-  ***Note:***  
-  Creating a new dashboard manually is available only for development environment.  
-  You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
-
-      The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
-
-
-  2. Add tiles to the dashboard to track your initial set of service level indicators.  
-  If the servicemonitor was added correctly to the stage Prometheus datasource, 
-  it will show up in the query list when you edit a tile.
-
-  3. Export the dashboard definition in JSON format. 
-  (At the top of the screen, the icon with 3 dots lets you "Share dashboard or panel". Select Export... Save to file.)
-   
-
-#### Team's repository
-
-Follow the next steps to define a dashboard in your team's repository
-
-  1. The dashboard should be located in the team’s repository, no change in `infra-deployments` is required,
-  the recommended structure is:
-      ```
-      ├── grafana
-      │   ├── dashboards
-      │   │   └── <teams_dashboard>.json
-      │   ├── <GrafanaDashboard resource file>
-      │   └── kustomization.yaml
-      ```
-      For example:
-      ```
-      ├── grafana
-      │   ├── dashboards
-      │   │   └── example-dashboard.json
-      │   ├── dashboard.yaml
-      │   └── kustomization.yaml
-      ```
-
-  2. Create a folder in your team's repository to maintain the dashboard configuration (e.g. grafana)
+New dashboards can be added through the user interface, preconfigured in the
+infra-deployments repository, or imported from other projects.
+
+### Create a Dashboard
+
+1. [Create a dashboard](https://grafana.com/docs/grafana/v10.4/dashboards/)
+   for your team's view of your service's Service Level Indicators
+   (After navigating to your folder + Create Dashboard).
+
+   > **_Note:_**  Creating a new dashboard manually is available only for development
+                   environment. You may copy and edit the `example` dashboard json
+                   instead, and test the new dashboard on the staging and production
+                   environments. The `example` dashboard json definition can be found
+                   [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
+
+2. Add tiles to the dashboard to track your initial set of service level indicators.
+   If the servicemonitor was added correctly to the stage Prometheus datasource,
+   it will show up in the query list when you edit a tile.
+
+3. Export the dashboard definition in JSON format: At the top of the screen, select the
+   icon with 3 dots and click `Share dashboard or panel` --> `Export` -->
+   `Save to file`.
+
+### Team's Repository
+
+Follow the next steps to define a dashboard in your team's repository:
+
+1. The dashboard should be located in the team’s repository, so no change in
+   `infra-deployments` is required.
+
+   The recommended structure is:
+
+   ```
+   ├── grafana
+   │   ├── dashboards
+   │   │   └── <teams_dashboard>.json
+   │   ├── <GrafanaDashboard resource file>
+   │   └── kustomization.yaml
+   ```
+
+   For example:
+   ```
+   ├── grafana
+   │   ├── dashboards
+   │   │   └── example-dashboard.json
+   │   ├── dashboard.yaml
+   │   └── kustomization.yaml
+   ```
+
+2. Create a folder in your team's repository to maintain the dashboard configuration
+   (e.g. grafana)
   
-  3. Edit the dashboard json file:  
-      - to pick the default predefined datasource Edit the dashboard json file and **remove** `datasource` from it, for example:
-          ```yaml 
-            "datasource": {
-              "type": "prometheus",
-              "uid": "PF224BEF3374A25F8"
-            }
-          ```
-        
-      - Alternatively it is possible to use templating to select a datasource, for example: 
-          ```json
-          "templating": {
-            "list": [
-              {
-                "current": {
-                  "selected": true,
-                  "text": "Prometheus",
-                  "value": "Prometheus"
-                },
-                "hide": 0,
-                "includeAll": false,
-                "multi": false,
-                "name": "datasource",
-                "options": [],
-                "query": "prometheus",
-                "queryValue": "",
-                "refresh": 1,
-                "regex": ".*-(appstudio)-.*",
-                "skipUrlSync": false,
-                "type": "datasource"
-              }
-            ]
-          },
-          ```
+3. Edit the dashboard json file:
+
+   To pick the default predefined datasource, edit the dashboard json file and
+   **remove** `datasource` from it. For example:
+
+   ```yaml
+     "datasource": {
+       "type": "prometheus",
+       "uid": "PF224BEF3374A25F8"
+     }
+   ```
         
-        In this example, the dashboard will use `Prometheus` datasource, with ability to use other datasource that contains `appstudio` in the name.
-      
-  4. Add the dashboard json file to the folder you created.
-
-  5. Create a `kustomization.yaml` to generate a config map from the dashboard json, 
-  and to add the `GrafanaDashboard` resource file (`dashboard.yaml`), for example: 
-      ```yaml
-      kind: Kustomization
-      apiVersion: kustomize.config.k8s.io/v1beta1
-
-      namespace: example
-
-      configMapGenerator:
-        - name: grafana-dashboard-example
-          files:
-            - dashboards/example-dashboard.json
-
-      resources:
-        - dashboard.yaml
-      ```
-  
-  6. Create the `GrafanaDashboard` resource file that uses the config map to create the dashboard
-      ```yaml
-      apiVersion: grafana.integreatly.org/v1beta1
-      kind: GrafanaDashboard
-      metadata:
-        name: grafana-dashboard-example
-        labels:
-          app: appstudio-grafana
-      spec:
-        instanceSelector:
-          matchLabels:
-            dashboards: "appstudio-grafana"
-        configMapRef:
-          name: grafana-dashboard-example
-          key: example-dashboard.json
-      ```
- 7. Push the code to the team's repository
-
- - Check out [this example o11y PR](https://github.com/redhat-appstudio/o11y/pull/39) 
- for creating a dashboard in the team's repository
+   Alternatively it is possible to use templating to select a datasource. For example:
+
+   ```json
+   "templating": {
+     "list": [
+       {
+         "current": {
+           "selected": true,
+           "text": "Prometheus",
+           "value": "Prometheus"
+         },
+         "hide": 0,
+         "includeAll": false,
+         "multi": false,
+         "name": "datasource",
+         "options": [],
+         "query": "prometheus",
+         "queryValue": "",
+         "refresh": 1,
+         "regex": ".*-(appstudio)-.*",
+         "skipUrlSync": false,
+         "type": "datasource"
+       }
+     ]
+   },
+   ```
   
+   In this example, the dashboard will use `Prometheus` datasource, with ability to use
+   other datasource that contains `appstudio` in the name.
+
+4. Add the dashboard json file to the folder you created.
+
+5. Create a `kustomization.yaml` file to generate a config map from the dashboard json,
+   and to add the `GrafanaDashboard` resource file (`dashboard.yaml`). For example:
+
+   ```yaml
+   kind: Kustomization
+   apiVersion: kustomize.config.k8s.io/v1beta1
+
+   namespace: example
+
+   configMapGenerator:
+     - name: grafana-dashboard-example
+       files:
+         - dashboards/example-dashboard.json
+
+   resources:
+     - dashboard.yaml
+   ```
+
+6. Create the `GrafanaDashboard` resource file that uses the config map to create the
+   dashboard:
+
+   ```yaml
+   apiVersion: grafana.integreatly.org/v1beta1
+   kind: GrafanaDashboard
+   metadata:
+     name: grafana-dashboard-example
+     labels:
+       app: appstudio-grafana
+   spec:
+     instanceSelector:
+       matchLabels:
+         dashboards: "appstudio-grafana"
+     configMapRef:
+       name: grafana-dashboard-example
+       key: example-dashboard.json
+   ```
+
+7. Push the code to the team's repository.
+
+Check out [this example o11y PR](https://github.com/redhat-appstudio/o11y/pull/39)
+for creating a dashboard in the team's repository.
+
+### infra-deployments Repository
+
+Follow these steps to add a dashboard to the `infra-deployments` repository:
+
+1. Create a team folder under `components/monitoring/grafana/base/<team_name>`.
+
+2. Create a `kustomization.yaml` file and add the dashboard you created as a resource by
+   using the commit sha as ref. For example:
 
-#### infra-deployments repository
-Follow these steps to add a dashboard to the `infra-deployments` repository
+   ```yaml
+   apiVersion: kustomize.config.k8s.io/v1beta1
+   kind: Kustomization
+   resources:
+     - https://github.com/redhat-appstudio/o11y/grafana/?ref=82bec1c488250ae32d458c77755e432329be1b45
+   ```
 
-  1. Create a team folder under `components/monitoring/grafana/base/<team_name>`
+3. Add your team's folder to the base
+   [kustomization file](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/kustomization.yaml#L14)
+   to automatically add it to future deployments.
   
-  2. Create a `kustomization.yaml` file and add the dashboard you created as a resource by using the commit sha as ref, 
-  for example:
-      ```yaml
-      apiVersion: kustomize.config.k8s.io/v1beta1
-      kind: Kustomization
-      resources:
-        - https://github.com/redhat-appstudio/o11y/grafana/?ref=82bec1c488250ae32d458c77755e432329be1b45
-      ```
-    
-  3. Add your team's folder to the base [kustomization file](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/kustomization.yaml#L14) to automatically add it to future deployments.
-   
-  4. Push the code to the `infra-deployments` repository
+4. Push the code to the `infra-deployments` repository.
 
 
-#### Verification
+### Verification
 
-Follow the next steps to to verify and check your dashboard after merging the configurations
+Follow the next steps to verify and check your dashboard after merging the
+configurations:
 
-1. Open the Grafana UI
+1. Open the Grafana UI.
 
-2. Click the `Manage` option in the `Dashboards` menu
+2. Click the `Manage` option in the `Dashboards` menu.
 
-3. Verify that your team’s dashboard is located under `appstudio-grafana` folder 
+3. Verify that your team’s dashboard is located under `appstudio-grafana` folder.
diff --git a/components/monitoring/prometheus/README.md b/components/monitoring/prometheus/README.md
index b131470a..8f903ab9 100644
--- a/components/monitoring/prometheus/README.md
+++ b/components/monitoring/prometheus/README.md
@@ -1,23 +1,23 @@
-## RHTAP Central Monitoring
-The RHTAP monitoring solution is based on three Prometheus instances deployed to each
-Production and Staging host and member clusters. Each cluster writes a subset of the
+# Konflux Central Monitoring
+The Konflux monitoring solution is based on three Prometheus instances deployed to each
+Production and Staging host and member cluster. Each cluster writes a subset of the
 metrics it generates into Observatorium (RHOBS), marking each metric with a label
 indicating its cluster of origin.
 
-Observatorium holds metrics for RHTAP's tenant in two RHOBS environments – Production
-and one Staging. The metrics collected for each of those environments are available
-for presentation via the AppSRE Grafana instance.
+Observatorium holds metrics for Konflux's tenant in two RHOBS environments – Production
+and Staging. The metrics collected for each of those environments are available for
+presentation via the AppSRE Grafana instance.
 
 ```mermaid
 %%{init: {'theme':'forest'}}%%
 flowchart BT
-  services(RHTAP Services) --> |scrape|UWM
+  services(Konflux Services) --> |scrape|UWM
   pods(kubelet, pods, etc.) --> |scrape|Platform
   UWM(User Workload Monitoring) --> |federate| MS(Monitoring Stack)
   Platform --> |federate|MS(Monitoring Stack)
   MS --> |remote-write|rhobs(Observatorium)
 
-  services2(RHTAP Services) --> |scrape|UWM2
+  services2(Konflux Services) --> |scrape|UWM2
   pods2(kubelet, pods, etc.) --> |scrape|Platform2
   UWM2(User Workload Monitoring) --> |federate| MS2(Monitoring Stack)
   Platform2(Platform) --> |federate|MS2(Monitoring Stack)
@@ -25,7 +25,7 @@ flowchart BT
 
   rhobs --> |scrape|grafana(AppSRE Grafana)
 
-  subgraph member[RHTAP Member Clusters]
+  subgraph member[Konflux Member Clusters]
     services
     pods
     subgraph "cmo member"[Cluster Monitoring Operator]
@@ -35,7 +35,7 @@ flowchart BT
     MS
   end
 
-  subgraph host["RHTAP Host Cluster"]
+  subgraph host["Konflux Host Cluster"]
     services2
     pods2
     subgraph "cmo host"[Cluster Monitoring Operator]
@@ -48,34 +48,30 @@ flowchart BT
   style member color:blue
   style host color:red
 ```
-### Data Plane Clusters Prometheus Instances
+## Data Plane Clusters Prometheus Instances
 We use the
 [Openshift-provided](https://docs.openshift.com/container-platform/4.12/monitoring/monitoring-overview.html)
 Prometheus deployments, Platform and user-workload-monitoring (UWM), alongside a
 Prometheus instance deployed by the RHOBS
 [Observability Operator](https://github.com/rhobs/observability-operator).
 
-#### Platform Prometheus
-Mainly scrapes generic metrics produced by built-in exports such as cAdvisor,
-kube-state-metrics, etc.
+### Platform Prometheus
+Mainly scrapes generic metrics produced by built-in exporters such as cAdvisor and
+kube-state-metrics.
 
-#### User Workload Monitoring (UWM) Prometheus
-Scrapes custom metrics provided by services deployed by the different RHTAP teams, and
+### User Workload Monitoring (UWM) Prometheus
+Scrapes custom metrics provided by services deployed by the different Konflux teams, and
 collected by Service Monitors, also provided by the teams.
 
 In Production and Staging, UWM Prometheus is enabled using OCM (since it maintains the
-Prometheus configurations).  
-The retention is set to 3 days and the retention size is set to 10GiB.  
-It is defined in `components/monitoring/prometheus/base/uwm-config/uwm-config.yaml`
-and it is controlled by ArgoCD.
+Prometheus configurations).
+The retention period and size is maintained using an ArgoCD-controlled
+[ConfigMap](./base/uwm-config/uwm-config.yaml).
 
+In Development this ConfigMap is created implicitly when UWM is enabled. Consequently,
+the retention period and size assume their default values. To configure those for a development environment, edit the  `user-workload-monitoring-config` ConfigMap in
+`openshift-user-workload-monitoring` namespace.
 
-In Development it's enabled without deploying a ConfigMap using ArgoCD 
-(The ConfigMap is created automatically when UWM is enabled)  
-
-The retention is set to default (24h).  
-To configure the retention for development environment, edit the 
-`user-workload-monitoring-config` ConfigMap in `openshift-user-workload-monitoring` namespace.  
 For example:
 ```yaml
 apiVersion: v1
@@ -90,16 +86,16 @@ data:
       retentionSize: 1GiB
 ```
 
-#### Observability Operator (OBO) Prometheus
-Federates the Platform and UWM Prometheus instances.
+### Observability Operator (OBO) Prometheus
+This instance federates the Platform and UWM Prometheus instances.
 
 There are limitations for both built-in Prometheus instances that do not allow us to
-use them to write metrics to RHOBS:
+use them directly to write metrics to RHOBS:
 
 - The configurations of the Platform Prometheus instance are owned by SRE Platform, thus
 we cannot configure this instance to remote-write.
 - Service Monitors for The UWM Prometheus instance are limited for scraping metrics
-from the same namespace in which the Service Monitor is defined. it means that this
+from the same namespace in which the Service Monitor is defined. It means that this
 instance cannot federate the Platform Prometheus instance, thus cannot hold all data
 needed to be exported (it also cannot remote-write metrics coming from different
 namespaces).
@@ -112,15 +108,15 @@ remote-writes selected labels for those metrics to RHOBS, which in turn, makes t
 metrics accessible to AppSRE Grafana.
 
 This Prometheus instance is deployed using a MonitoringStack custom resource provided
-by the Observability Operator. This operator is installed by default in Production and Staging clusters.  
+by the Observability Operator. This operator is installed by default in Production and Staging clusters.
 In Development clusters, it's not installed by default to prevent conflicts with other deployments. 
-It can be installed and configured in development by using the `--obo/-o` flags.  
+It can be installed and configured in development by using the `--obo/-o` flags.
 For example:
 
 `./hack/bootstrap-cluster.sh preview --obo`  
 `./hack/bootstrap-cluster.sh preview -o`
 
-#### Federation and Remote-write
+### Federation and Remote-write
 
 Through Federation and remote-write configurations, only a subset of the metrics and
 the labels collected within the data plane clusters reach RHOBS. For that reason, it
@@ -128,10 +124,10 @@ might be that metrics that are visible via the OCP web console (under Observe --
 Metrics) do not reach RHOBS and are not visible in AppSRE Grafana.
 
 The Platform Prometheus instance monitors a wide variety of resources which are, in
-nature, of an unbound cardinality (e.g. containers, pods, jobs). Consequently, it
-generates a substantial amount of metrics time series that cannot all be forwarded to
-RHOBS. For that reason, we only allow a very small subset of the metrics it scrapes
-to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
+nature, of an unbound cardinality (e.g. containers, pods, jobs, pipelineruns, taskruns).
+Consequently, it generates a substantial amount of metrics time series that cannot all
+be forwarded to RHOBS. For that reason, we only allow a very small subset of the metrics
+it scrapes to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
 
 The UWM Prometheus instance, on the other hand, generates a very few time series by
 default, and the metrics it is configured to scrape for services are generally of
@@ -145,45 +141,3 @@ will not include some of the labels the same time series have on the data plane
 clusters. The OBO instance is configured to remote-write only specific labels, and if
 the presence of a new label is required in alerting rules or AppSRE Grafana dashboards,
 then this label should be added to the configurations.
-
-##### Troubleshooting Missing Metrics and Labels
-
-There are a few steps to follow when specific metrics or labels are required for new
-alerting rules or Grafana dashboards, but are not present in AppSRE Grafana.
-
-> **_NOTE:_**  While we remote-write the metrics to RHOBS rather than to AppSRE Grafana,
-we don't have an easy way to directly confirm whether metrics are reaching RHOBS or not.
-Instead, we check AppSRE Grafana, assuming no metrics/labels are dropped between RHOBS
-and AppSRE Grafana. Nevertheless, such drops are possible, although far less probable
-comparing to MonitoringStack misconfigurations.
-
-If the metric is missing altogether:
-
-1. Verify that the metric does exist inside its expected cluster of origin by querying
-   for it on the Observe --> Metrics screen on the OCP web console.
-    * If it doesn't, further troubleshoot the service monitor expected to collect the
-      metric and the Kubernetes resource expected to generate it.
-2. While querying for the metric, check the value of its `prometheus` label.
-    * if the value is `openshift-monitoring/k8s`, it means it's being collected by the
-      Platform Prometheus instance. As we only federate specific metrics from this
-      instance, the metric needs to be added to the `match` list under the
-      `appstudio-federate-smon` ServiceMonitor resource within the
-      [MonitoringStack configurations].
-    * if the label value is different, reach out to the o11y team on [Slack][o11y-slack]
-3. Once added, the metric should be federated by the OBO instance and remote-written to
-   RHOBS.
-
-If the metric is present, but labels are missing:
-
-1. Verify that the labels do exist when querying for the metric through the OCP web
-   console.
-    * If not, further troubleshoot the resource that should export or instrument
-      the metric.
-2. Add the missing labels to the `LabelKeep` action's `regex` field within the
-   `MonitoringStack` resource definition in the [MonitoringStack configurations].
-3. Once added, the label should be remote-written by the OBO instance to RHOBS.
-
-For further assistance, reach out to the o11y team on [Slack][o11y-slack].
-
-[MonitoringStack configurations]: base/monitoringstack/monitoringstack.yaml
-[o11y-slack]: https://redhat-internal.slack.com/archives/C04FDFTF8EB 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from ad2cb8ad to eba1c611 on Tue Sep 10 07:05:16 2024 </h3>  
 
<details> 
<summary>Git Diff (615 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 1e7a9263..210f9696 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -1,214 +1,233 @@
-## Onboarding Services to Monitoring
+# Onboarding Services to Monitoring
 
+This document contains guidelines and references for configuring services in the
+Konflux clusters to be monitored and graphed.
 
-### 1. Metrics-exporting services
+## 1. Metrics-exporting Services
 
-- The intended service should export the metrics from the application so that prometheus is able to understand it.
+For a service to be monitored, it needs to instrument Prometheus metrics, or have an
+external service that will poll it and generate metrics on its behalf.
 
-- For reference, see
-  [Writing Exporters](https://prometheus.io/docs/instrumenting/writing_exporters)
+For reference, see
+[Writing Exporters](https://prometheus.io/docs/instrumenting/writing_exporters)
 
-- The exported port, service and route should be accessible to the prometheus service.
+Prometheus needs to be able to reach the service in order to scrape the metrics it
+generates. Check out [this example](./prometheus/development/dummy-service.yaml) of a
+metrics-exporting service.
 
-- Check out [this example](./prometheus/development/dummy-service.yaml) of a
-  metrics-exporting service.
+## 2. Service Monitors
 
-
-### 2. Service monitors
-
-Creating a service monitor instructs Prometheus to create a new target to collect
-metrics from.
+Service Monitors (ServiceMonitors) are Kubernetes custom resources that the Prometheus
+operator uses for creating scraping configurations for Prometheus pods. Consequently,
+Creating a Service Monitor creates a new target for Prometheus to collect metrics from.
 
 Copy and modify
 [this example](./prometheus/development/dummy-service-service-monitor.yaml)
-for adding the service monitor declaration:
+for adding the Service Monitor declaration.
 
-- The service monitor should be defined under the component which it monitors. Copy the
-  example under your [component](../../components/) and reference it in your
-  kustomization.yaml file.
+Ideally, the Service Monitor should be defined inside the component repository and then
+referenced by the infra-deployment [component's](../../components/) configurations.
 
-- Namespace: the service monitor should be defined under the same namespace as the
-  service it monitors. Same goes for the namespaces for the rest of the resources
-  defined for the service monitor. Namely, service, servicemonitor and the
-  servicemonitor's serviceaccount and secret.
+**Namespace**: the Service Monitor should be defined under the **same namespace** as the
+service it monitors. Same goes for the namespaces for the rest of the resources
+defined for the Service Monitor. Namely, `service`, `servicemonitor` and the
+servicemonitor's `serviceaccount` and `secret`.
 
-- ClusterRole and ClusterRoleBinding: make sure you edit the cluster role and cluster
-  role binding definitions so their names are unique.
+**ClusterRole and ClusterRoleBinding**: make sure you edit the cluster role and cluster
+role binding definitions so their names are **unique**.
 
-- ServiceMonitor: Verify the validity of the service monitor's selector. For example,
-  it can be matching a label - make sure you specify your app's label appropriately
-  (e.g. `app: my-app`, `control-plane: controller-manager`).
+**ServiceMonitor**: Verify the validity of the Service Monitor's selector. For example,
+if it's matching a label, make sure you specify your app's label appropriately (e.g.
+`app: my-app`, `control-plane: controller-manager`).
 
 > **_IMPORTANT:_** make sure your service's namespace does NOT contain label
                    `openshift.io/cluster-monitoring: 'true'`. Otherwise, it will not be
                    monitored by the user workload Prometheus instance.
-                  
 
-### 3. Grafana Datasource
+## 3. Grafana Datasource
 
 Grafana datasources contain the connection settings to the Prometheus instances.
 
-A single [datasource (Thanos querier)](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/grafana-app.yaml#L206), `appstudio-datasource` is defined and it lets us query metrics from the Platform and User Workload Monitoring Prometheus.
-
-To use this default datasource any definition of a datasource in the dashboard json file should be removed or a `templating` should be used.
+A single
+[datasource (Thanos querier)](https://github.com/redhat-appstudio/infra-deployments/blob/16e48656370dc65dba6471a9f50d745832535723/components/monitoring/grafana/base/grafana-app.yaml#L216),
+`appstudio-datasource` is defined and it lets us query metrics from the Platform and
+User Workload Monitoring Prometheus.
 
+To use this default datasource any definition of a datasource in the dashboard json file
+should be removed or a `templating` should be used.
 
-### 4. Grafana dashboards
+## 4. Grafana Dashboards
 
 A dashboard is a set of one or more panels organized and arranged into one or more rows. 
 It visualizes results from multiple data sources simultaneously.
-New dashboards can be added through the user interface, preconfigured in the infra-deployments repository, 
-or imported from other projects.
-
-
-#### Create a dashboard
-
-  1. [Create a dashboard](https://grafana.com/docs/grafana/v9.0/dashboards/)
-  for your team's view of your service's Service Level Indicators.
-  (After navigating to your folder, + Create Dashboard)  
-  ***Note:***  
-  Creating a new dashboard manually is available only for development environment.  
-  You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
-
-      The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
-
-
-  2. Add tiles to the dashboard to track your initial set of service level indicators.  
-  If the servicemonitor was added correctly to the stage Prometheus datasource, 
-  it will show up in the query list when you edit a tile.
-
-  3. Export the dashboard definition in JSON format. 
-  (At the top of the screen, the icon with 3 dots lets you "Share dashboard or panel". Select Export... Save to file.)
-   
-
-#### Team's repository
-
-Follow the next steps to define a dashboard in your team's repository
-
-  1. The dashboard should be located in the team’s repository, no change in `infra-deployments` is required,
-  the recommended structure is:
-      ```
-      ├── grafana
-      │   ├── dashboards
-      │   │   └── <teams_dashboard>.json
-      │   ├── <GrafanaDashboard resource file>
-      │   └── kustomization.yaml
-      ```
-      For example:
-      ```
-      ├── grafana
-      │   ├── dashboards
-      │   │   └── example-dashboard.json
-      │   ├── dashboard.yaml
-      │   └── kustomization.yaml
-      ```
-
-  2. Create a folder in your team's repository to maintain the dashboard configuration (e.g. grafana)
+New dashboards can be added through the user interface, preconfigured in the
+infra-deployments repository, or imported from other projects.
+
+### Create a Dashboard
+
+1. [Create a dashboard](https://grafana.com/docs/grafana/v10.4/dashboards/)
+   for your team's view of your service's Service Level Indicators
+   (After navigating to your folder + Create Dashboard).
+
+   > **_Note:_**  Creating a new dashboard manually is available only for development
+                   environment. You may copy and edit the `example` dashboard json
+                   instead, and test the new dashboard on the staging and production
+                   environments. The `example` dashboard json definition can be found
+                   [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
+
+2. Add tiles to the dashboard to track your initial set of service level indicators.
+   If the servicemonitor was added correctly to the stage Prometheus datasource,
+   it will show up in the query list when you edit a tile.
+
+3. Export the dashboard definition in JSON format: At the top of the screen, select the
+   icon with 3 dots and click `Share dashboard or panel` --> `Export` -->
+   `Save to file`.
+
+### Team's Repository
+
+Follow the next steps to define a dashboard in your team's repository:
+
+1. The dashboard should be located in the team’s repository, so no change in
+   `infra-deployments` is required.
+
+   The recommended structure is:
+
+   ```
+   ├── grafana
+   │   ├── dashboards
+   │   │   └── <teams_dashboard>.json
+   │   ├── <GrafanaDashboard resource file>
+   │   └── kustomization.yaml
+   ```
+
+   For example:
+   ```
+   ├── grafana
+   │   ├── dashboards
+   │   │   └── example-dashboard.json
+   │   ├── dashboard.yaml
+   │   └── kustomization.yaml
+   ```
+
+2. Create a folder in your team's repository to maintain the dashboard configuration
+   (e.g. grafana)
   
-  3. Edit the dashboard json file:  
-      - to pick the default predefined datasource Edit the dashboard json file and **remove** `datasource` from it, for example:
-          ```yaml 
-            "datasource": {
-              "type": "prometheus",
-              "uid": "PF224BEF3374A25F8"
-            }
-          ```
-        
-      - Alternatively it is possible to use templating to select a datasource, for example: 
-          ```json
-          "templating": {
-            "list": [
-              {
-                "current": {
-                  "selected": true,
-                  "text": "Prometheus",
-                  "value": "Prometheus"
-                },
-                "hide": 0,
-                "includeAll": false,
-                "multi": false,
-                "name": "datasource",
-                "options": [],
-                "query": "prometheus",
-                "queryValue": "",
-                "refresh": 1,
-                "regex": ".*-(appstudio)-.*",
-                "skipUrlSync": false,
-                "type": "datasource"
-              }
-            ]
-          },
-          ```
+3. Edit the dashboard json file:
+
+   To pick the default predefined datasource, edit the dashboard json file and
+   **remove** `datasource` from it. For example:
+
+   ```yaml
+     "datasource": {
+       "type": "prometheus",
+       "uid": "PF224BEF3374A25F8"
+     }
+   ```
         
-        In this example, the dashboard will use `Prometheus` datasource, with ability to use other datasource that contains `appstudio` in the name.
-      
-  4. Add the dashboard json file to the folder you created.
-
-  5. Create a `kustomization.yaml` to generate a config map from the dashboard json, 
-  and to add the `GrafanaDashboard` resource file (`dashboard.yaml`), for example: 
-      ```yaml
-      kind: Kustomization
-      apiVersion: kustomize.config.k8s.io/v1beta1
-
-      namespace: example
-
-      configMapGenerator:
-        - name: grafana-dashboard-example
-          files:
-            - dashboards/example-dashboard.json
-
-      resources:
-        - dashboard.yaml
-      ```
-  
-  6. Create the `GrafanaDashboard` resource file that uses the config map to create the dashboard
-      ```yaml
-      apiVersion: grafana.integreatly.org/v1beta1
-      kind: GrafanaDashboard
-      metadata:
-        name: grafana-dashboard-example
-        labels:
-          app: appstudio-grafana
-      spec:
-        instanceSelector:
-          matchLabels:
-            dashboards: "appstudio-grafana"
-        configMapRef:
-          name: grafana-dashboard-example
-          key: example-dashboard.json
-      ```
- 7. Push the code to the team's repository
-
- - Check out [this example o11y PR](https://github.com/redhat-appstudio/o11y/pull/39) 
- for creating a dashboard in the team's repository
+   Alternatively it is possible to use templating to select a datasource. For example:
+
+   ```json
+   "templating": {
+     "list": [
+       {
+         "current": {
+           "selected": true,
+           "text": "Prometheus",
+           "value": "Prometheus"
+         },
+         "hide": 0,
+         "includeAll": false,
+         "multi": false,
+         "name": "datasource",
+         "options": [],
+         "query": "prometheus",
+         "queryValue": "",
+         "refresh": 1,
+         "regex": ".*-(appstudio)-.*",
+         "skipUrlSync": false,
+         "type": "datasource"
+       }
+     ]
+   },
+   ```
   
+   In this example, the dashboard will use `Prometheus` datasource, with ability to use
+   other datasource that contains `appstudio` in the name.
+
+4. Add the dashboard json file to the folder you created.
+
+5. Create a `kustomization.yaml` file to generate a config map from the dashboard json,
+   and to add the `GrafanaDashboard` resource file (`dashboard.yaml`). For example:
+
+   ```yaml
+   kind: Kustomization
+   apiVersion: kustomize.config.k8s.io/v1beta1
+
+   namespace: example
+
+   configMapGenerator:
+     - name: grafana-dashboard-example
+       files:
+         - dashboards/example-dashboard.json
+
+   resources:
+     - dashboard.yaml
+   ```
+
+6. Create the `GrafanaDashboard` resource file that uses the config map to create the
+   dashboard:
+
+   ```yaml
+   apiVersion: grafana.integreatly.org/v1beta1
+   kind: GrafanaDashboard
+   metadata:
+     name: grafana-dashboard-example
+     labels:
+       app: appstudio-grafana
+   spec:
+     instanceSelector:
+       matchLabels:
+         dashboards: "appstudio-grafana"
+     configMapRef:
+       name: grafana-dashboard-example
+       key: example-dashboard.json
+   ```
+
+7. Push the code to the team's repository.
+
+Check out [this example o11y PR](https://github.com/redhat-appstudio/o11y/pull/39)
+for creating a dashboard in the team's repository.
+
+### infra-deployments Repository
+
+Follow these steps to add a dashboard to the `infra-deployments` repository:
+
+1. Create a team folder under `components/monitoring/grafana/base/<team_name>`.
+
+2. Create a `kustomization.yaml` file and add the dashboard you created as a resource by
+   using the commit sha as ref. For example:
 
-#### infra-deployments repository
-Follow these steps to add a dashboard to the `infra-deployments` repository
+   ```yaml
+   apiVersion: kustomize.config.k8s.io/v1beta1
+   kind: Kustomization
+   resources:
+     - https://github.com/redhat-appstudio/o11y/grafana/?ref=82bec1c488250ae32d458c77755e432329be1b45
+   ```
 
-  1. Create a team folder under `components/monitoring/grafana/base/<team_name>`
+3. Add your team's folder to the base
+   [kustomization file](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/kustomization.yaml#L14)
+   to automatically add it to future deployments.
   
-  2. Create a `kustomization.yaml` file and add the dashboard you created as a resource by using the commit sha as ref, 
-  for example:
-      ```yaml
-      apiVersion: kustomize.config.k8s.io/v1beta1
-      kind: Kustomization
-      resources:
-        - https://github.com/redhat-appstudio/o11y/grafana/?ref=82bec1c488250ae32d458c77755e432329be1b45
-      ```
-    
-  3. Add your team's folder to the base [kustomization file](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/kustomization.yaml#L14) to automatically add it to future deployments.
-   
-  4. Push the code to the `infra-deployments` repository
+4. Push the code to the `infra-deployments` repository.
 
 
-#### Verification
+### Verification
 
-Follow the next steps to to verify and check your dashboard after merging the configurations
+Follow the next steps to verify and check your dashboard after merging the
+configurations:
 
-1. Open the Grafana UI
+1. Open the Grafana UI.
 
-2. Click the `Manage` option in the `Dashboards` menu
+2. Click the `Manage` option in the `Dashboards` menu.
 
-3. Verify that your team’s dashboard is located under `appstudio-grafana` folder 
+3. Verify that your team’s dashboard is located under `appstudio-grafana` folder.
diff --git a/components/monitoring/prometheus/README.md b/components/monitoring/prometheus/README.md
index b131470a..8f903ab9 100644
--- a/components/monitoring/prometheus/README.md
+++ b/components/monitoring/prometheus/README.md
@@ -1,23 +1,23 @@
-## RHTAP Central Monitoring
-The RHTAP monitoring solution is based on three Prometheus instances deployed to each
-Production and Staging host and member clusters. Each cluster writes a subset of the
+# Konflux Central Monitoring
+The Konflux monitoring solution is based on three Prometheus instances deployed to each
+Production and Staging host and member cluster. Each cluster writes a subset of the
 metrics it generates into Observatorium (RHOBS), marking each metric with a label
 indicating its cluster of origin.
 
-Observatorium holds metrics for RHTAP's tenant in two RHOBS environments – Production
-and one Staging. The metrics collected for each of those environments are available
-for presentation via the AppSRE Grafana instance.
+Observatorium holds metrics for Konflux's tenant in two RHOBS environments – Production
+and Staging. The metrics collected for each of those environments are available for
+presentation via the AppSRE Grafana instance.
 
 ```mermaid
 %%{init: {'theme':'forest'}}%%
 flowchart BT
-  services(RHTAP Services) --> |scrape|UWM
+  services(Konflux Services) --> |scrape|UWM
   pods(kubelet, pods, etc.) --> |scrape|Platform
   UWM(User Workload Monitoring) --> |federate| MS(Monitoring Stack)
   Platform --> |federate|MS(Monitoring Stack)
   MS --> |remote-write|rhobs(Observatorium)
 
-  services2(RHTAP Services) --> |scrape|UWM2
+  services2(Konflux Services) --> |scrape|UWM2
   pods2(kubelet, pods, etc.) --> |scrape|Platform2
   UWM2(User Workload Monitoring) --> |federate| MS2(Monitoring Stack)
   Platform2(Platform) --> |federate|MS2(Monitoring Stack)
@@ -25,7 +25,7 @@ flowchart BT
 
   rhobs --> |scrape|grafana(AppSRE Grafana)
 
-  subgraph member[RHTAP Member Clusters]
+  subgraph member[Konflux Member Clusters]
     services
     pods
     subgraph "cmo member"[Cluster Monitoring Operator]
@@ -35,7 +35,7 @@ flowchart BT
     MS
   end
 
-  subgraph host["RHTAP Host Cluster"]
+  subgraph host["Konflux Host Cluster"]
     services2
     pods2
     subgraph "cmo host"[Cluster Monitoring Operator]
@@ -48,34 +48,30 @@ flowchart BT
   style member color:blue
   style host color:red
 ```
-### Data Plane Clusters Prometheus Instances
+## Data Plane Clusters Prometheus Instances
 We use the
 [Openshift-provided](https://docs.openshift.com/container-platform/4.12/monitoring/monitoring-overview.html)
 Prometheus deployments, Platform and user-workload-monitoring (UWM), alongside a
 Prometheus instance deployed by the RHOBS
 [Observability Operator](https://github.com/rhobs/observability-operator).
 
-#### Platform Prometheus
-Mainly scrapes generic metrics produced by built-in exports such as cAdvisor,
-kube-state-metrics, etc.
+### Platform Prometheus
+Mainly scrapes generic metrics produced by built-in exporters such as cAdvisor and
+kube-state-metrics.
 
-#### User Workload Monitoring (UWM) Prometheus
-Scrapes custom metrics provided by services deployed by the different RHTAP teams, and
+### User Workload Monitoring (UWM) Prometheus
+Scrapes custom metrics provided by services deployed by the different Konflux teams, and
 collected by Service Monitors, also provided by the teams.
 
 In Production and Staging, UWM Prometheus is enabled using OCM (since it maintains the
-Prometheus configurations).  
-The retention is set to 3 days and the retention size is set to 10GiB.  
-It is defined in `components/monitoring/prometheus/base/uwm-config/uwm-config.yaml`
-and it is controlled by ArgoCD.
+Prometheus configurations).
+The retention period and size is maintained using an ArgoCD-controlled
+[ConfigMap](./base/uwm-config/uwm-config.yaml).
 
+In Development this ConfigMap is created implicitly when UWM is enabled. Consequently,
+the retention period and size assume their default values. To configure those for a development environment, edit the  `user-workload-monitoring-config` ConfigMap in
+`openshift-user-workload-monitoring` namespace.
 
-In Development it's enabled without deploying a ConfigMap using ArgoCD 
-(The ConfigMap is created automatically when UWM is enabled)  
-
-The retention is set to default (24h).  
-To configure the retention for development environment, edit the 
-`user-workload-monitoring-config` ConfigMap in `openshift-user-workload-monitoring` namespace.  
 For example:
 ```yaml
 apiVersion: v1
@@ -90,16 +86,16 @@ data:
       retentionSize: 1GiB
 ```
 
-#### Observability Operator (OBO) Prometheus
-Federates the Platform and UWM Prometheus instances.
+### Observability Operator (OBO) Prometheus
+This instance federates the Platform and UWM Prometheus instances.
 
 There are limitations for both built-in Prometheus instances that do not allow us to
-use them to write metrics to RHOBS:
+use them directly to write metrics to RHOBS:
 
 - The configurations of the Platform Prometheus instance are owned by SRE Platform, thus
 we cannot configure this instance to remote-write.
 - Service Monitors for The UWM Prometheus instance are limited for scraping metrics
-from the same namespace in which the Service Monitor is defined. it means that this
+from the same namespace in which the Service Monitor is defined. It means that this
 instance cannot federate the Platform Prometheus instance, thus cannot hold all data
 needed to be exported (it also cannot remote-write metrics coming from different
 namespaces).
@@ -112,15 +108,15 @@ remote-writes selected labels for those metrics to RHOBS, which in turn, makes t
 metrics accessible to AppSRE Grafana.
 
 This Prometheus instance is deployed using a MonitoringStack custom resource provided
-by the Observability Operator. This operator is installed by default in Production and Staging clusters.  
+by the Observability Operator. This operator is installed by default in Production and Staging clusters.
 In Development clusters, it's not installed by default to prevent conflicts with other deployments. 
-It can be installed and configured in development by using the `--obo/-o` flags.  
+It can be installed and configured in development by using the `--obo/-o` flags.
 For example:
 
 `./hack/bootstrap-cluster.sh preview --obo`  
 `./hack/bootstrap-cluster.sh preview -o`
 
-#### Federation and Remote-write
+### Federation and Remote-write
 
 Through Federation and remote-write configurations, only a subset of the metrics and
 the labels collected within the data plane clusters reach RHOBS. For that reason, it
@@ -128,10 +124,10 @@ might be that metrics that are visible via the OCP web console (under Observe --
 Metrics) do not reach RHOBS and are not visible in AppSRE Grafana.
 
 The Platform Prometheus instance monitors a wide variety of resources which are, in
-nature, of an unbound cardinality (e.g. containers, pods, jobs). Consequently, it
-generates a substantial amount of metrics time series that cannot all be forwarded to
-RHOBS. For that reason, we only allow a very small subset of the metrics it scrapes
-to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
+nature, of an unbound cardinality (e.g. containers, pods, jobs, pipelineruns, taskruns).
+Consequently, it generates a substantial amount of metrics time series that cannot all
+be forwarded to RHOBS. For that reason, we only allow a very small subset of the metrics
+it scrapes to be federated by the OBO Prometheus instance (and later remote-written to RHOBS).
 
 The UWM Prometheus instance, on the other hand, generates a very few time series by
 default, and the metrics it is configured to scrape for services are generally of
@@ -145,45 +141,3 @@ will not include some of the labels the same time series have on the data plane
 clusters. The OBO instance is configured to remote-write only specific labels, and if
 the presence of a new label is required in alerting rules or AppSRE Grafana dashboards,
 then this label should be added to the configurations.
-
-##### Troubleshooting Missing Metrics and Labels
-
-There are a few steps to follow when specific metrics or labels are required for new
-alerting rules or Grafana dashboards, but are not present in AppSRE Grafana.
-
-> **_NOTE:_**  While we remote-write the metrics to RHOBS rather than to AppSRE Grafana,
-we don't have an easy way to directly confirm whether metrics are reaching RHOBS or not.
-Instead, we check AppSRE Grafana, assuming no metrics/labels are dropped between RHOBS
-and AppSRE Grafana. Nevertheless, such drops are possible, although far less probable
-comparing to MonitoringStack misconfigurations.
-
-If the metric is missing altogether:
-
-1. Verify that the metric does exist inside its expected cluster of origin by querying
-   for it on the Observe --> Metrics screen on the OCP web console.
-    * If it doesn't, further troubleshoot the service monitor expected to collect the
-      metric and the Kubernetes resource expected to generate it.
-2. While querying for the metric, check the value of its `prometheus` label.
-    * if the value is `openshift-monitoring/k8s`, it means it's being collected by the
-      Platform Prometheus instance. As we only federate specific metrics from this
-      instance, the metric needs to be added to the `match` list under the
-      `appstudio-federate-smon` ServiceMonitor resource within the
-      [MonitoringStack configurations].
-    * if the label value is different, reach out to the o11y team on [Slack][o11y-slack]
-3. Once added, the metric should be federated by the OBO instance and remote-written to
-   RHOBS.
-
-If the metric is present, but labels are missing:
-
-1. Verify that the labels do exist when querying for the metric through the OCP web
-   console.
-    * If not, further troubleshoot the resource that should export or instrument
-      the metric.
-2. Add the missing labels to the `LabelKeep` action's `regex` field within the
-   `MonitoringStack` resource definition in the [MonitoringStack configurations].
-3. Once added, the label should be remote-written by the OBO instance to RHOBS.
-
-For further assistance, reach out to the o11y team on [Slack][o11y-slack].
-
-[MonitoringStack configurations]: base/monitoringstack/monitoringstack.yaml
-[o11y-slack]: https://redhat-internal.slack.com/archives/C04FDFTF8EB 
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
```
 
</details> 
<br> 


</div>
