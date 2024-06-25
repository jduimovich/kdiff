# kustomize changes tracked by commits 
### This file generated at Tue Jun 25 16:16:41 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 717549ac to da3b4316 on Tue Jun 25 15:30:55 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 2cfb3cb9..60459450 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,3 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..3fa41ce9
--- /dev/null
+++ b/components/mintmaker/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2048Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-717549ac/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
541c541
<             memory: 2048Mi
---
>             memory: 512Mi
543c543
<             cpu: 100m
---
>             cpu: 10m
./commit-717549ac/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
541c541
<             memory: 2048Mi
---
>             memory: 512Mi
543c543
<             cpu: 100m
---
>             cpu: 10m 
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
<h3>1: Staging changes from 717549ac to da3b4316 on Tue Jun 25 15:30:55 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 2cfb3cb9..60459450 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,3 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..3fa41ce9
--- /dev/null
+++ b/components/mintmaker/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2048Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi 
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
<h3>1: Development changes from 717549ac to da3b4316 on Tue Jun 25 15:30:55 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 2cfb3cb9..60459450 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -22,3 +22,4 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
+  - path: manager_resources_patch.yaml
diff --git a/components/mintmaker/production/base/manager_resources_patch.yaml b/components/mintmaker/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..3fa41ce9
--- /dev/null
+++ b/components/mintmaker/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+  namespace: system
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2048Mi
+          requests:
+            cpu: 100m
+            memory: 256Mi 
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
<h3>2: Production changes from 1111d7b0 to 717549ac on Tue Jun 25 14:44:50 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/OWNERS b/components/mintmaker/OWNERS
index 7ab9f2af..397be3b9 100644
--- a/components/mintmaker/OWNERS
+++ b/components/mintmaker/OWNERS
@@ -1,7 +1,11 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
+- gnaponie
+- qixiang
 - scoheb
 
 reviewers:
+- gnaponie
+- qixiang
 - scoheb 
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
<h3>2: Staging changes from 1111d7b0 to 717549ac on Tue Jun 25 14:44:50 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/OWNERS b/components/mintmaker/OWNERS
index 7ab9f2af..397be3b9 100644
--- a/components/mintmaker/OWNERS
+++ b/components/mintmaker/OWNERS
@@ -1,7 +1,11 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
+- gnaponie
+- qixiang
 - scoheb
 
 reviewers:
+- gnaponie
+- qixiang
 - scoheb 
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
<h3>2: Development changes from 1111d7b0 to 717549ac on Tue Jun 25 14:44:50 2024 </h3>  
 
<details> 
<summary>Git Diff (16 lines)</summary>  

