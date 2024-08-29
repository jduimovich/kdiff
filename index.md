# kustomize changes tracked by commits 
### This file generated at Thu Aug 29 00:10:26 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 63681f2c to 902c28b5 on Wed Aug 28 22:08:21 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 74c0a289..85baae96 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -8,3 +8,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   resourceTrackingMethod: annotation
+  rbac:
+    policy: |
+      g, system:cluster-admins, role:admin
+      g, system:authenticated, role:readonly
diff --git a/components/cluster-as-a-service/development/argocd-rbac.yaml b/components/cluster-as-a-service/development/argocd-rbac.yaml
new file mode 100644
index 00000000..9739d9ea
--- /dev/null
+++ b/components/cluster-as-a-service/development/argocd-rbac.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/rbac/policy
+  value: g, system:authenticated, role:admin
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 2d374f0d..d4c4d41a 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -9,3 +9,7 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       version: v1alpha1
+  - path: argocd-rbac.yaml
+    target:
+      group: argoproj.io
+      kind: ArgoCD 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (6 lines)</summary>  

``` 
./commit-63681f2c/production/components/cluster-as-a-service/production/kustomize.out.yaml
248,251d247
<   rbac:
<     policy: |
<       g, system:cluster-admins, role:admin
<       g, system:authenticated, role:readonly 
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
<h3>1: Staging changes from 63681f2c to 902c28b5 on Wed Aug 28 22:08:21 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 74c0a289..85baae96 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -8,3 +8,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   resourceTrackingMethod: annotation
+  rbac:
+    policy: |
+      g, system:cluster-admins, role:admin
+      g, system:authenticated, role:readonly
diff --git a/components/cluster-as-a-service/development/argocd-rbac.yaml b/components/cluster-as-a-service/development/argocd-rbac.yaml
new file mode 100644
index 00000000..9739d9ea
--- /dev/null
+++ b/components/cluster-as-a-service/development/argocd-rbac.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/rbac/policy
+  value: g, system:authenticated, role:admin
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 2d374f0d..d4c4d41a 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -9,3 +9,7 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       version: v1alpha1
+  - path: argocd-rbac.yaml
+    target:
+      group: argoproj.io
+      kind: ArgoCD 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (6 lines)</summary>  

``` 
./commit-63681f2c/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
248,251d247
<   rbac:
<     policy: |
<       g, system:cluster-admins, role:admin
<       g, system:authenticated, role:readonly 
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
<h3>1: Development changes from 63681f2c to 902c28b5 on Wed Aug 28 22:08:21 2024 </h3>  
 
