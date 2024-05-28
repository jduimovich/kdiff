# kustomize changes tracked by commits 
### This file generated at Tue May 28 00:06:08 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6efcbb22 to d0487fc0 on Mon May 27 18:57:01 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
index 07ed827a..adb3e5e5 100644
--- a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
+++ b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
@@ -39,3 +39,26 @@ spec:
   name: toolchain-host-operator
   source: dev-sandbox-host
   sourceNamespace: toolchain-host-operator
+---
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-from-olm
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+spec:
+  podSelector:
+    matchLabels:
+      olm.catalogSource: dev-sandbox-host
+  ingress:
+    - ports:
+        - protocol: TCP
+          port: 50051
+      from:
+        - podSelector: {}
+          namespaceSelector:
+            matchLabels:
+              kubernetes.io/metadata.name: openshift-operator-lifecycle-manager
+  policyTypes:
+    - Ingress 
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
<h3>1: Staging changes from 6efcbb22 to d0487fc0 on Mon May 27 18:57:01 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
index 07ed827a..adb3e5e5 100644
--- a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
+++ b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
@@ -39,3 +39,26 @@ spec:
   name: toolchain-host-operator
   source: dev-sandbox-host
   sourceNamespace: toolchain-host-operator
+---
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-from-olm
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+spec:
+  podSelector:
+    matchLabels:
+      olm.catalogSource: dev-sandbox-host
+  ingress:
+    - ports:
+        - protocol: TCP
+          port: 50051
+      from:
+        - podSelector: {}
+          namespaceSelector:
+            matchLabels:
+              kubernetes.io/metadata.name: openshift-operator-lifecycle-manager
+  policyTypes:
+    - Ingress 
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
<h3>1: Development changes from 6efcbb22 to d0487fc0 on Mon May 27 18:57:01 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
index 07ed827a..adb3e5e5 100644
--- a/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
+++ b/components/sandbox/toolchain-host-operator/base/olm/toolchain-host-operator.yaml
@@ -39,3 +39,26 @@ spec:
   name: toolchain-host-operator
   source: dev-sandbox-host
   sourceNamespace: toolchain-host-operator
+---
+kind: NetworkPolicy
+apiVersion: networking.k8s.io/v1
+metadata:
+  name: allow-from-olm
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-wave: "-5"
+spec:
+  podSelector:
+    matchLabels:
+      olm.catalogSource: dev-sandbox-host
+  ingress:
+    - ports:
+        - protocol: TCP
+          port: 50051
+      from:
+        - podSelector: {}
+          namespaceSelector:
+            matchLabels:
+              kubernetes.io/metadata.name: openshift-operator-lifecycle-manager
+  policyTypes:
+    - Ingress 
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
<h3>2: Production changes from 4c5c9643 to 6efcbb22 on Mon May 27 15:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
index 6322d595..20e812ed 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p02"
+    "value": "stone-prod-p02/rs-p02"
   }
 ]
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
index 86bbf0d7..3530485a 100644
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p02"
+    "value": "stone-prod-p02/spi-p02"
   }
 ] 
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
<h3>2: Staging changes from 4c5c9643 to 6efcbb22 on Mon May 27 15:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
index 6322d595..20e812ed 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p02"
+    "value": "stone-prod-p02/rs-p02"
   }
 ]
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
index 86bbf0d7..3530485a 100644
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p02"
+    "value": "stone-prod-p02/spi-p02"
   }
 ] 
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
<h3>2: Development changes from 4c5c9643 to 6efcbb22 on Mon May 27 15:14:15 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
index 6322d595..20e812ed 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/rs-p02"
+    "value": "stone-prod-p02/rs-p02"
   }
 ]
diff --git a/components/spi/overlays/production/stone-prod-p02/config-patch.json b/components/spi/overlays/production/stone-prod-p02/config-patch.json
index 86bbf0d7..3530485a 100644
--- a/components/spi/overlays/production/stone-prod-p02/config-patch.json
+++ b/components/spi/overlays/production/stone-prod-p02/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "stone-prod/spi-p02"
+    "value": "stone-prod-p02/spi-p02"
   }
 ] 
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
<h3>3: Production changes from 5dc212a6 to 4c5c9643 on Mon May 27 14:25:25 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 984320e7..68432c50 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
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
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-5dc212a6/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1457c1457
<         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>         image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
1548c1548
<             image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>             image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
./commit-5dc212a6/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1457c1457
<         image: quay.io/redhat-appstudio/integration-service:d00547f344dcbc938efd6715ef93a55a121c0d49
---
>         image: quay.io/redhat-appstudio/integration-service:863a17bf721ce17f20f1cfd6c461c190435e877e
1548c1548
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from 5dc212a6 to 4c5c9643 on Mon May 27 14:25:25 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 984320e7..68432c50 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 5dc212a6 to 4c5c9643 on Mon May 27 14:25:25 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 984320e7..68432c50 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ec3e0812 to 5dc212a6 on Mon May 27 13:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
index 9aaf74ba..b9c52c55 100644
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 16f465bb..bdc1c000 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1703,7 +1703,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1724,7 +1724,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
index 518ba51b..43ad693f 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
index 4f7cd624..49e8f450 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-ec3e0812/production/components/gitops/production/stone-prod-p02/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
./commit-ec3e0812/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1706c1706
<       key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
---
>       key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
1727c1727
<       key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
---
>       key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3 
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
<h3>4: Staging changes from ec3e0812 to 5dc212a6 on Mon May 27 13:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
index 9aaf74ba..b9c52c55 100644
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 16f465bb..bdc1c000 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1703,7 +1703,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1724,7 +1724,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
index 518ba51b..43ad693f 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
index 4f7cd624..49e8f450 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager 
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
<h3>4: Development changes from ec3e0812 to 5dc212a6 on Mon May 27 13:18:56 2024 </h3>  
 
<details> 
<summary>Git Diff (80 lines)</summary>  

``` 
diff --git a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
index 9aaf74ba..b9c52c55 100644
--- a/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/production/stone-prod-p02/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-gitopsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 16f465bb..bdc1c000 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1703,7 +1703,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1724,7 +1724,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+      key: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
index 518ba51b..43ad693f 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-rds
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-rds
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
index 4f7cd624..49e8f450 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/stone-prod-p02-plnsvc-s3
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/stone-prod-p02-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/production/stone-prod-p02/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
diff --git a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
index 0bee6e0e..90f08b79 100644
--- a/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/production/stone-prod-p02/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/appsrep09ue1/stone-prod-p02/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsrep09ue1/konflux-internal-prod/spi-secrets-manager 
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