``` 
diff --git a/components/mintmaker/OWNERS b/components/mintmaker/OWNERS
index 7ab9f2af..397be3b9 100644
--- a/components/mintmaker/OWNERS
+++ b/components/mintmaker/OWNERS
@@ -1,7 +1,11 @@
 # See the OWNERS docs: https://go.k8s.io/owners
 
 approvers:
+- gnaponie
+- qixiang
 - scoheb
 
 reviewers:
+- gnaponie
+- qixiang
 - scoheb 
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
<h3>3: Production changes from 8ec166c4 to 1111d7b0 on Tue Jun 25 14:43:30 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index a63e4456..55ccfd40 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -49,5 +49,5 @@ data:
         "schedule": ["at any time"]
       },
       "forkProcessing": "enabled",
-      "dependencyDashboard": true
+      "dependencyDashboard": false
     } 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-8ec166c4/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
448c448
<       "dependencyDashboard": false
---
>       "dependencyDashboard": true
./commit-8ec166c4/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
448c448
<       "dependencyDashboard": false
---
>       "dependencyDashboard": true 
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
<h3>3: Staging changes from 8ec166c4 to 1111d7b0 on Tue Jun 25 14:43:30 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index a63e4456..55ccfd40 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -49,5 +49,5 @@ data:
         "schedule": ["at any time"]
       },
       "forkProcessing": "enabled",
-      "dependencyDashboard": true
+      "dependencyDashboard": false
     } 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8ec166c4/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
448c448
<       "dependencyDashboard": false
---
>       "dependencyDashboard": true 
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
<h3>3: Development changes from 8ec166c4 to 1111d7b0 on Tue Jun 25 14:43:30 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/mintmaker/base/renovate-config.yaml b/components/mintmaker/base/renovate-config.yaml
index a63e4456..55ccfd40 100644
--- a/components/mintmaker/base/renovate-config.yaml
+++ b/components/mintmaker/base/renovate-config.yaml
@@ -49,5 +49,5 @@ data:
         "schedule": ["at any time"]
       },
       "forkProcessing": "enabled",
-      "dependencyDashboard": true
+      "dependencyDashboard": false
     } 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-8ec166c4/development/components/mintmaker/development/kustomize.out.yaml
448c448
<       "dependencyDashboard": false
---
>       "dependencyDashboard": true 
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
<h3>4: Production changes from 60ee9c8d to 8ec166c4 on Tue Jun 25 14:41:59 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index eb5677f9..4831152c 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -17,6 +17,10 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
@@ -30,7 +34,7 @@ spec:
         namespace: mintmaker
         server: '{{server}}'
       syncPolicy:
-        automated: 
+        automated:
           prune: true
           selfHeal: true
         syncOptions:
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 832e022f..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,10 +11,3 @@ kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
 $patch: delete
----
-# mintmaker not ready for prod yet
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: mintmaker
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 390826cc..139b6bb0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,10 +29,3 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
----
-# mintmaker not ready for prod yet
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: mintmaker
-$patch: delete
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
new file mode 100644
index 00000000..2cfb3cb9
--- /dev/null
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/external-secrets
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+
+namespace: mintmaker
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+patches:
+  - path: pipelines-as-code-secret-patch.yaml
+    target:
+      name: pipelines-as-code-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml b/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml
new file mode 100644
index 00000000..7af9ce53
--- /dev/null
+++ b/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/github-app
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
deleted file mode 100644
index eea75eca..00000000
--- a/components/mintmaker/production/kustomization.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-images:
-  - name: quay.io/konflux-ci/mintmaker
-    newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-namespace: mintmaker
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..2d3e5d7f
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p01/github-app
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..742a8298
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p02/github-app 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-60ee9c8d/production/components/mintmaker/production: kustomize.out.yaml
./commit-8ec166c4/production/components/mintmaker/production: stone-prod-p01
./commit-8ec166c4/production/components/mintmaker/production: stone-prod-p02 
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
<h3>4: Staging changes from 60ee9c8d to 8ec166c4 on Tue Jun 25 14:41:59 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index eb5677f9..4831152c 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -17,6 +17,10 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
@@ -30,7 +34,7 @@ spec:
         namespace: mintmaker
         server: '{{server}}'
       syncPolicy:
-        automated: 
+        automated:
           prune: true
           selfHeal: true
         syncOptions:
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 832e022f..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,10 +11,3 @@ kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
 $patch: delete
----
-# mintmaker not ready for prod yet
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: mintmaker
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 390826cc..139b6bb0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,10 +29,3 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
----
-# mintmaker not ready for prod yet
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: mintmaker
-$patch: delete
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
new file mode 100644
index 00000000..2cfb3cb9
--- /dev/null
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/external-secrets
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+
+namespace: mintmaker
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+patches:
+  - path: pipelines-as-code-secret-patch.yaml
+    target:
+      name: pipelines-as-code-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml b/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml
new file mode 100644
index 00000000..7af9ce53
--- /dev/null
+++ b/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/github-app
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
deleted file mode 100644
index eea75eca..00000000
--- a/components/mintmaker/production/kustomization.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-images:
-  - name: quay.io/konflux-ci/mintmaker
-    newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-namespace: mintmaker
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..2d3e5d7f
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p01/github-app
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..742a8298
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p02/github-app 
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
<h3>4: Development changes from 60ee9c8d to 8ec166c4 on Tue Jun 25 14:41:59 2024 </h3>  
 
<details> 
<summary>Git Diff (174 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
index eb5677f9..4831152c 100644
--- a/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/mintmaker/mintmaker.yaml
@@ -17,6 +17,10 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
+                - nameNormalized: stone-prod-p02
+                  values.clusterDir: stone-prod-p02
   template:
     metadata:
       name: mintmaker-{{nameNormalized}}
@@ -30,7 +34,7 @@ spec:
         namespace: mintmaker
         server: '{{server}}'
       syncPolicy:
-        automated: 
+        automated:
           prune: true
           selfHeal: true
         syncOptions:
diff --git a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
index 832e022f..47e78222 100644
--- a/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
+++ b/argo-cd-apps/overlays/konflux-public-production/delete-applications.yaml
@@ -11,10 +11,3 @@ kind: ApplicationSet
 metadata:
   name: tracing-workload-otel-collector
 $patch: delete
----
-# mintmaker not ready for prod yet
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: mintmaker
-$patch: delete
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 390826cc..139b6bb0 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -29,10 +29,3 @@ kind: ApplicationSet
 metadata:
   name: quality-dashboard
 $patch: delete
----
-# mintmaker not ready for prod yet
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: mintmaker
-$patch: delete
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
new file mode 100644
index 00000000..2cfb3cb9
--- /dev/null
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base
+  - ../../base/external-secrets
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+
+namespace: mintmaker
+
+images:
+  - name: quay.io/konflux-ci/mintmaker
+    newName: quay.io/konflux-ci/mintmaker
+    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+
+commonAnnotations:
+  argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+
+patches:
+  - path: pipelines-as-code-secret-patch.yaml
+    target:
+      name: pipelines-as-code-secret
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml b/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml
new file mode 100644
index 00000000..7af9ce53
--- /dev/null
+++ b/components/mintmaker/production/base/pipelines-as-code-secret-patch.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/pipeline-service/github-app
diff --git a/components/mintmaker/production/kustomization.yaml b/components/mintmaker/production/kustomization.yaml
deleted file mode 100644
index eea75eca..00000000
--- a/components/mintmaker/production/kustomization.yaml
+++ /dev/null
@@ -1,12 +0,0 @@
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
-resources:
-  - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-images:
-  - name: quay.io/konflux-ci/mintmaker
-    newName: quay.io/konflux-ci/mintmaker
-    newTag: f6a6a9c25b02d3ca6cd808d5d440529de006d994
-
-namespace: mintmaker
diff --git a/components/mintmaker/production/stone-prod-p01/kustomization.yaml b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..2d3e5d7f
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p01/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p01/github-app
diff --git a/components/mintmaker/production/stone-prod-p02/kustomization.yaml b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
new file mode 100644
index 00000000..f55bcf8b
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/kustomization.yaml
@@ -0,0 +1,15 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+namespace: mintmaker
+patches:
+  - path: pipelines-as-code-secret-path.yaml
+    target:
+      name: pipelines-as-code-secret
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
+
+components:
+  - ../../components/rh-certs
diff --git a/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml b/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
new file mode 100644
index 00000000..742a8298
--- /dev/null
+++ b/components/mintmaker/production/stone-prod-p02/pipelines-as-code-secret-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/dataFrom/0/extract/key
+  value: production/build/stone-prod-p02/github-app 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (6 lines)</summary>  

``` 
./commit-60ee9c8d/development/app-of-apps-development.yaml
717,720d716
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
<           - nameNormalized: stone-prod-p02
<             values.clusterDir: stone-prod-p02 
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
