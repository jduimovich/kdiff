# kustomize changes tracked by commits 
### This file generated at Wed Feb  7 16:06:30 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from d1267a37 to c212233a on Wed Feb 7 15:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 23b3234c..65275395 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -179,7 +179,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -351,7 +351,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -529,7 +529,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])) by (status_code) / sum(rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from d1267a37 to c212233a on Wed Feb 7 15:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 23b3234c..65275395 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -179,7 +179,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -351,7 +351,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -529,7 +529,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])) by (status_code) / sum(rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A" 
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
<h3>1: Development changes from d1267a37 to c212233a on Wed Feb 7 15:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (31 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
index 23b3234c..65275395 100644
--- a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -179,7 +179,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -351,7 +351,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])) by (status_code)/sum(rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A"
@@ -529,7 +529,7 @@
       "targets": [
         {
           "editorMode": "code",
-          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])) by (status_code) / sum(rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
           "legendFormat": "__auto",
           "range": true,
           "refId": "A" 
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
<h3>2: Production changes from 739c5819 to d1267a37 on Wed Feb 7 14:15:00 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/OWNERS b/components/sandbox/OWNERS
index 69264da5..26363336 100644
--- a/components/sandbox/OWNERS
+++ b/components/sandbox/OWNERS
@@ -6,3 +6,6 @@ approvers:
 - xcoulon
 - alexeykazakov
 - rajivnathan
+- filariow
+- sadlerap
+- dperaza4dustbit 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 739c5819 to d1267a37 on Wed Feb 7 14:15:00 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/OWNERS b/components/sandbox/OWNERS
index 69264da5..26363336 100644
--- a/components/sandbox/OWNERS
+++ b/components/sandbox/OWNERS
@@ -6,3 +6,6 @@ approvers:
 - xcoulon
 - alexeykazakov
 - rajivnathan
+- filariow
+- sadlerap
+- dperaza4dustbit 
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
<h3>2: Development changes from 739c5819 to d1267a37 on Wed Feb 7 14:15:00 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/sandbox/OWNERS b/components/sandbox/OWNERS
index 69264da5..26363336 100644
--- a/components/sandbox/OWNERS
+++ b/components/sandbox/OWNERS
@@ -6,3 +6,6 @@ approvers:
 - xcoulon
 - alexeykazakov
 - rajivnathan
+- filariow
+- sadlerap
+- dperaza4dustbit 
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
<h3>3: Production changes from 5caf6d8e to 739c5819 on Wed Feb 7 13:41:43 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
index 5014b416..373a872f 100644
--- a/components/sandbox/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
@@ -80,18 +80,9 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: sandbox-sre-admins-can-register-clusters
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
index 84f2295a..c006bfd6 100644
--- a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
@@ -5,18 +5,9 @@ metadata:
   name: sandbox-sre-host-admins
   namespace: sandbox-sre-host
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -28,18 +19,9 @@ roleRef:
    name: sandbox-sre-host-operator-admins
    namespace: toolchain-host-operator
  subjects:
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: MatousJobanek
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: alexeykazakov
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: xcoulon
-   - kind: User
+   - kind: Group
      apiGroup: rbac.authorization.k8s.io
-     name: mfrancisc
+     name: konflux-core
  roleRef:
    apiGroup: rbac.authorization.k8s.io
    kind: ClusterRole
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml b/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
index 7b1fb4ea..fa418cac 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
@@ -86,15 +86,9 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: sandbox-sre-admins-can-register-member-clusters
 subjects:
-- kind: User
+- kind: Group
   apiGroup: rbac.authorization.k8s.io
-  name: MatousJobanek
-- kind: User
-  apiGroup: rbac.authorization.k8s.io
-  name: alexeykazakov
-- kind: User
-  apiGroup: rbac.authorization.k8s.io
-  name: xcoulon
+  name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
index 6e44eba5..a565821c 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
@@ -5,18 +5,9 @@ metadata:
   name: sandbox-sre-member-admins
   namespace: sandbox-sre-member
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -28,18 +19,9 @@ roleRef:
    name: sandbox-sre-member-operator-admins
    namespace: toolchain-member-operator
  subjects:
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: MatousJobanek
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: alexeykazakov
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: xcoulon
-   - kind: User
+   - kind: Group
      apiGroup: rbac.authorization.k8s.io
-     name: mfrancisc
+     name: konflux-core
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 5caf6d8e to 739c5819 on Wed Feb 7 13:41:43 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
index 5014b416..373a872f 100644
--- a/components/sandbox/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
@@ -80,18 +80,9 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: sandbox-sre-admins-can-register-clusters
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
index 84f2295a..c006bfd6 100644
--- a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
@@ -5,18 +5,9 @@ metadata:
   name: sandbox-sre-host-admins
   namespace: sandbox-sre-host
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -28,18 +19,9 @@ roleRef:
    name: sandbox-sre-host-operator-admins
    namespace: toolchain-host-operator
  subjects:
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: MatousJobanek
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: alexeykazakov
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: xcoulon
-   - kind: User
+   - kind: Group
      apiGroup: rbac.authorization.k8s.io
-     name: mfrancisc
+     name: konflux-core
  roleRef:
    apiGroup: rbac.authorization.k8s.io
    kind: ClusterRole
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml b/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
index 7b1fb4ea..fa418cac 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
@@ -86,15 +86,9 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: sandbox-sre-admins-can-register-member-clusters
 subjects:
-- kind: User
+- kind: Group
   apiGroup: rbac.authorization.k8s.io
-  name: MatousJobanek
-- kind: User
-  apiGroup: rbac.authorization.k8s.io
-  name: alexeykazakov
-- kind: User
-  apiGroup: rbac.authorization.k8s.io
-  name: xcoulon
+  name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
index 6e44eba5..a565821c 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
@@ -5,18 +5,9 @@ metadata:
   name: sandbox-sre-member-admins
   namespace: sandbox-sre-member
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -28,18 +19,9 @@ roleRef:
    name: sandbox-sre-member-operator-admins
    namespace: toolchain-member-operator
  subjects:
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: MatousJobanek
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: alexeykazakov
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: xcoulon
-   - kind: User
+   - kind: Group
      apiGroup: rbac.authorization.k8s.io
-     name: mfrancisc
+     name: konflux-core
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
<h3>3: Development changes from 5caf6d8e to 739c5819 on Wed Feb 7 13:41:43 2024 </h3>  
 
<details> 
<summary>Git Diff (139 lines)</summary>  

``` 
diff --git a/components/sandbox/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
index 5014b416..373a872f 100644
--- a/components/sandbox/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/base/rbac/sandbox-sre-admins.yaml
@@ -80,18 +80,9 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: sandbox-sre-admins-can-register-clusters
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
index 84f2295a..c006bfd6 100644
--- a/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/toolchain-host-operator/base/rbac/sandbox-sre-admins.yaml
@@ -5,18 +5,9 @@ metadata:
   name: sandbox-sre-host-admins
   namespace: sandbox-sre-host
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -28,18 +19,9 @@ roleRef:
    name: sandbox-sre-host-operator-admins
    namespace: toolchain-host-operator
  subjects:
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: MatousJobanek
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: alexeykazakov
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: xcoulon
-   - kind: User
+   - kind: Group
      apiGroup: rbac.authorization.k8s.io
-     name: mfrancisc
+     name: konflux-core
  roleRef:
    apiGroup: rbac.authorization.k8s.io
    kind: ClusterRole
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml b/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
index 7b1fb4ea..fa418cac 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/register-cluster-extra-member-permissions.yaml
@@ -86,15 +86,9 @@ apiVersion: rbac.authorization.k8s.io/v1
 metadata:
   name: sandbox-sre-admins-can-register-member-clusters
 subjects:
-- kind: User
+- kind: Group
   apiGroup: rbac.authorization.k8s.io
-  name: MatousJobanek
-- kind: User
-  apiGroup: rbac.authorization.k8s.io
-  name: alexeykazakov
-- kind: User
-  apiGroup: rbac.authorization.k8s.io
-  name: xcoulon
+  name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
index 6e44eba5..a565821c 100644
--- a/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
+++ b/components/sandbox/toolchain-member-operator/base/rbac/sandbox-sre-admins.yaml
@@ -5,18 +5,9 @@ metadata:
   name: sandbox-sre-member-admins
   namespace: sandbox-sre-member
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: MatousJobanek
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: alexeykazakov
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: xcoulon
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: mfrancisc
+    name: konflux-core
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
@@ -28,18 +19,9 @@ roleRef:
    name: sandbox-sre-member-operator-admins
    namespace: toolchain-member-operator
  subjects:
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: MatousJobanek
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: alexeykazakov
-   - kind: User
-     apiGroup: rbac.authorization.k8s.io
-     name: xcoulon
-   - kind: User
+   - kind: Group
      apiGroup: rbac.authorization.k8s.io
-     name: mfrancisc
+     name: konflux-core
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from a544da6c to 5caf6d8e on Wed Feb 7 12:10:59 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c677ef86..1334216e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 03448d41..8c1a7917 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a544da6c to 5caf6d8e on Wed Feb 7 12:10:59 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c677ef86..1334216e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 03448d41..8c1a7917 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a544da6c/staging/components/integration/staging/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:a054d6cb69d24bedb7e51d23000fae8db64d2d6b
---
>         image: quay.io/redhat-appstudio/integration-service:cad02429e3133890bcf92b2d7cc1f94233b8037e 
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
<h3>4: Development changes from a544da6c to 5caf6d8e on Wed Feb 7 12:10:59 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index c677ef86..1334216e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 03448d41..8c1a7917 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cad02429e3133890bcf92b2d7cc1f94233b8037e
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cad02429e3133890bcf92b2d7cc1f94233b8037e
+  newTag: a054d6cb69d24bedb7e51d23000fae8db64d2d6b
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a544da6c/development/components/integration/development/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:a054d6cb69d24bedb7e51d23000fae8db64d2d6b
---
>         image: quay.io/redhat-appstudio/integration-service:cad02429e3133890bcf92b2d7cc1f94233b8037e 
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
