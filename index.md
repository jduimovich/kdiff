# kustomize changes tracked by commits 
### This file generated at Sun Jan 28 20:01:52 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 395c7bc7 to b6dee9bd on Sun Jan 28 06:20:26 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
index 7919da33..0573a354 100644
--- a/components/integration/base/delete-snapshots.yaml
+++ b/components/integration/base/delete-snapshots.yaml
@@ -18,7 +18,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Integration Team
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-395c7bc7/production/components/integration/production/kustomize.out.yaml
969c969
<   name: konflux-integration
---
>   name: Integration Team 
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
<h3>1: Staging changes from 395c7bc7 to b6dee9bd on Sun Jan 28 06:20:26 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
index 7919da33..0573a354 100644
--- a/components/integration/base/delete-snapshots.yaml
+++ b/components/integration/base/delete-snapshots.yaml
@@ -18,7 +18,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Integration Team
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-395c7bc7/staging/components/integration/staging/kustomize.out.yaml
969c969
<   name: konflux-integration
---
>   name: Integration Team 
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
<h3>1: Development changes from 395c7bc7 to b6dee9bd on Sun Jan 28 06:20:26 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/integration/base/delete-snapshots.yaml b/components/integration/base/delete-snapshots.yaml
index 7919da33..0573a354 100644
--- a/components/integration/base/delete-snapshots.yaml
+++ b/components/integration/base/delete-snapshots.yaml
@@ -18,7 +18,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Integration Team
+    name: konflux-integration
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-395c7bc7/development/components/integration/development/kustomize.out.yaml
969c969
<   name: konflux-integration
---
>   name: Integration Team 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from ab742f54 to 395c7bc7 on Fri Jan 26 16:34:10 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/rbac/logging-admin.yaml b/components/monitoring/logging/base/rbac/logging-admin.yaml
index 91e699f0..bc3f8068 100644
--- a/components/monitoring/logging/base/rbac/logging-admin.yaml
+++ b/components/monitoring/logging/base/rbac/logging-admin.yaml
@@ -17,7 +17,7 @@ metadata:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Logging Admins
+  name: konflux-o11y-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/segment-bridge/rbac/segment-bridge.yaml b/components/segment-bridge/rbac/segment-bridge.yaml
index 7d697861..81bf5222 100644
--- a/components/segment-bridge/rbac/segment-bridge.yaml
+++ b/components/segment-bridge/rbac/segment-bridge.yaml
@@ -54,10 +54,9 @@ metadata:
   name: segment-bridge-read-host-sa-secret-binding
   namespace: toolchain-host-operator
 subjects:
-  - kind: User
-    name: Omeramsc
-  - kind: User
-    name: ifireball
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-o11y
 roleRef:
   kind: Role
   name: segment-bridge-read-host-sa-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ab742f54/production/components/segment-bridge/production/stone-prd-host1/kustomize.out.yaml
61,63c61,64
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-o11y
---
> - kind: User
>   name: Omeramsc
> - kind: User
>   name: ifireball 
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
<h3>2: Staging changes from ab742f54 to 395c7bc7 on Fri Jan 26 16:34:10 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/rbac/logging-admin.yaml b/components/monitoring/logging/base/rbac/logging-admin.yaml
index 91e699f0..bc3f8068 100644
--- a/components/monitoring/logging/base/rbac/logging-admin.yaml
+++ b/components/monitoring/logging/base/rbac/logging-admin.yaml
@@ -17,7 +17,7 @@ metadata:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Logging Admins
+  name: konflux-o11y-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/segment-bridge/rbac/segment-bridge.yaml b/components/segment-bridge/rbac/segment-bridge.yaml
index 7d697861..81bf5222 100644
--- a/components/segment-bridge/rbac/segment-bridge.yaml
+++ b/components/segment-bridge/rbac/segment-bridge.yaml
@@ -54,10 +54,9 @@ metadata:
   name: segment-bridge-read-host-sa-secret-binding
   namespace: toolchain-host-operator
 subjects:
-  - kind: User
-    name: Omeramsc
-  - kind: User
-    name: ifireball
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-o11y
 roleRef:
   kind: Role
   name: segment-bridge-read-host-sa-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-ab742f54/staging/components/segment-bridge/staging/stone-stg-host/kustomize.out.yaml
61,63c61,64
< - apiGroup: rbac.authorization.k8s.io
<   kind: Group
<   name: konflux-o11y
---
> - kind: User
>   name: Omeramsc
> - kind: User
>   name: ifireball 
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
<h3>2: Development changes from ab742f54 to 395c7bc7 on Fri Jan 26 16:34:10 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/base/rbac/logging-admin.yaml b/components/monitoring/logging/base/rbac/logging-admin.yaml
index 91e699f0..bc3f8068 100644
--- a/components/monitoring/logging/base/rbac/logging-admin.yaml
+++ b/components/monitoring/logging/base/rbac/logging-admin.yaml
@@ -17,7 +17,7 @@ metadata:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Logging Admins
+  name: konflux-o11y-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: Role
diff --git a/components/segment-bridge/rbac/segment-bridge.yaml b/components/segment-bridge/rbac/segment-bridge.yaml
index 7d697861..81bf5222 100644
--- a/components/segment-bridge/rbac/segment-bridge.yaml
+++ b/components/segment-bridge/rbac/segment-bridge.yaml
@@ -54,10 +54,9 @@ metadata:
   name: segment-bridge-read-host-sa-secret-binding
   namespace: toolchain-host-operator
 subjects:
-  - kind: User
-    name: Omeramsc
-  - kind: User
-    name: ifireball
+  - apiGroup: rbac.authorization.k8s.io
+    kind: Group
+    name: konflux-o11y
 roleRef:
   kind: Role
   name: segment-bridge-read-host-sa-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 5ce8bae5..1e7a9263 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -71,7 +71,7 @@ or imported from other projects.
   You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
 
       The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/example.json)