<details> 
<summary>Git Diff (34 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 74c0a289..85baae96 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -8,3 +8,7 @@ metadata:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 spec:
   resourceTrackingMethod: annotation
+  rbac:
+    policy: |
+      g, system:cluster-admins, role:admin
+      g, system:authenticated, role:readonly
diff --git a/components/cluster-as-a-service/development/argocd-rbac.yaml b/components/cluster-as-a-service/development/argocd-rbac.yaml
new file mode 100644
index 00000000..9739d9ea
--- /dev/null
+++ b/components/cluster-as-a-service/development/argocd-rbac.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/rbac/policy
+  value: g, system:authenticated, role:admin
diff --git a/components/cluster-as-a-service/development/kustomization.yaml b/components/cluster-as-a-service/development/kustomization.yaml
index 2d374f0d..d4c4d41a 100644
--- a/components/cluster-as-a-service/development/kustomization.yaml
+++ b/components/cluster-as-a-service/development/kustomization.yaml
@@ -9,3 +9,7 @@ patches:
       group: argoproj.io
       kind: ApplicationSet
       version: v1alpha1
+  - path: argocd-rbac.yaml
+    target:
+      group: argoproj.io
+      kind: ArgoCD 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-63681f2c/development/components/cluster-as-a-service/development/kustomize.out.yaml
179,180d178
<   rbac:
<     policy: g, system:authenticated, role:admin 
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
<h3>2: Production changes from 949b4ac5 to 63681f2c on Wed Aug 28 21:29:49 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8deed9b9..3c90cdd6 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 61d7e75a..295e1467 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
+      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-949b4ac5/production/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
388c388
<   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
---
>   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361 
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
<h3>2: Staging changes from 949b4ac5 to 63681f2c on Wed Aug 28 21:29:49 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8deed9b9..3c90cdd6 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 61d7e75a..295e1467 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
+      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-949b4ac5/staging/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
388c388
<   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
---
>   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361 
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
<h3>2: Development changes from 949b4ac5 to 63681f2c on Wed Aug 28 21:29:49 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8deed9b9..3c90cdd6 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 61d7e75a..295e1467 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=3a8d70b9357ad7bf6928041704ddc89924105341
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=bdaa00818ed31688c77e95de0b9ac81170341b10
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
+      - verify_ec_task_git_revision=90bf60bfe0a43f7582c0c7e1d275adb2c759da39
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-949b4ac5/development/components/enterprise-contract/kustomize.out.yaml
386c386
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:90bf60bfe0a43f7582c0c7e1d275adb2c759da39@sha256:1f87a63c5c88b3710368a701afca0866d17632c35f4fad665da1124047abe1af
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2fdddbbfdf5f2ba251a70b6378847a2b3630da4b@sha256:8b99931ede5978df6c49026808793b276c6dee8299f300e61cda9212bc5d4f9b
388c388
<   verify_ec_task_git_revision: 90bf60bfe0a43f7582c0c7e1d275adb2c759da39
---
>   verify_ec_task_git_revision: 2fdddbbfdf5f2ba251a70b6378847a2b3630da4b
619c619
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
641c641
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
666c666
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361
685c685
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-a6bd2a8@sha256:c64501c97ce407efec5c258e3054b7d8142d50aa7d6b27babdb597c3df076f4f
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-87eaea0@sha256:4add881f5bf7817dabd0e2d02ae591d8202bf5bf4e7a5730d7acea5828befd96
709c709
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-00fcc20@sha256:b8a070cb63fd2bdc73bba448e427be14cdb4887ec20a88369c33916a06249159
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-7e2e0f4@sha256:2b937723067c1c1f46cd8a28ad8c387e4372a3cc3e30d506cd339eed29933361 
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
<h3>3: Production changes from 86b4a901 to 949b4ac5 on Wed Aug 28 19:56:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 0f300634..64594427 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -107,6 +107,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="watcher_workqueue_depth"}'
         - '{__name__="watcher_client_latency_bucket"}'
+        - '{__name__="pac_watcher_work_queue_depth"}'
+        - '{__name__="pac_watcher_client_latency_bucket"}'
         - '{__name__="grpc_server_handled_total", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>3: Staging changes from 86b4a901 to 949b4ac5 on Wed Aug 28 19:56:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 0f300634..64594427 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -107,6 +107,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="watcher_workqueue_depth"}'
         - '{__name__="watcher_client_latency_bucket"}'
+        - '{__name__="pac_watcher_work_queue_depth"}'
+        - '{__name__="pac_watcher_client_latency_bucket"}'
         - '{__name__="grpc_server_handled_total", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>3: Development changes from 86b4a901 to 949b4ac5 on Wed Aug 28 19:56:20 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 0f300634..64594427 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -107,6 +107,8 @@ spec:
         - '{__name__="tekton_pipelines_controller_pipelinerun_duration_seconds_count"}'
         - '{__name__="watcher_workqueue_depth"}'
         - '{__name__="watcher_client_latency_bucket"}'
