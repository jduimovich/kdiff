# kustomize changes tracked by commits 
### This file generated at Tue Oct 22 08:05:09 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 65834d3d to a209dc5c on Tue Oct 22 04:08:50 2024 </h3>  
 
<details> 
<summary>Git Diff (37 lines)</summary>  

``` 
diff --git a/configs/proactive-scaler/base/deployments.yaml b/configs/proactive-scaler/base/deployments.yaml
index 22868810..cac0d9ca 100644
--- a/configs/proactive-scaler/base/deployments.yaml
+++ b/configs/proactive-scaler/base/deployments.yaml
@@ -22,7 +22,7 @@ spec:
           operator: "Equal"
           value: "konflux-tenants"
           effect: "NoSchedule"
-      priorityClassName: pause-pods
+      priorityClassName: proactive-scaler-pods
       containers:
         - name: reserve-resources
           image: registry.k8s.io/pause
diff --git a/configs/proactive-scaler/base/priority-class.yaml b/configs/proactive-scaler/base/priority-class.yaml
index 9293f647..04777358 100644
--- a/configs/proactive-scaler/base/priority-class.yaml
+++ b/configs/proactive-scaler/base/priority-class.yaml
@@ -2,7 +2,7 @@
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: konflux-priority-class
+  name: konflux-default
 value: 0
 globalDefault: true
 description: "Default Priority class."
@@ -10,7 +10,7 @@ description: "Default Priority class."
 apiVersion: scheduling.k8s.io/v1
 kind: PriorityClass
 metadata:
-  name: pause-pods
-value: -1
+  name: proactive-scaler-pods
+value: -10
 globalDefault: false
-description: "Priority class used by pause-pods for overprovisioning."
+description: "Priority class used by proactive scaler pods to over provision nodes." 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 75a9be91 to 65834d3d on Mon Oct 21 18:34:13 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index ff3ef267..d8df0d3a 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index b1e7f20f..2aafffc5 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-75a9be91/development/components/release/development/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:69ae8399bf3b5961b672a5962a7d806376b7296f
---
>         image: quay.io/konflux-ci/release-service:e091a3b077f7b1743c17869a043b8fd8856c6112 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 2bb3d6cd to 75a9be91 on Mon Oct 21 16:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 517cf89e..33160e1f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-2bb3d6cd/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
./commit-2bb3d6cd/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 2bb3d6cd to 75a9be91 on Mon Oct 21 16:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 517cf89e..33160e1f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2bb3d6cd/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 2bb3d6cd to 75a9be91 on Mon Oct 21 16:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index 517cf89e..33160e1f 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -8,10 +8,10 @@ data:
     default-pipeline-name: docker-build-oci-ta
     pipelines:
     - name: fbc-builder
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
     - name: docker-build-multi-platform-oci-ta
-      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-2bb3d6cd/development/components/build-service/development/kustomize.out.yaml
439c439
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-fbc-builder:b369ec194afd42ddc215f7ea114c6cec4f93c57a
441c441
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:b369ec194afd42ddc215f7ea114c6cec4f93c57a
443c443
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a
445c445
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:7fe56f111b0ea0621efa1e3e530003d547091e28
---
>       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:b369ec194afd42ddc215f7ea114c6cec4f93c57a 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 51cdfcbd to 2bb3d6cd on Mon Oct 21 14:14:32 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
index 2aaaf106..351d7c26 100644
--- a/components/release/base/cronjobs/kustomization.yaml
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 
 resources:
 - remove-expired-releases.yaml
+- remove-internal-requests.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-51cdfcbd/production/components/release/production/kustomize.out.yaml
1999,2062d1998
<   name: cleanup-timed-out-pipelineruns-internal-requests
<   namespace: release-service
< spec:
<   failedJobsHistoryLimit: 3
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nINTERNAL_REQUESTS_FILE=\"/var/tmp/internal-requests-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nYD=$(date -d 'yesterday' +%s)\nkubectl get internalrequests
<               --all-namespaces \\\n--sort-by=.status.completionTime \\\n--template
<               '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.completionTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v yesterday=${YD} '{\n     # parsing the completionTime
<               and converting it to epoch\n     # so we can compute the precise IRs
<               that should be deleted\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    completionTime=strftime(\"%s\", t)\n     #\n     # completionTime
<               should be smaller than yesterday seconds so it can be deleted\n     if(yesterday
<               > completionTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE\n\n# The
<               deleteAndLog will run the CR deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
<               deleteAndLog() {\n  ir=${1%:*}\n  namespace=${1#*:}\n  kubectl delete
<               internalrequest $ir -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
<             imagePullPolicy: IfNotPresent
<             name: ir-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 300Mi
<               requests:
<                 cpu: 100m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
<   successfulJobsHistoryLimit: 3
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata: 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 51cdfcbd to 2bb3d6cd on Mon Oct 21 14:14:32 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
index 2aaaf106..351d7c26 100644
--- a/components/release/base/cronjobs/kustomization.yaml
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 
 resources:
 - remove-expired-releases.yaml
+- remove-internal-requests.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-51cdfcbd/staging/components/release/staging/kustomize.out.yaml
2193,2256d2192
<   name: cleanup-timed-out-pipelineruns-internal-requests
<   namespace: release-service
< spec:
<   failedJobsHistoryLimit: 3
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nINTERNAL_REQUESTS_FILE=\"/var/tmp/internal-requests-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nYD=$(date -d 'yesterday' +%s)\nkubectl get internalrequests
<               --all-namespaces \\\n--sort-by=.status.completionTime \\\n--template
<               '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.completionTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v yesterday=${YD} '{\n     # parsing the completionTime
<               and converting it to epoch\n     # so we can compute the precise IRs
<               that should be deleted\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    completionTime=strftime(\"%s\", t)\n     #\n     # completionTime
<               should be smaller than yesterday seconds so it can be deleted\n     if(yesterday
<               > completionTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE\n\n# The
<               deleteAndLog will run the CR deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
<               deleteAndLog() {\n  ir=${1%:*}\n  namespace=${1#*:}\n  kubectl delete
<               internalrequest $ir -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
<             imagePullPolicy: IfNotPresent
<             name: ir-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 300Mi
<               requests:
<                 cpu: 100m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
<   successfulJobsHistoryLimit: 3
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 51cdfcbd to 2bb3d6cd on Mon Oct 21 14:14:32 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/kustomization.yaml b/components/release/base/cronjobs/kustomization.yaml
index 2aaaf106..351d7c26 100644
--- a/components/release/base/cronjobs/kustomization.yaml
+++ b/components/release/base/cronjobs/kustomization.yaml
@@ -3,3 +3,4 @@ kind: Kustomization
 
 resources:
 - remove-expired-releases.yaml
+- remove-internal-requests.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-51cdfcbd/development/components/release/development/kustomize.out.yaml
2193,2256d2192
<   name: cleanup-timed-out-pipelineruns-internal-requests
<   namespace: release-service
< spec:
<   failedJobsHistoryLimit: 3
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /bin/bash
<             - -c
<             - "set -o pipefail\nPATH=\"/bin:/usr/bin:/usr/local/bin\"\nMAX_PROCS=5\nINTERNAL_REQUESTS_FILE=\"/var/tmp/internal-requests-to-be-deleted\"\nKUBECTL_OUTPUT=$(mktemp
<               -p /var/tmp)\nYD=$(date -d 'yesterday' +%s)\nkubectl get internalrequests
<               --all-namespaces \\\n--sort-by=.status.completionTime \\\n--template
<               '{{range .items}}{{.metadata.name}}{{\"\\t\"}}{{.metadata.namespace}}{{\"\\t\"}}{{.status.completionTime}}{{\"\\n\"}}{{end}}'
<               > $KUBECTL_OUTPUT\nawk -v yesterday=${YD} '{\n     # parsing the completionTime
<               and converting it to epoch\n     # so we can compute the precise IRs
<               that should be deleted\n     gsub(\"[:\\\\-TZ]\", \" \", $3)\n     t=mktime($3)\n
<               \    completionTime=strftime(\"%s\", t)\n     #\n     # completionTime
<               should be smaller than yesterday seconds so it can be deleted\n     if(yesterday
<               > completionTime) {\n       args=\"%s:%s\\n\"\n       printf(args, $1,
<               $2)\n     } \n  }' $KUBECTL_OUTPUT > $INTERNAL_REQUESTS_FILE\n\n# The
<               deleteAndLog will run the CR deletion and save the operation in a structured
<               way that        \n# can be read easily by kubectl or journalctl                                                           \nfunction
<               deleteAndLog() {\n  ir=${1%:*}\n  namespace=${1#*:}\n  kubectl delete
<               internalrequest $ir -n $namespace |while read logLine; do\n    echo
<               \"INFO: namespace=${namespace} log=${logLine}\"\n  done                                                                                                  \n}
<               \                                                                                                      \nexport
<               -f deleteAndLog\nxargs -a ${INTERNAL_REQUESTS_FILE} -i -P ${MAX_PROCS}
<               bash -c 'deleteAndLog \"{}\"'\n"
<             image: quay.io/konflux-ci/release-service-utils:9089cafbf36bb889b4b73d8c2965613810f13736
<             imagePullPolicy: IfNotPresent
<             name: ir-cleanup
<             resources:
<               limits:
<                 cpu: 200m
<                 memory: 300Mi
<               requests:
<                 cpu: 100m
<                 memory: 200Mi
<             securityContext:
<               allowPrivilegeEscalation: false
<               capabilities:
<                 drop:
<                 - ALL
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<               seccompProfile:
<                 type: RuntimeDefault
<             volumeMounts:
<             - mountPath: /var/tmp
<               name: temp-directory
<           restartPolicy: Never
<           serviceAccountName: release-service-controller-manager
<           volumes:
<           - emptyDir: {}
<             name: temp-directory
<   schedule: 10 03 * * *
<   successfulJobsHistoryLimit: 3
< ---
< apiVersion: batch/v1
< kind: CronJob
< metadata: 
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
```
 
</details> 
<br> 


</div>