+      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
 
 
   2. Add tiles to the dashboard to track your initial set of service level indicators.  
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 569d73ec..23b3234c 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -3,10 +3,6 @@
     "list": [
       {
         "builtIn": 1,
-        "datasource": {
-          "type": "datasource",
-          "uid": "grafana"
-        },
         "enable": true,
         "hide": true,
         "iconColor": "rgba(0, 211, 255, 1)",
@@ -23,10 +19,6 @@
   "liveNow": false,
   "panels": [
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to list workspaces",
       "fieldConfig": {
         "defaults": {
@@ -102,10 +94,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
           "legendFormat": "__auto",
@@ -117,10 +105,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -194,10 +178,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -209,10 +189,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to get workspace",
       "fieldConfig": {
         "defaults": {
@@ -290,10 +266,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
           "legendFormat": "__auto",
@@ -305,10 +277,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -382,10 +350,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -397,10 +361,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
       "fieldConfig": {
         "defaults": {
@@ -484,10 +444,6 @@
       "pluginVersion": "9.5.1",
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
           "legendFormat": "__auto",
@@ -499,10 +455,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -576,10 +528,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -604,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Proxy Metrics",
+  "title": "Core - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": "" 
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
<h3>3: Staging changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 5ce8bae5..1e7a9263 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -71,7 +71,7 @@ or imported from other projects.
   You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
 
       The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/example.json)
+      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
 
 
   2. Add tiles to the dashboard to track your initial set of service level indicators.  
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 569d73ec..23b3234c 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -3,10 +3,6 @@
     "list": [
       {
         "builtIn": 1,
-        "datasource": {
-          "type": "datasource",
-          "uid": "grafana"
-        },
         "enable": true,
         "hide": true,
         "iconColor": "rgba(0, 211, 255, 1)",
@@ -23,10 +19,6 @@
   "liveNow": false,
   "panels": [
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to list workspaces",
       "fieldConfig": {
         "defaults": {
@@ -102,10 +94,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
           "legendFormat": "__auto",
@@ -117,10 +105,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -194,10 +178,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -209,10 +189,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to get workspace",
       "fieldConfig": {
         "defaults": {
@@ -290,10 +266,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
           "legendFormat": "__auto",
@@ -305,10 +277,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -382,10 +350,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -397,10 +361,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
       "fieldConfig": {
         "defaults": {
@@ -484,10 +444,6 @@
       "pluginVersion": "9.5.1",
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
           "legendFormat": "__auto",
@@ -499,10 +455,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -576,10 +528,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -604,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Proxy Metrics",
+  "title": "Core - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": "" 
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
<h3>3: Development changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
<details> 
<summary>Git Diff (169 lines)</summary>  

``` 
diff --git a/components/monitoring/README.md b/components/monitoring/README.md
index 5ce8bae5..1e7a9263 100644
--- a/components/monitoring/README.md
+++ b/components/monitoring/README.md
@@ -71,7 +71,7 @@ or imported from other projects.
   You may copy and edit the `example` dashboard json instead, and test the new dashboard on the staging and production environments. 
 
       The `example` dashboard json definition can be found 
-      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/example.json)
+      [here](https://github.com/redhat-appstudio/infra-deployments/blob/main/components/monitoring/grafana/base/dashboards/generic-dashboards/example.json)
 
 
   2. Add tiles to the dashboard to track your initial set of service level indicators.  
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 569d73ec..23b3234c 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -3,10 +3,6 @@
     "list": [
       {
         "builtIn": 1,
-        "datasource": {
-          "type": "datasource",
-          "uid": "grafana"
-        },
         "enable": true,
         "hide": true,
         "iconColor": "rgba(0, 211, 255, 1)",
@@ -23,10 +19,6 @@
   "liveNow": false,
   "panels": [
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to list workspaces",
       "fieldConfig": {
         "defaults": {
@@ -102,10 +94,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
           "legendFormat": "__auto",
@@ -117,10 +105,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -194,10 +178,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -209,10 +189,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of requests to get workspace",
       "fieldConfig": {
         "defaults": {
@@ -290,10 +266,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
           "legendFormat": "__auto",
@@ -305,10 +277,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -382,10 +350,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -397,10 +361,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
       "fieldConfig": {
         "defaults": {
@@ -484,10 +444,6 @@
       "pluginVersion": "9.5.1",
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "builder",
           "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
           "legendFormat": "__auto",
@@ -499,10 +455,6 @@
       "type": "timeseries"
     },
     {
-      "datasource": {
-        "type": "datasource",
-        "uid": "grafana"
-      },
       "fieldConfig": {
         "defaults": {
           "color": {
@@ -576,10 +528,6 @@
       },
       "targets": [
         {
-          "datasource": {
-            "type": "datasource",
-            "uid": "grafana"
-          },
           "editorMode": "code",
           "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
@@ -604,7 +552,7 @@
   },
   "timepicker": {},
   "timezone": "",
-  "title": "Proxy Metrics",
+  "title": "Core - Proxy Metrics",
   "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
   "version": 14,
   "weekStart": "" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 94604248..48cc5001 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 4eec59be..c26899da 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 94604248..48cc5001 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 4eec59be..c26899da 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f55ce4ac/staging/components/integration/staging/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
---
>         image: quay.io/redhat-appstudio/integration-service:81664606d240735d2e58396d046bb3544d0e0d1f 
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
<h3>4: Development changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 94604248..48cc5001 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 4eec59be..c26899da 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=81664606d240735d2e58396d046bb3544d0e0d1f
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 81664606d240735d2e58396d046bb3544d0e0d1f
+  newTag: 87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-f55ce4ac/development/components/integration/development/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:87385ed0e78b1a3dcf5d966b1ccc8f0ba46bd7d2
---
>         image: quay.io/redhat-appstudio/integration-service:81664606d240735d2e58396d046bb3544d0e0d1f 
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
```
 
</details> 
<br> 


</div>