+        - '{__name__="pac_watcher_work_queue_depth"}'
+        - '{__name__="pac_watcher_client_latency_bucket"}'
         - '{__name__="grpc_server_handled_total", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}' 
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
<h3>4: Production changes from 21b07204 to 86b4a901 on Wed Aug 28 18:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (357 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 65558c72..2d8a99f0 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -38,8 +38,8 @@ objects:
   spec:
     quota:
       hard:
-        count/ingresses.extensions: "30"
-        count/routes.route.openshift.io: "30"
+        count/ingresses.extensions: "0"
+        count/routes.route.openshift.io: "0"
     selector:
       annotations: null
       labels:
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources 
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
<h3>4: Staging changes from 21b07204 to 86b4a901 on Wed Aug 28 18:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (357 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 65558c72..2d8a99f0 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -38,8 +38,8 @@ objects:
   spec:
     quota:
       hard:
-        count/ingresses.extensions: "30"
-        count/routes.route.openshift.io: "30"
+        count/ingresses.extensions: "0"
+        count/routes.route.openshift.io: "0"
     selector:
       annotations: null
       labels:
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources 
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
<h3>4: Development changes from 21b07204 to 86b4a901 on Wed Aug 28 18:25:43 2024 </h3>  
 
<details> 
<summary>Git Diff (357 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/production/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/production/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources
diff --git a/components/sandbox/tiers/src/appstudio-env/cluster.yaml b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
index 65558c72..2d8a99f0 100644
--- a/components/sandbox/tiers/src/appstudio-env/cluster.yaml
+++ b/components/sandbox/tiers/src/appstudio-env/cluster.yaml
@@ -38,8 +38,8 @@ objects:
   spec:
     quota:
       hard:
-        count/ingresses.extensions: "30"
-        count/routes.route.openshift.io: "30"
+        count/ingresses.extensions: "0"
+        count/routes.route.openshift.io: "0"
     selector:
       annotations: null
       labels:
diff --git a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
index 4032211b..03032f79 100644
--- a/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/kustomization.yaml
@@ -7,6 +7,7 @@ kind: Kustomization
 resources:
 - nstemplatetier-appstudio-env.yaml
 - tiertemplate-appstudio-env-admin-37575401-37575401.yaml
+- tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
 - tiertemplate-appstudio-env-clusterresources-266544570-266544570.yaml
 - tiertemplate-appstudio-env-contributor-37575401-37575401.yaml
 - tiertemplate-appstudio-env-env-1082365650-1082365650.yaml
diff --git a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
index 8df3e412..e34ad361 100644
--- a/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
+++ b/components/sandbox/tiers/staging/appstudio-env/nstemplatetier-appstudio-env.yaml
@@ -9,7 +9,7 @@ metadata:
   namespace: toolchain-host-operator
 spec:
   clusterResources:
-    templateRef: appstudio-env-clusterresources-266544570-266544570
+    templateRef: appstudio-env-clusterresources-1854252301-1854252301
   namespaces:
   - templateRef: appstudio-env-env-1082365650-1082365650
   spaceRequestConfig:
diff --git a/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
new file mode 100644
index 00000000..9e9b79cc
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio-env/tiertemplate-appstudio-env-clusterresources-1854252301-1854252301.yaml
@@ -0,0 +1,140 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-env-clusterresources-1854252301-1854252301
+  namespace: toolchain-host-operator
+spec:
+  revision: 1854252301-1854252301
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-deployments
+      spec:
+        quota:
+          hard:
+            count/deploymentconfigs.apps: "30"
+            count/deployments.apps: "30"
+            count/pods: "150"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-replicas
+      spec:
+        quota:
+          hard:
+            count/replicasets.apps: "30"
+            count/replicationcontrollers: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-routes
+      spec:
+        quota:
+          hard:
+            count/ingresses.extensions: "0"
+            count/routes.route.openshift.io: "0"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-jobs
+      spec:
+        quota:
+          hard:
+            count/cronjobs.batch: "30"
+            count/daemonsets.apps: "30"
+            count/jobs.batch: "30"
+            count/statefulsets.apps: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-services
+      spec:
+        quota:
+          hard:
+            count/services: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-bc
+      spec:
+        quota:
+          hard:
+            count/buildconfigs.build.openshift.io: "30"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-secrets
+      spec:
+        quota:
+          hard:
+            count/secrets: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: quota.openshift.io/v1
+      kind: ClusterResourceQuota
+      metadata:
+        name: for-${SPACE_NAME}-cm
+      spec:
+        quota:
+          hard:
+            count/configmaps: "100"
+        selector:
+          annotations: null
+          labels:
+            matchLabels:
+              toolchain.dev.openshift.com/space: ${SPACE_NAME}
+    - apiVersion: toolchain.dev.openshift.com/v1alpha1
+      kind: Idler
+      metadata:
+        name: ${SPACE_NAME}-env
+      spec:
+        timeoutSeconds: ${{IDLER_TIMEOUT_SECONDS}}
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: IDLER_TIMEOUT_SECONDS
+      value: "0"
+  tierName: appstudio-env
+  type: clusterresources 
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
