# kustomize changes tracked by commits 
### This file generated at Wed Feb 28 20:03:09 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a1c3afda to c8af4863 on Wed Feb 28 19:59:31 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 71dcfd1a..80b437d6 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index f10c02f7..e4c8a173 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a1c3afda to c8af4863 on Wed Feb 28 19:59:31 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 71dcfd1a..80b437d6 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index f10c02f7..e4c8a173 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from a1c3afda to c8af4863 on Wed Feb 28 19:59:31 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 71dcfd1a..80b437d6 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index f10c02f7..e4c8a173 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=4a125b85f681fbecde7113e3a5765be8388ba459
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 4a125b85f681fbecde7113e3a5765be8388ba459
+    newTag: 94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a1c3afda/development/components/release/development/kustomize.out.yaml
1762c1762
<         image: quay.io/redhat-appstudio/release-service:94f22621e55e0a5fcacca5d0bf313e5ad0c25a9f
---
>         image: quay.io/redhat-appstudio/release-service:4a125b85f681fbecde7113e3a5765be8388ba459 
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
<h3>2: Production changes from 67db5d12 to a1c3afda on Wed Feb 28 15:56:46 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml b/components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
similarity index 61%
rename from components/monitoring/grafana/base/dashboards/core/dashboard.yaml
rename to components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
index 773df09e..51c9c259 100644
--- a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
@@ -1,7 +1,7 @@
 apiVersion: grafana.integreatly.org/v1beta1
 kind: GrafanaDashboard
 metadata:
-  name: grafana-dashboard-sandbox-proxy-metrics
+  name: grafana-dashboard-kubesaw-proxy-metrics
   labels: 
     app: appstudio-grafana
 spec:
@@ -9,5 +9,5 @@ spec:
     matchLabels:
       dashboards: "appstudio-grafana"
   configMapRef:
-    name: grafana-dashboard-sandbox-proxy-metrics
-    key: sandbox-proxy-metrics.json
+    name: grafana-dashboard-kubesaw-proxy-metrics
+    key: kubesaw-proxy-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
similarity index 99%
rename from components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
rename to components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
index 65275395..c60e4479 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
@@ -552,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Core - Proxy Metrics",
+  "title": "KubeSaw - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": ""
diff --git a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
similarity index 59%
rename from components/monitoring/grafana/base/dashboards/core/kustomization.yaml
rename to components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
index 4fc26c8b..fe45d7d2 100644
--- a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
@@ -3,6 +3,6 @@ kind: Kustomization
 resources:
 - dashboard.yaml
 configMapGenerator:
-  - name: grafana-dashboard-sandbox-proxy-metrics
+  - name: grafana-dashboard-kubesaw-proxy-metrics
     files:
-      - sandbox-proxy-metrics.json
\ No newline at end of file
+      - kubesaw-proxy-metrics.json
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 336318de..766d66e8 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- core/
+- kubesaw/
 - spi/
 - build-service/
 - managed-gitops/ 
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
<h3>2: Staging changes from 67db5d12 to a1c3afda on Wed Feb 28 15:56:46 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml b/components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
similarity index 61%
rename from components/monitoring/grafana/base/dashboards/core/dashboard.yaml
rename to components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
index 773df09e..51c9c259 100644
--- a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
@@ -1,7 +1,7 @@
 apiVersion: grafana.integreatly.org/v1beta1
 kind: GrafanaDashboard
 metadata:
-  name: grafana-dashboard-sandbox-proxy-metrics
+  name: grafana-dashboard-kubesaw-proxy-metrics
   labels: 
     app: appstudio-grafana
 spec:
@@ -9,5 +9,5 @@ spec:
     matchLabels:
       dashboards: "appstudio-grafana"
   configMapRef:
-    name: grafana-dashboard-sandbox-proxy-metrics
-    key: sandbox-proxy-metrics.json
+    name: grafana-dashboard-kubesaw-proxy-metrics
+    key: kubesaw-proxy-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
similarity index 99%
rename from components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
rename to components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
index 65275395..c60e4479 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
@@ -552,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Core - Proxy Metrics",
+  "title": "KubeSaw - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": ""
diff --git a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
similarity index 59%
rename from components/monitoring/grafana/base/dashboards/core/kustomization.yaml
rename to components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
index 4fc26c8b..fe45d7d2 100644
--- a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
@@ -3,6 +3,6 @@ kind: Kustomization
 resources:
 - dashboard.yaml
 configMapGenerator:
-  - name: grafana-dashboard-sandbox-proxy-metrics
+  - name: grafana-dashboard-kubesaw-proxy-metrics
     files:
-      - sandbox-proxy-metrics.json
\ No newline at end of file
+      - kubesaw-proxy-metrics.json
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 336318de..766d66e8 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- core/
+- kubesaw/
 - spi/
 - build-service/
 - managed-gitops/ 
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
<h3>2: Development changes from 67db5d12 to a1c3afda on Wed Feb 28 15:56:46 2024 </h3>  
 
<details> 
<summary>Git Diff (71 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml b/components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
similarity index 61%
rename from components/monitoring/grafana/base/dashboards/core/dashboard.yaml
rename to components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
index 773df09e..51c9c259 100644
--- a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/dashboard.yaml
@@ -1,7 +1,7 @@
 apiVersion: grafana.integreatly.org/v1beta1
 kind: GrafanaDashboard
 metadata:
-  name: grafana-dashboard-sandbox-proxy-metrics
+  name: grafana-dashboard-kubesaw-proxy-metrics
   labels: 
     app: appstudio-grafana
 spec:
@@ -9,5 +9,5 @@ spec:
     matchLabels:
       dashboards: "appstudio-grafana"
   configMapRef:
-    name: grafana-dashboard-sandbox-proxy-metrics
-    key: sandbox-proxy-metrics.json
+    name: grafana-dashboard-kubesaw-proxy-metrics
+    key: kubesaw-proxy-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
similarity index 99%
rename from components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
rename to components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
index 65275395..c60e4479 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/kubesaw-proxy-metrics.json
@@ -552,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Core - Proxy Metrics",
+  "title": "KubeSaw - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": ""
diff --git a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
similarity index 59%
rename from components/monitoring/grafana/base/dashboards/core/kustomization.yaml
rename to components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
index 4fc26c8b..fe45d7d2 100644
--- a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kubesaw/kustomization.yaml
@@ -3,6 +3,6 @@ kind: Kustomization
 resources:
 - dashboard.yaml
 configMapGenerator:
-  - name: grafana-dashboard-sandbox-proxy-metrics
+  - name: grafana-dashboard-kubesaw-proxy-metrics
     files:
-      - sandbox-proxy-metrics.json
\ No newline at end of file
+      - kubesaw-proxy-metrics.json
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 336318de..766d66e8 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- core/
+- kubesaw/
 - spi/
 - build-service/
 - managed-gitops/ 
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
<h3>3: Production changes from 037ddc63 to 67db5d12 on Wed Feb 28 15:56:39 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 6c45a413..8d455ca5 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -12,9 +12,13 @@ spec:
               values:
                 sourceRoot: components/integration
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index b4975431..05654f81 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -18,3 +18,6 @@ patches:
     target:
       kind: CronJob
       name: snapshot-garbage-collector
+
+components:
+  - ../rh-certs
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/base/kustomization.yaml
similarity index 93%
rename from components/integration/production/kustomization.yaml
rename to components/integration/production/base/kustomization.yaml
index 9f99cbcb..e3599430 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
diff --git a/components/integration/production/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/production/manager_resources_patch.yaml
rename to components/integration/production/base/manager_resources_patch.yaml
diff --git a/components/integration/production/pipelines-as-code-secret.yaml b/components/integration/production/base/pipelines-as-code-secret.yaml
similarity index 100%
rename from components/integration/production/pipelines-as-code-secret.yaml
rename to components/integration/production/base/pipelines-as-code-secret.yaml
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..d8a919d7
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/rh-certs/add-rh-certs-patch.yaml b/components/integration/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..99055359
--- /dev/null
+++ b/components/integration/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
+      volumes:
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/integration/rh-certs/kustomization.yaml b/components/integration/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..78f3e98f
--- /dev/null
+++ b/components/integration/rh-certs/kustomization.yaml
@@ -0,0 +1,16 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: controller-manager
+      kind: Deployment
+
+configMapGenerator:
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
+
+namespace: integration-service
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
similarity index 92%
rename from components/integration/staging/kustomization.yaml
rename to components/integration/staging/base/kustomization.yaml
index 6387ac57..d0f7e6d4 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/staging/manager_resources_patch.yaml
rename to components/integration/staging/base/manager_resources_patch.yaml
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..d8a919d7
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+components:
+  - ../../rh-certs
+ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-037ddc63/production/app-of-apps-production.yaml
771c771
<             clusterDir: base
---
>             clusterDir: ""
775,779c775
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
---
>           elements: []
./commit-037ddc63/production/components/integration/production: kustomize.out.yaml
./commit-67db5d12/production/components/integration/production: stone-prod-p01 
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
<h3>3: Staging changes from 037ddc63 to 67db5d12 on Wed Feb 28 15:56:39 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 6c45a413..8d455ca5 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -12,9 +12,13 @@ spec:
               values:
                 sourceRoot: components/integration
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index b4975431..05654f81 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -18,3 +18,6 @@ patches:
     target:
       kind: CronJob
       name: snapshot-garbage-collector
+
+components:
+  - ../rh-certs
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/base/kustomization.yaml
similarity index 93%
rename from components/integration/production/kustomization.yaml
rename to components/integration/production/base/kustomization.yaml
index 9f99cbcb..e3599430 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
diff --git a/components/integration/production/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/production/manager_resources_patch.yaml
rename to components/integration/production/base/manager_resources_patch.yaml
diff --git a/components/integration/production/pipelines-as-code-secret.yaml b/components/integration/production/base/pipelines-as-code-secret.yaml
similarity index 100%
rename from components/integration/production/pipelines-as-code-secret.yaml
rename to components/integration/production/base/pipelines-as-code-secret.yaml
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..d8a919d7
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/rh-certs/add-rh-certs-patch.yaml b/components/integration/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..99055359
--- /dev/null
+++ b/components/integration/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
+      volumes:
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/integration/rh-certs/kustomization.yaml b/components/integration/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..78f3e98f
--- /dev/null
+++ b/components/integration/rh-certs/kustomization.yaml
@@ -0,0 +1,16 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: controller-manager
+      kind: Deployment
+
+configMapGenerator:
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
+
+namespace: integration-service
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
similarity index 92%
rename from components/integration/staging/kustomization.yaml
rename to components/integration/staging/base/kustomization.yaml
index 6387ac57..d0f7e6d4 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/staging/manager_resources_patch.yaml
rename to components/integration/staging/base/manager_resources_patch.yaml
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..d8a919d7
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+components:
+  - ../../rh-certs
+ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-037ddc63/staging/app-of-apps-staging.yaml
725c725
<             clusterDir: base
---
>             clusterDir: ""
729,733c729
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
---
>           elements: []
./commit-037ddc63/staging/components/integration/staging: kustomize.out.yaml
./commit-67db5d12/staging/components/integration/staging: stone-stage-p01 
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
<h3>3: Development changes from 037ddc63 to 67db5d12 on Wed Feb 28 15:56:39 2024 </h3>  
 
<details> 
<summary>Git Diff (154 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
index 6c45a413..8d455ca5 100644
--- a/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/integration/integration.yaml
@@ -12,9 +12,13 @@ spec:
               values:
                 sourceRoot: components/integration
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: integration-{{nameNormalized}}
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index b4975431..05654f81 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -18,3 +18,6 @@ patches:
     target:
       kind: CronJob
       name: snapshot-garbage-collector
+
+components:
+  - ../rh-certs
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/base/kustomization.yaml
similarity index 93%
rename from components/integration/production/kustomization.yaml
rename to components/integration/production/base/kustomization.yaml
index 9f99cbcb..e3599430 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
 
 images:
diff --git a/components/integration/production/manager_resources_patch.yaml b/components/integration/production/base/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/production/manager_resources_patch.yaml
rename to components/integration/production/base/manager_resources_patch.yaml
diff --git a/components/integration/production/pipelines-as-code-secret.yaml b/components/integration/production/base/pipelines-as-code-secret.yaml
similarity index 100%
rename from components/integration/production/pipelines-as-code-secret.yaml
rename to components/integration/production/base/pipelines-as-code-secret.yaml
diff --git a/components/integration/production/stone-prod-p01/kustomization.yaml b/components/integration/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..d8a919d7
--- /dev/null
+++ b/components/integration/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+components:
+  - ../../rh-certs
+
diff --git a/components/integration/rh-certs/add-rh-certs-patch.yaml b/components/integration/rh-certs/add-rh-certs-patch.yaml
new file mode 100644
index 00000000..99055359
--- /dev/null
+++ b/components/integration/rh-certs/add-rh-certs-patch.yaml
@@ -0,0 +1,21 @@
+---
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: controller-manager
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        volumeMounts:
+          - name: trusted-ca
+            mountPath: /etc/pki/ca-trust/extracted/pem
+            readOnly: true
+      volumes:
+      - name: trusted-ca
+        configMap:
+          name: trusted-ca
+          items:
+            - key: ca-bundle.crt
+              path: tls-ca-bundle.pem
diff --git a/components/integration/rh-certs/kustomization.yaml b/components/integration/rh-certs/kustomization.yaml
new file mode 100644
index 00000000..78f3e98f
--- /dev/null
+++ b/components/integration/rh-certs/kustomization.yaml
@@ -0,0 +1,16 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: add-rh-certs-patch.yaml
+    target:
+      name: controller-manager
+      kind: Deployment
+
+configMapGenerator:
+  - name: trusted-ca
+    options:
+      labels:
+        "config.openshift.io/inject-trusted-cabundle": "true"
+
+namespace: integration-service
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
similarity index 92%
rename from components/integration/staging/kustomization.yaml
rename to components/integration/staging/base/kustomization.yaml
index 6387ac57..d0f7e6d4 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -1,8 +1,8 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- ../base
-- ../base/external-secrets
+- ../../base
+- ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 - https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/base/manager_resources_patch.yaml
similarity index 100%
rename from components/integration/staging/manager_resources_patch.yaml
rename to components/integration/staging/base/manager_resources_patch.yaml
diff --git a/components/integration/staging/stone-stage-p01/kustomization.yaml b/components/integration/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..d8a919d7
--- /dev/null
+++ b/components/integration/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,7 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+components:
+  - ../../rh-certs
+ 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (30 lines)</summary>  

``` 
./commit-037ddc63/development/app-of-apps-development.yaml
528,532c528
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
---
>           elements: []
./commit-037ddc63/development/components/integration/development/kustomize.out.yaml
1103,1110d1102
< kind: ConfigMap
< metadata:
<   labels:
<     config.openshift.io/inject-trusted-cabundle: "true"
<   name: trusted-ca-6ct58987ht
<   namespace: integration-service
< ---
< apiVersion: v1
1215,1217d1206
<         - mountPath: /etc/pki/ca-trust/extracted/pem
<           name: trusted-ca
<           readOnly: true
1247,1252d1235
<       - configMap:
<           items:
<           - key: ca-bundle.crt
<             path: tls-ca-bundle.pem
<           name: trusted-ca-6ct58987ht
<         name: trusted-ca 
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
<h3>4: Production changes from a697e34f to 037ddc63 on Wed Feb 28 15:56:32 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 0be3b7d8..d049b2ad 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-a697e34f/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972 
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
<h3>4: Staging changes from a697e34f to 037ddc63 on Wed Feb 28 15:56:32 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 0be3b7d8..d049b2ad 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-a697e34f/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972 
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
<h3>4: Development changes from a697e34f to 037ddc63 on Wed Feb 28 15:56:32 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 0be3b7d8..d049b2ad 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-a697e34f/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:937bd16383dee89854bcbb2b8fc4fddcf259dddb
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e972d8ec80972e1e4dab7c4fbda0722d7ce8c972 
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
