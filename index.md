# kustomize changes tracked by commits 
### This file generated at Fri Jan 26 16:03:33 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
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
<h3>1: Staging changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
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
<h3>1: Development changes from 5bd7f17a to ab742f54 on Fri Jan 26 15:10:34 2024 </h3>  
 
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
<h3>2: Production changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
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
<h3>2: Staging changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
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
<h3>2: Development changes from f55ce4ac to 5bd7f17a on Fri Jan 26 10:30:05 2024 </h3>  
 
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

<div>
<h3>3: Production changes from cc00977c to f55ce4ac on Fri Jan 26 08:09:46 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 5da9470b..2126b87a 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=b775f294ad025b00af142479e74a35074ac90019
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index ebeace30..48708917 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=b775f294ad025b00af142479e74a35074ac90019
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=b775f294ad025b00af142479e74a35074ac90019
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target: 
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
<h3>3: Staging changes from cc00977c to f55ce4ac on Fri Jan 26 08:09:46 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 5da9470b..2126b87a 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=b775f294ad025b00af142479e74a35074ac90019
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index ebeace30..48708917 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=b775f294ad025b00af142479e74a35074ac90019
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=b775f294ad025b00af142479e74a35074ac90019
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target: 
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
<h3>3: Development changes from cc00977c to f55ce4ac on Fri Jan 26 08:09:46 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index 5da9470b..2126b87a 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=b775f294ad025b00af142479e74a35074ac90019
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index ebeace30..48708917 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=4ab990acc7cde19e686ccfdd72a9a88549bce96f
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=b775f294ad025b00af142479e74a35074ac90019
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=b775f294ad025b00af142479e74a35074ac90019
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 4ab990acc7cde19e686ccfdd72a9a88549bce96f
+    newTag: b775f294ad025b00af142479e74a35074ac90019
 
 patches:
   - target: 
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
<h3>4: Production changes from b84287cb to cc00977c on Fri Jan 26 05:08:22 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
index 1845fd62..8c55752f 100644
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ b/components/remote-secret-controller/base/rbac/remote-secret.yaml
@@ -4,8 +4,8 @@ metadata:
   name: remotesecret-service-maintainers
   namespace: remotesecret
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
index 8521d836..869c9afc 100644
--- a/components/spi/base/rbac/spi.yaml
+++ b/components/spi/base/rbac/spi.yaml
@@ -4,8 +4,8 @@ metadata:
   name: spi-service-maintainers
   namespace: spi-system
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
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
<h3>4: Staging changes from b84287cb to cc00977c on Fri Jan 26 05:08:22 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
index 1845fd62..8c55752f 100644
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ b/components/remote-secret-controller/base/rbac/remote-secret.yaml
@@ -4,8 +4,8 @@ metadata:
   name: remotesecret-service-maintainers
   namespace: remotesecret
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
index 8521d836..869c9afc 100644
--- a/components/spi/base/rbac/spi.yaml
+++ b/components/spi/base/rbac/spi.yaml
@@ -4,8 +4,8 @@ metadata:
   name: spi-service-maintainers
   namespace: spi-system
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
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
<h3>4: Development changes from b84287cb to cc00977c on Fri Jan 26 05:08:22 2024 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/base/rbac/remote-secret.yaml b/components/remote-secret-controller/base/rbac/remote-secret.yaml
index 1845fd62..8c55752f 100644
--- a/components/remote-secret-controller/base/rbac/remote-secret.yaml
+++ b/components/remote-secret-controller/base/rbac/remote-secret.yaml
@@ -4,8 +4,8 @@ metadata:
   name: remotesecret-service-maintainers
   namespace: remotesecret
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/spi/base/rbac/spi.yaml b/components/spi/base/rbac/spi.yaml
index 8521d836..869c9afc 100644
--- a/components/spi/base/rbac/spi.yaml
+++ b/components/spi/base/rbac/spi.yaml
@@ -4,8 +4,8 @@ metadata:
   name: spi-service-maintainers
   namespace: spi-system
 subjects:
-  - kind: User
-    name: skabashnyuk
+  - kind: Group
+    name: konflux-spi-admins
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
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
