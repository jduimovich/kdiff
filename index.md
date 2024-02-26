# kustomize changes tracked by commits 
### This file generated at Mon Feb 26 20:04:14 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f2e18b77 to e96f4781 on Mon Feb 26 18:51:10 2024 </h3>  
 
<details> 
<summary>Git Diff (152 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ee2d63df..c1611035 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
new file mode 100644
index 00000000..37ff29d7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/host-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  targetNamespaces:
+  - toolchain-host-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-host-operator
+  source: dev-sandbox-host
+  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index ee2d63df..c1611035 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
new file mode 100644
index 00000000..37ff29d7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/host-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  targetNamespaces:
+  - toolchain-host-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-host-operator
+  source: dev-sandbox-host
+  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index bdf7ce4f..e97d3866 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
new file mode 100644
index 00000000..093eb236
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/member-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  targetNamespaces:
+  - toolchain-member-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-member-operator
+  source: dev-sandbox-member
+  sourceNamespace: toolchain-member-operator 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f2e18b77 to e96f4781 on Mon Feb 26 18:51:10 2024 </h3>  
 
<details> 
<summary>Git Diff (152 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ee2d63df..c1611035 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
new file mode 100644
index 00000000..37ff29d7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/host-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  targetNamespaces:
+  - toolchain-host-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-host-operator
+  source: dev-sandbox-host
+  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index ee2d63df..c1611035 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
new file mode 100644
index 00000000..37ff29d7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/host-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  targetNamespaces:
+  - toolchain-host-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-host-operator
+  source: dev-sandbox-host
+  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index bdf7ce4f..e97d3866 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
new file mode 100644
index 00000000..093eb236
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/member-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  targetNamespaces:
+  - toolchain-member-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-member-operator
+  source: dev-sandbox-member
+  sourceNamespace: toolchain-member-operator 
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
<h3>1: Development changes from f2e18b77 to e96f4781 on Mon Feb 26 18:51:10 2024 </h3>  
 
<details> 
<summary>Git Diff (152 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
index ee2d63df..c1611035 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
new file mode 100644
index 00000000..37ff29d7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/toolchain-host-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/host-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  targetNamespaces:
+  - toolchain-host-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-host-operator
+  source: dev-sandbox-host
+  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
index ee2d63df..c1611035 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/kustomization.yaml
@@ -4,3 +4,4 @@ resources:
 - ../../base
 - toolchainconfig.yaml
 - space-provisioner-configs.yaml
+- toolchain-host-operator.yaml
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
new file mode 100644
index 00000000..37ff29d7
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/toolchain-host-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/host-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  targetNamespaces:
+  - toolchain-host-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-host
+  namespace: toolchain-host-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-host-operator
+  source: dev-sandbox-host
+  sourceNamespace: toolchain-host-operator
\ No newline at end of file
diff --git a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
index bdf7ce4f..e97d3866 100644
--- a/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
+++ b/components/sandbox/toolchain-member-operator/staging/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
+- toolchain-member-operator.yaml
diff --git a/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml b/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
new file mode 100644
index 00000000..093eb236
--- /dev/null
+++ b/components/sandbox/toolchain-member-operator/staging/toolchain-member-operator.yaml
@@ -0,0 +1,35 @@
+apiVersion: operators.coreos.com/v1alpha1
+kind: CatalogSource
+metadata:
+  labels:
+    opsrc-provider: codeready-toolchain
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  displayName: Dev Sandbox Operators
+  image: quay.io/codeready-toolchain/member-operator-index:latest
+  sourceType: grpc
+  updateStrategy:
+    registryPoll:
+      interval: 5m0s
+---
+apiVersion: operators.coreos.com/v1
+kind: OperatorGroup
+metadata:
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  targetNamespaces:
+  - toolchain-member-operator
+---
+apiVersion: operators.coreos.com/v1alpha1
+kind: Subscription
+metadata:
+  name: dev-sandbox-member
+  namespace: toolchain-member-operator
+spec:
+  channel: staging
+  installPlanApproval: Automatic
+  name: toolchain-member-operator
+  source: dev-sandbox-member
+  sourceNamespace: toolchain-member-operator 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 81c00b2e to f2e18b77 on Mon Feb 26 16:57:29 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index eb0fbd17..772b0111 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=5fcf3f77407ebae45f284abd9a145bada9026f6c
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8909172b122d9ddc466da90971993ae01d3f0518
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 5fcf3f77407ebae45f284abd9a145bada9026f6c
+  newTag: 8909172b122d9ddc466da90971993ae01d3f0518
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 6575ad8c..23955b95 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=5fcf3f77407ebae45f284abd9a145bada9026f6c
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8909172b122d9ddc466da90971993ae01d3f0518
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 5fcf3f77407ebae45f284abd9a145bada9026f6c
+  newTag: 8909172b122d9ddc466da90971993ae01d3f0518 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 81c00b2e to f2e18b77 on Mon Feb 26 16:57:29 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index eb0fbd17..772b0111 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=5fcf3f77407ebae45f284abd9a145bada9026f6c
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8909172b122d9ddc466da90971993ae01d3f0518
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 5fcf3f77407ebae45f284abd9a145bada9026f6c
+  newTag: 8909172b122d9ddc466da90971993ae01d3f0518
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 6575ad8c..23955b95 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=5fcf3f77407ebae45f284abd9a145bada9026f6c
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8909172b122d9ddc466da90971993ae01d3f0518
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 5fcf3f77407ebae45f284abd9a145bada9026f6c
+  newTag: 8909172b122d9ddc466da90971993ae01d3f0518 
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
<h3>2: Development changes from 81c00b2e to f2e18b77 on Mon Feb 26 16:57:29 2024 </h3>  
 
<details> 
<summary>Git Diff (35 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index eb0fbd17..772b0111 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=5fcf3f77407ebae45f284abd9a145bada9026f6c
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8909172b122d9ddc466da90971993ae01d3f0518
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 5fcf3f77407ebae45f284abd9a145bada9026f6c
+  newTag: 8909172b122d9ddc466da90971993ae01d3f0518
 
 patches:
   - path: auto-assign-role-patch.yaml
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 6575ad8c..23955b95 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,9 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=5fcf3f77407ebae45f284abd9a145bada9026f6c
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8909172b122d9ddc466da90971993ae01d3f0518
 
 images:
 - name: quay.io/redhat-appstudio/o11y
   newName: quay.io/redhat-appstudio/o11y
-  newTag: 5fcf3f77407ebae45f284abd9a145bada9026f6c
+  newTag: 8909172b122d9ddc466da90971993ae01d3f0518 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 53175b3e to 81c00b2e on Mon Feb 26 14:56:28 2024 </h3>  
 
<details> 
<summary>Git Diff (130 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ca-bundle/ca-bundle.yaml b/argo-cd-apps/base/ca-bundle/ca-bundle.yaml
new file mode 100644
index 00000000..97de4afc
--- /dev/null
+++ b/argo-cd-apps/base/ca-bundle/ca-bundle.yaml
@@ -0,0 +1,45 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ca-bundle
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ca-bundle
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ca-bundle-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/internal-infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: openshift-config
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          # prune is false because of https://github.com/argoproj/argo-cd/issues/5792
+          prune: false
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=false
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/ca-bundle/kustomization.yaml b/argo-cd-apps/base/ca-bundle/kustomization.yaml
new file mode 100644
index 00000000..8ac8a2fc
--- /dev/null
+++ b/argo-cd-apps/base/ca-bundle/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ca-bundle.yaml
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index f45ea4a8..f6122b31 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -6,5 +6,6 @@ resources:
 components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
+  - ../../../k-components/assign-internal-cluster-role-to-local-cluster
 commonLabels:
   appstudio.redhat.com/quality-dashboard: "true"
diff --git a/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..7644334b
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/internal-member-cluster: "true"
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 39aeae1c..4ce01c97 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -58,3 +58,9 @@ kind: ApplicationSet
 metadata:
   name: smee
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ca-bundle
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 10537455..f622af08 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/member
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
+  - ../../base/ca-bundle
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -107,3 +108,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index a1606a9e..f4d7d6c3 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../staging
   - ../../base/smee-client
   - ../../base/ui
+  - ../../base/ca-bundle
 patchesStrategicMerge:
   - delete-applications.yaml
 patches: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 53175b3e to 81c00b2e on Mon Feb 26 14:56:28 2024 </h3>  
 
<details> 
<summary>Git Diff (130 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ca-bundle/ca-bundle.yaml b/argo-cd-apps/base/ca-bundle/ca-bundle.yaml
new file mode 100644
index 00000000..97de4afc
--- /dev/null
+++ b/argo-cd-apps/base/ca-bundle/ca-bundle.yaml
@@ -0,0 +1,45 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ca-bundle
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ca-bundle
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ca-bundle-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/internal-infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: openshift-config
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          # prune is false because of https://github.com/argoproj/argo-cd/issues/5792
+          prune: false
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=false
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/ca-bundle/kustomization.yaml b/argo-cd-apps/base/ca-bundle/kustomization.yaml
new file mode 100644
index 00000000..8ac8a2fc
--- /dev/null
+++ b/argo-cd-apps/base/ca-bundle/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ca-bundle.yaml
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index f45ea4a8..f6122b31 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -6,5 +6,6 @@ resources:
 components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
+  - ../../../k-components/assign-internal-cluster-role-to-local-cluster
 commonLabels:
   appstudio.redhat.com/quality-dashboard: "true"
diff --git a/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..7644334b
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/internal-member-cluster: "true"
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 39aeae1c..4ce01c97 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -58,3 +58,9 @@ kind: ApplicationSet
 metadata:
   name: smee
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ca-bundle
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 10537455..f622af08 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/member
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
+  - ../../base/ca-bundle
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -107,3 +108,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index a1606a9e..f4d7d6c3 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../staging
   - ../../base/smee-client
   - ../../base/ui
+  - ../../base/ca-bundle
 patchesStrategicMerge:
   - delete-applications.yaml
 patches: 
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
<h3>3: Development changes from 53175b3e to 81c00b2e on Mon Feb 26 14:56:28 2024 </h3>  
 
<details> 
<summary>Git Diff (130 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/ca-bundle/ca-bundle.yaml b/argo-cd-apps/base/ca-bundle/ca-bundle.yaml
new file mode 100644
index 00000000..97de4afc
--- /dev/null
+++ b/argo-cd-apps/base/ca-bundle/ca-bundle.yaml
@@ -0,0 +1,45 @@
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ca-bundle
+spec:
+  generators:
+    - merge:
+        mergeKeys:
+          - nameNormalized
+        generators:
+          - clusters:
+              values:
+                sourceRoot: components/ca-bundle
+                environment: staging
+                clusterDir: ""
+              selector:
+                matchLabels:
+                  appstudio.redhat.com/internal-member-cluster: "true"
+          - list:
+              elements: []
+  template:
+    metadata:
+      name: ca-bundle-{{nameNormalized}}
+    spec:
+      project: default
+      source:
+        path: '{{values.sourceRoot}}/{{values.environment}}/{{values.clusterDir}}'
+        repoURL: https://github.com/redhat-appstudio/internal-infra-deployments.git
+        targetRevision: main
+      destination:
+        namespace: openshift-config
+        server: '{{server}}'
+      syncPolicy:
+        automated:
+          # prune is false because of https://github.com/argoproj/argo-cd/issues/5792
+          prune: false
+          selfHeal: true
+        syncOptions:
+          - CreateNamespace=false
+        retry:
+          limit: -1
+          backoff:
+            duration: 10s
+            factor: 2
+            maxDuration: 3m
diff --git a/argo-cd-apps/base/ca-bundle/kustomization.yaml b/argo-cd-apps/base/ca-bundle/kustomization.yaml
new file mode 100644
index 00000000..8ac8a2fc
--- /dev/null
+++ b/argo-cd-apps/base/ca-bundle/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ca-bundle.yaml
diff --git a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
index f45ea4a8..f6122b31 100644
--- a/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
+++ b/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
@@ -6,5 +6,6 @@ resources:
 components:
   - ../../../k-components/assign-host-role-to-local-cluster
   - ../../../k-components/assign-member-role-to-local-cluster
+  - ../../../k-components/assign-internal-cluster-role-to-local-cluster
 commonLabels:
   appstudio.redhat.com/quality-dashboard: "true"
diff --git a/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml b/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml
new file mode 100644
index 00000000..7644334b
--- /dev/null
+++ b/argo-cd-apps/k-components/assign-internal-cluster-role-to-local-cluster/kustomization.yaml
@@ -0,0 +1,5 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+commonLabels:
+  appstudio.redhat.com/internal-member-cluster: "true"
diff --git a/argo-cd-apps/overlays/development/delete-applications.yaml b/argo-cd-apps/overlays/development/delete-applications.yaml
index 39aeae1c..4ce01c97 100644
--- a/argo-cd-apps/overlays/development/delete-applications.yaml
+++ b/argo-cd-apps/overlays/development/delete-applications.yaml
@@ -58,3 +58,9 @@ kind: ApplicationSet
 metadata:
   name: smee
 $patch: delete
+---
+apiVersion: argoproj.io/v1alpha1
+kind: ApplicationSet
+metadata:
+  name: ca-bundle
+$patch: delete
diff --git a/argo-cd-apps/overlays/development/kustomization.yaml b/argo-cd-apps/overlays/development/kustomization.yaml
index 10537455..f622af08 100644
--- a/argo-cd-apps/overlays/development/kustomization.yaml
+++ b/argo-cd-apps/overlays/development/kustomization.yaml
@@ -7,6 +7,7 @@ resources:
   - ../../base/member
   - ../../base/member/optional/infra-deployments/spi-vault
   - ../../base/all-clusters
+  - ../../base/ca-bundle
 
 patchesStrategicMerge:
   - delete-applications.yaml
@@ -107,3 +108,8 @@ patches:
       kind: ApplicationSet
       version: v1alpha1
       name: smee
+  - path: development-overlay-patch.yaml
+    target:
+      kind: ApplicationSet
+      version: v1alpha1
+      name: ca-bundle
diff --git a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
index a1606a9e..f4d7d6c3 100644
--- a/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
   - ../staging
   - ../../base/smee-client
   - ../../base/ui
+  - ../../base/ca-bundle
 patchesStrategicMerge:
   - delete-applications.yaml
 patches: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-53175b3e/development/app-of-apps-development.yaml
6d5
<     appstudio.redhat.com/internal-member-cluster: "true" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 655a03f7 to 53175b3e on Mon Feb 26 10:35:27 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index fc1bc646..9f99cbcb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
+  newTag: b37833f64c8017c942ba95ca648d3b880b39af62
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-655a03f7/production/components/integration/production/kustomize.out.yaml
1175c1175
<         image: quay.io/redhat-appstudio/integration-service:b37833f64c8017c942ba95ca648d3b880b39af62
---
>         image: quay.io/redhat-appstudio/integration-service:4991b9f708950233ca29f03bcadb715a8ddaecc2 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 655a03f7 to 53175b3e on Mon Feb 26 10:35:27 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index fc1bc646..9f99cbcb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
+  newTag: b37833f64c8017c942ba95ca648d3b880b39af62
 
 namespace: integration-service
  
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
<h3>4: Development changes from 655a03f7 to 53175b3e on Mon Feb 26 10:35:27 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index fc1bc646..9f99cbcb 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=4991b9f708950233ca29f03bcadb715a8ddaecc2
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 4991b9f708950233ca29f03bcadb715a8ddaecc2
+  newTag: b37833f64c8017c942ba95ca648d3b880b39af62
 
 namespace: integration-service
  
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
```
 
</details> 
<br> 


</div>
