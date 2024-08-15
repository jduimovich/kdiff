# kustomize changes tracked by commits 
### This file generated at Thu Aug 15 20:07:11 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f37ceaaa to 56ed8e32 on Thu Aug 15 18:03:51 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
index 2ba4f667..9d6fafa5 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
@@ -152,7 +152,7 @@ data:
             {
               "editorMode": "code",
               "exemplar": true,
-              "expr": "sum(increase(pipeline_service_schedule_overhead_percentage_sum{status='succeded'}[30m])) / sum(increase(pipeline_service_schedule_overhead_percentage_count{status='succeded'}[30m]))",
+              "expr": "sum(increase(pipeline_service_schedule_overhead_percentage_sum{status='succeded'}[2m])) / sum(increase(pipeline_service_schedule_overhead_percentage_count{status='succeded'}[2m]))",
               "format": "table",
               "hide": false,
               "instant": false,
@@ -220,7 +220,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(pipeline_service_execution_overhead_percentage_sum{status='succeded'}[30m])) / sum(increase(pipeline_service_execution_overhead_percentage_count{status='succeded'}[30m]))",
+              "expr": "sum(increase(pipeline_service_execution_overhead_percentage_sum{status='succeded'}[2m])) / sum(increase(pipeline_service_execution_overhead_percentage_count{status='succeded'}[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -230,7 +230,7 @@ data:
           "type": "stat"
         },
         {
-          "description": "The number of times the pipelines controller has restarted",
+          "description": "The number of times any of the tekton controllers have restarted",
           "fieldConfig": {
             "defaults": {
               "color": {
@@ -284,7 +284,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(kube_pod_container_status_restarts_total{namespace=\"openshift-pipelines\", pod=~\"tekton-pipelines-controller-.*\"}[30m]))",
+              "expr": "sum(increase(kube_pod_container_status_restarts_total{namespace=\"openshift-pipelines\", pod=~\"tekton-.*\"}[$__range]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -348,7 +348,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(pipelinerun_kickoff_not_attempted_count[30m]))",
+              "expr": "sum(increase(pipelinerun_kickoff_not_attempted_count[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -412,7 +412,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(taskrun_pod_create_not_attempted_or_pending_count[30m]))",
+              "expr": "sum(increase(taskrun_pod_create_not_attempted_or_pending_count[2m])) - sum(increase(tekton_pipelines_controller_running_taskruns_throttled_by_quota[2m])) - sum(increase(tekton_pipelines_controller_running_taskruns_throttled_by_node[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -421,6 +421,68 @@ data:
           "title": "TaskRun Controller kickoff after Kubernetes scheduling checks pass",
           "type": "stat"
         },
+        {
+          "description": "The number of validated ResolutionRequests not yet processed by the Resolver Controller.",
+          "fieldConfig": {
+            "defaults": {
+              "color": {
+                "mode": "thresholds"
+              },
+              "mappings": [],
+              "noValue": "No data",
+              "thresholds": {
+                "mode": "absolute",
+                "steps": [
+                  {
+                    "color": "green",
+                    "value": null
+                  },
+                  {
+                    "color": "red",
+                    "value": 30
+                  }
+                ]
+              },
+              "unit": "percent"
+            },
+            "overrides": []
+          },
+          "gridPos": {
+            "h": 9,
+            "w": 4,
+            "x": 0,
+            "y": 2
+          },
+          "id": 483,
+          "options": {
+            "colorMode": "value",
+            "graphMode": "area",
+            "justifyMode": "auto",
+            "orientation": "auto",
+            "reduceOptions": {
+              "calcs": [
+                "lastNotNull"
+              ],
+              "fields": "",
+              "values": false
+            },
+            "showPercentChange": false,
+            "textMode": "auto",
+            "wideLayout": true
+          },
+          "pluginVersion": "10.4.3",
+          "targets": [
+            {
+              "editorMode": "code",
+              "expr": "sum(increase(pending_resolutionrequest_count[$__range]))",
+              "legendFormat": "__auto",
+              "range": true,
+              "refId": "A"
+            }
+          ],
+          "title": "Deadlocked ResolutionRequests",
+          "type": "stat"
+        },
         {
           "collapsed": true,
           "gridPos": {
@@ -4127,7 +4189,7 @@ data:
                 {
                   "editorMode": "code",
                   "exemplar": true,
-                  "expr": "histogram_quantile(0.99, sum(rate(watcher_reconcile_latency_bucket{job=\"tekton-chains\"}[30m])) by (le) ) / 1000",
+                  "expr": "histogram_quantile(0.99, sum(rate(watcher_reconcile_latency_bucket{job=\"tekton-chains\"}[2m])) by (le) ) / 1000",
                   "interval": "",
                   "intervalFactor": 4,
                   "legendFormat": "Latency", 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from f37ceaaa to 56ed8e32 on Thu Aug 15 18:03:51 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
index 2ba4f667..9d6fafa5 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
@@ -152,7 +152,7 @@ data:
             {
               "editorMode": "code",
               "exemplar": true,
-              "expr": "sum(increase(pipeline_service_schedule_overhead_percentage_sum{status='succeded'}[30m])) / sum(increase(pipeline_service_schedule_overhead_percentage_count{status='succeded'}[30m]))",
+              "expr": "sum(increase(pipeline_service_schedule_overhead_percentage_sum{status='succeded'}[2m])) / sum(increase(pipeline_service_schedule_overhead_percentage_count{status='succeded'}[2m]))",
               "format": "table",
               "hide": false,
               "instant": false,
@@ -220,7 +220,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(pipeline_service_execution_overhead_percentage_sum{status='succeded'}[30m])) / sum(increase(pipeline_service_execution_overhead_percentage_count{status='succeded'}[30m]))",
+              "expr": "sum(increase(pipeline_service_execution_overhead_percentage_sum{status='succeded'}[2m])) / sum(increase(pipeline_service_execution_overhead_percentage_count{status='succeded'}[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -230,7 +230,7 @@ data:
           "type": "stat"
         },
         {
-          "description": "The number of times the pipelines controller has restarted",
+          "description": "The number of times any of the tekton controllers have restarted",
           "fieldConfig": {
             "defaults": {
               "color": {
@@ -284,7 +284,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(kube_pod_container_status_restarts_total{namespace=\"openshift-pipelines\", pod=~\"tekton-pipelines-controller-.*\"}[30m]))",
+              "expr": "sum(increase(kube_pod_container_status_restarts_total{namespace=\"openshift-pipelines\", pod=~\"tekton-.*\"}[$__range]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -348,7 +348,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(pipelinerun_kickoff_not_attempted_count[30m]))",
+              "expr": "sum(increase(pipelinerun_kickoff_not_attempted_count[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -412,7 +412,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(taskrun_pod_create_not_attempted_or_pending_count[30m]))",
+              "expr": "sum(increase(taskrun_pod_create_not_attempted_or_pending_count[2m])) - sum(increase(tekton_pipelines_controller_running_taskruns_throttled_by_quota[2m])) - sum(increase(tekton_pipelines_controller_running_taskruns_throttled_by_node[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -421,6 +421,68 @@ data:
           "title": "TaskRun Controller kickoff after Kubernetes scheduling checks pass",
           "type": "stat"
         },
+        {
+          "description": "The number of validated ResolutionRequests not yet processed by the Resolver Controller.",
+          "fieldConfig": {
+            "defaults": {
+              "color": {
+                "mode": "thresholds"
+              },
+              "mappings": [],
+              "noValue": "No data",
+              "thresholds": {
+                "mode": "absolute",
+                "steps": [
+                  {
+                    "color": "green",
+                    "value": null
+                  },
+                  {
+                    "color": "red",
+                    "value": 30
+                  }
+                ]
+              },
+              "unit": "percent"
+            },
+            "overrides": []
+          },
+          "gridPos": {
+            "h": 9,
+            "w": 4,
+            "x": 0,
+            "y": 2
+          },
+          "id": 483,
+          "options": {
+            "colorMode": "value",
+            "graphMode": "area",
+            "justifyMode": "auto",
+            "orientation": "auto",
+            "reduceOptions": {
+              "calcs": [
+                "lastNotNull"
+              ],
+              "fields": "",
+              "values": false
+            },
+            "showPercentChange": false,
+            "textMode": "auto",
+            "wideLayout": true
+          },
+          "pluginVersion": "10.4.3",
+          "targets": [
+            {
+              "editorMode": "code",
+              "expr": "sum(increase(pending_resolutionrequest_count[$__range]))",
+              "legendFormat": "__auto",
+              "range": true,
+              "refId": "A"
+            }
+          ],
+          "title": "Deadlocked ResolutionRequests",
+          "type": "stat"
+        },
         {
           "collapsed": true,
           "gridPos": {
@@ -4127,7 +4189,7 @@ data:
                 {
                   "editorMode": "code",
                   "exemplar": true,
-                  "expr": "histogram_quantile(0.99, sum(rate(watcher_reconcile_latency_bucket{job=\"tekton-chains\"}[30m])) by (le) ) / 1000",
+                  "expr": "histogram_quantile(0.99, sum(rate(watcher_reconcile_latency_bucket{job=\"tekton-chains\"}[2m])) by (le) ) / 1000",
                   "interval": "",
                   "intervalFactor": 4,
                   "legendFormat": "Latency", 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from f37ceaaa to 56ed8e32 on Thu Aug 15 18:03:51 2024 </h3>  
 
<details> 
<summary>Git Diff (136 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
index 2ba4f667..9d6fafa5 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/grafana-config.yaml
@@ -152,7 +152,7 @@ data:
             {
               "editorMode": "code",
               "exemplar": true,
-              "expr": "sum(increase(pipeline_service_schedule_overhead_percentage_sum{status='succeded'}[30m])) / sum(increase(pipeline_service_schedule_overhead_percentage_count{status='succeded'}[30m]))",
+              "expr": "sum(increase(pipeline_service_schedule_overhead_percentage_sum{status='succeded'}[2m])) / sum(increase(pipeline_service_schedule_overhead_percentage_count{status='succeded'}[2m]))",
               "format": "table",
               "hide": false,
               "instant": false,
@@ -220,7 +220,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(pipeline_service_execution_overhead_percentage_sum{status='succeded'}[30m])) / sum(increase(pipeline_service_execution_overhead_percentage_count{status='succeded'}[30m]))",
+              "expr": "sum(increase(pipeline_service_execution_overhead_percentage_sum{status='succeded'}[2m])) / sum(increase(pipeline_service_execution_overhead_percentage_count{status='succeded'}[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -230,7 +230,7 @@ data:
           "type": "stat"
         },
         {
-          "description": "The number of times the pipelines controller has restarted",
+          "description": "The number of times any of the tekton controllers have restarted",
           "fieldConfig": {
             "defaults": {
               "color": {
@@ -284,7 +284,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(kube_pod_container_status_restarts_total{namespace=\"openshift-pipelines\", pod=~\"tekton-pipelines-controller-.*\"}[30m]))",
+              "expr": "sum(increase(kube_pod_container_status_restarts_total{namespace=\"openshift-pipelines\", pod=~\"tekton-.*\"}[$__range]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -348,7 +348,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(pipelinerun_kickoff_not_attempted_count[30m]))",
+              "expr": "sum(increase(pipelinerun_kickoff_not_attempted_count[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -412,7 +412,7 @@ data:
           "targets": [
             {
               "editorMode": "code",
-              "expr": "sum(increase(taskrun_pod_create_not_attempted_or_pending_count[30m]))",
+              "expr": "sum(increase(taskrun_pod_create_not_attempted_or_pending_count[2m])) - sum(increase(tekton_pipelines_controller_running_taskruns_throttled_by_quota[2m])) - sum(increase(tekton_pipelines_controller_running_taskruns_throttled_by_node[2m]))",
               "legendFormat": "__auto",
               "range": true,
               "refId": "A"
@@ -421,6 +421,68 @@ data:
           "title": "TaskRun Controller kickoff after Kubernetes scheduling checks pass",
           "type": "stat"
         },
+        {
+          "description": "The number of validated ResolutionRequests not yet processed by the Resolver Controller.",
+          "fieldConfig": {
+            "defaults": {
+              "color": {
+                "mode": "thresholds"
+              },
+              "mappings": [],
+              "noValue": "No data",
+              "thresholds": {
+                "mode": "absolute",
+                "steps": [
+                  {
+                    "color": "green",
+                    "value": null
+                  },
+                  {
+                    "color": "red",
+                    "value": 30
+                  }
+                ]
+              },
+              "unit": "percent"
+            },
+            "overrides": []
+          },
+          "gridPos": {
+            "h": 9,
+            "w": 4,
+            "x": 0,
+            "y": 2
+          },
+          "id": 483,
+          "options": {
+            "colorMode": "value",
+            "graphMode": "area",
+            "justifyMode": "auto",
+            "orientation": "auto",
+            "reduceOptions": {
+              "calcs": [
+                "lastNotNull"
+              ],
+              "fields": "",
+              "values": false
+            },
+            "showPercentChange": false,
+            "textMode": "auto",
+            "wideLayout": true
+          },
+          "pluginVersion": "10.4.3",
+          "targets": [
+            {
+              "editorMode": "code",
+              "expr": "sum(increase(pending_resolutionrequest_count[$__range]))",
+              "legendFormat": "__auto",
+              "range": true,
+              "refId": "A"
+            }
+          ],
+          "title": "Deadlocked ResolutionRequests",
+          "type": "stat"
+        },
         {
           "collapsed": true,
           "gridPos": {
@@ -4127,7 +4189,7 @@ data:
                 {
                   "editorMode": "code",
                   "exemplar": true,
-                  "expr": "histogram_quantile(0.99, sum(rate(watcher_reconcile_latency_bucket{job=\"tekton-chains\"}[30m])) by (le) ) / 1000",
+                  "expr": "histogram_quantile(0.99, sum(rate(watcher_reconcile_latency_bucket{job=\"tekton-chains\"}[2m])) by (le) ) / 1000",
                   "interval": "",
                   "intervalFactor": 4,
                   "legendFormat": "Latency", 
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
<h3>2: Production changes from 0f748dbe to f37ceaaa on Thu Aug 15 17:03:21 2024 </h3>  
 
<details> 
<summary>Git Diff (650 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 08709740..ff653a14 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -27,21 +27,7 @@ objects:
     displayName: Development
     type: Non-POC
 
-# Quotas and default limits for not-terminating containers (regular long-running containers)
-# and terminating (short-lived containers like build) containers
-- apiVersion: v1
-  kind: ResourceQuota
-  metadata:
-    name: compute-deploy
-    namespace: ${SPACE_NAME}-tenant
-  spec:
-    scopes:
-    - NotTerminating
-    hard:
-      limits.cpu: "20"
-      limits.memory: ${MEMORY_LIMIT}
-      requests.cpu: 1750m
-      requests.memory: ${MEMORY_REQUEST}
+# Quotas and default limits for terminating (short-lived containers like build) containers
 - apiVersion: v1
   kind: ResourceQuota
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index a73ec65a..56949f7c 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -14,4 +14,5 @@ resources:
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
+- tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 1a8d479c..68dc1f52 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-2313893948-2313893948
+  - templateRef: appstudio-tenant-3815075241-3815075241
   spaceRoles:
     admin:
       templateRef: appstudio-admin-1876853981-1876853981
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
new file mode 100644
index 00000000..f2f7e952
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-3815075241-3815075241
+  namespace: toolchain-host-operator
+spec:
+  revision: 3815075241-3815075241
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 485ff728..67af8488 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -18,5 +18,6 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
+- tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index bb15a729..f733a114 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-1929014883-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-1929014883-2313893948
+  - templateRef: appstudiolarge-tenant-1929014883-3815075241
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-1929014883-1876853981
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
new file mode 100644
index 00000000..b3894034
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1929014883-3815075241
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-3815075241
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 0f748dbe to f37ceaaa on Thu Aug 15 17:03:21 2024 </h3>  
 
<details> 
<summary>Git Diff (650 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 08709740..ff653a14 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -27,21 +27,7 @@ objects:
     displayName: Development
     type: Non-POC
 
-# Quotas and default limits for not-terminating containers (regular long-running containers)
-# and terminating (short-lived containers like build) containers
-- apiVersion: v1
-  kind: ResourceQuota
-  metadata:
-    name: compute-deploy
-    namespace: ${SPACE_NAME}-tenant
-  spec:
-    scopes:
-    - NotTerminating
-    hard:
-      limits.cpu: "20"
-      limits.memory: ${MEMORY_LIMIT}
-      requests.cpu: 1750m
-      requests.memory: ${MEMORY_REQUEST}
+# Quotas and default limits for terminating (short-lived containers like build) containers
 - apiVersion: v1
   kind: ResourceQuota
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index a73ec65a..56949f7c 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -14,4 +14,5 @@ resources:
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
+- tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 1a8d479c..68dc1f52 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-2313893948-2313893948
+  - templateRef: appstudio-tenant-3815075241-3815075241
   spaceRoles:
     admin:
       templateRef: appstudio-admin-1876853981-1876853981
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
new file mode 100644
index 00000000..f2f7e952
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-3815075241-3815075241
+  namespace: toolchain-host-operator
+spec:
+  revision: 3815075241-3815075241
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 485ff728..67af8488 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -18,5 +18,6 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
+- tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index bb15a729..f733a114 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-1929014883-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-1929014883-2313893948
+  - templateRef: appstudiolarge-tenant-1929014883-3815075241
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-1929014883-1876853981
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
new file mode 100644
index 00000000..b3894034
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1929014883-3815075241
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-3815075241
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 0f748dbe to f37ceaaa on Thu Aug 15 17:03:21 2024 </h3>  
 
<details> 
<summary>Git Diff (650 lines)</summary>  

``` 
diff --git a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
index 08709740..ff653a14 100644
--- a/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
+++ b/components/sandbox/tiers/src/appstudio/ns_tenant.yaml
@@ -27,21 +27,7 @@ objects:
     displayName: Development
     type: Non-POC
 
-# Quotas and default limits for not-terminating containers (regular long-running containers)
-# and terminating (short-lived containers like build) containers
-- apiVersion: v1
-  kind: ResourceQuota
-  metadata:
-    name: compute-deploy
-    namespace: ${SPACE_NAME}-tenant
-  spec:
-    scopes:
-    - NotTerminating
-    hard:
-      limits.cpu: "20"
-      limits.memory: ${MEMORY_LIMIT}
-      requests.cpu: 1750m
-      requests.memory: ${MEMORY_REQUEST}
+# Quotas and default limits for terminating (short-lived containers like build) containers
 - apiVersion: v1
   kind: ResourceQuota
   metadata:
diff --git a/components/sandbox/tiers/staging/appstudio/kustomization.yaml b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
index a73ec65a..56949f7c 100644
--- a/components/sandbox/tiers/staging/appstudio/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudio/kustomization.yaml
@@ -14,4 +14,5 @@ resources:
 - tiertemplate-appstudio-maintainer-293087644-293087644.yaml
 - tiertemplate-appstudio-tenant-199961605-199961605.yaml
 - tiertemplate-appstudio-tenant-2313893948-2313893948.yaml
+- tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
 - tiertemplate-appstudio-viewer-4059797645-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
index 1a8d479c..68dc1f52 100644
--- a/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
+++ b/components/sandbox/tiers/staging/appstudio/nstemplatetier-appstudio.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudio-clusterresources-3180033938-3180033938
   namespaces:
-  - templateRef: appstudio-tenant-2313893948-2313893948
+  - templateRef: appstudio-tenant-3815075241-3815075241
   spaceRoles:
     admin:
       templateRef: appstudio-admin-1876853981-1876853981
diff --git a/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
new file mode 100644
index 00000000..f2f7e952
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudio/tiertemplate-appstudio-tenant-3815075241-3815075241.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudio-tenant-3815075241-3815075241
+  namespace: toolchain-host-operator
+spec:
+  revision: 3815075241-3815075241
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "120"
+    - name: CPU_BUILD_REQUEST
+      value: "60"
+    - name: MEMORY_BUILD_LIMIT
+      value: 128Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 64Gi
+    - name: COUNT_PVC
+      value: "90"
+    - name: REQUEST_STORAGE
+      value: 200Gi
+  tierName: appstudio
+  type: tenant
diff --git a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
index 485ff728..67af8488 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/kustomization.yaml
@@ -18,5 +18,6 @@ resources:
 - tiertemplate-appstudiolarge-tenant-1884308846-199961605.yaml
 - tiertemplate-appstudiolarge-tenant-1884308846-2313893948.yaml
 - tiertemplate-appstudiolarge-tenant-1929014883-2313893948.yaml
+- tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
 - tiertemplate-appstudiolarge-viewer-1884308846-4059797645.yaml
 - tiertemplate-appstudiolarge-viewer-1929014883-4059797645.yaml
diff --git a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
index bb15a729..f733a114 100644
--- a/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
+++ b/components/sandbox/tiers/staging/appstudiolarge/nstemplatetier-appstudiolarge.yaml
@@ -11,7 +11,7 @@ spec:
   clusterResources:
     templateRef: appstudiolarge-clusterresources-1929014883-3180033938
   namespaces:
-  - templateRef: appstudiolarge-tenant-1929014883-2313893948
+  - templateRef: appstudiolarge-tenant-1929014883-3815075241
   spaceRoles:
     admin:
       templateRef: appstudiolarge-admin-1929014883-1876853981
diff --git a/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
new file mode 100644
index 00000000..b3894034
--- /dev/null
+++ b/components/sandbox/tiers/staging/appstudiolarge/tiertemplate-appstudiolarge-tenant-1929014883-3815075241.yaml
@@ -0,0 +1,282 @@
+# ----------------------------------------------------------------
+# Generated by cli - DO NOT EDIT
+# ----------------------------------------------------------------
+
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: TierTemplate
+metadata:
+  name: appstudiolarge-tenant-1929014883-3815075241
+  namespace: toolchain-host-operator
+spec:
+  revision: 1929014883-3815075241
+  template:
+    apiVersion: template.openshift.io/v1
+    kind: Template
+    metadata: {}
+    objects:
+    - apiVersion: v1
+      kind: Namespace
+      metadata:
+        annotations:
+          openshift.io/description: ${SPACE_NAME}
+          openshift.io/display-name: ${SPACE_NAME}
+          openshift.io/requester: ${SPACE_NAME}
+        labels:
+          appstudio.redhat.com/workspace_name: ${SPACE_NAME}
+          argocd.argoproj.io/managed-by: gitops-service-argocd
+          name: ${SPACE_NAME}-tenant
+        name: ${SPACE_NAME}-tenant
+    - apiVersion: appstudio.redhat.com/v1alpha1
+      kind: Environment
+      metadata:
+        name: development
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        deploymentStrategy: AppStudioAutomated
+        displayName: Development
+        type: Non-POC
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: compute-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          limits.cpu: ${CPU_BUILD_LIMIT}
+          limits.memory: ${MEMORY_BUILD_LIMIT}
+          requests.cpu: ${CPU_BUILD_REQUEST}
+          requests.memory: ${MEMORY_BUILD_REQUEST}
+        scopes:
+        - Terminating
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: storage
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/persistentvolumeclaims: ${COUNT_PVC}
+          limits.ephemeral-storage: 50Gi
+          requests.ephemeral-storage: 50Gi
+          requests.storage: ${REQUEST_STORAGE}
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: toolchain-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spacerequests.toolchain.dev.openshift.com: "32"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/applications.appstudio.redhat.com: "512"
+          count/componentdetectionqueries.appstudio.redhat.com: "512"
+          count/components.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-build
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/buildpipelineselectors.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-gitops
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/deploymenttargetclaims.appstudio.redhat.com: "32"
+          count/deploymenttargetclasses.appstudio.redhat.com: "32"
+          count/deploymenttargets.appstudio.redhat.com: "32"
+          count/environments.appstudio.redhat.com: "512"
+          count/promotionruns.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-integration
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/integrationtestscenarios.appstudio.redhat.com: "512"
+          count/snapshotenvironmentbindings.appstudio.redhat.com: "512"
+          count/snapshots.appstudio.redhat.com: "1024"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-release
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/internalrequests.appstudio.redhat.com: "512"
+          count/releaseplanadmissions.appstudio.redhat.com: "512"
+          count/releaseplans.appstudio.redhat.com: "512"
+          count/releases.appstudio.redhat.com: "512"
+          count/releasestrategies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-enterprisecontract
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/enterprisecontractpolicies.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: ResourceQuota
+      metadata:
+        name: appstudio-crds-spi
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        hard:
+          count/spiaccesschecks.appstudio.redhat.com: "512"
+          count/spiaccesstokenbindings.appstudio.redhat.com: "512"
+          count/spiaccesstokendataupdates.appstudio.redhat.com: "512"
+          count/spiaccesstokens.appstudio.redhat.com: "512"
+          count/spifilecontentrequests.appstudio.redhat.com: "512"
+    - apiVersion: v1
+      kind: LimitRange
+      metadata:
+        name: resource-limits
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        limits:
+        - default:
+            cpu: 2000m
+            memory: 2Gi
+          defaultRequest:
+            cpu: 100m
+            memory: 256Mi
+          type: Container
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-same-namespace
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - podSelector: {}
+        podSelector: {}
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-ingress
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: ingress
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-openshift-monitoring
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: monitoring
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-codeready-workspaces-operator
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: codeready-workspaces
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-olm-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                openshift.io/scc: anyuid
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: networking.k8s.io/v1
+      kind: NetworkPolicy
+      metadata:
+        name: allow-from-console-namespaces
+        namespace: ${SPACE_NAME}-tenant
+      spec:
+        ingress:
+        - from:
+          - namespaceSelector:
+              matchLabels:
+                network.openshift.io/policy-group: console
+        podSelector: {}
+        policyTypes:
+        - Ingress
+    - apiVersion: v1
+      kind: ServiceAccount
+      metadata:
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: rbac.authorization.k8s.io/v1
+      kind: RoleBinding
+      metadata:
+        name: appstudio-pipelines-runner-rolebinding
+        namespace: ${SPACE_NAME}-tenant
+      roleRef:
+        apiGroup: rbac.authorization.k8s.io
+        kind: ClusterRole
+        name: appstudio-pipelines-runner
+      subjects:
+      - kind: ServiceAccount
+        name: appstudio-pipeline
+        namespace: ${SPACE_NAME}-tenant
+    - apiVersion: v1
+      data: {}
+      kind: ConfigMap
+      metadata:
+        labels:
+          config.openshift.io/inject-trusted-cabundle: "true"
+        name: trusted-ca
+        namespace: ${SPACE_NAME}-tenant
+    parameters:
+    - name: SPACE_NAME
+      required: true
+    - name: MEMORY_LIMIT
+      value: 32Gi
+    - name: MEMORY_REQUEST
+      value: 32Gi
+    - name: CPU_BUILD_LIMIT
+      value: "480"
+    - name: CPU_BUILD_REQUEST
+      value: "240"
+    - name: MEMORY_BUILD_LIMIT
+      value: 512Gi
+    - name: MEMORY_BUILD_REQUEST
+      value: 256Gi
+    - name: COUNT_PVC
+      value: "180"
+    - name: REQUEST_STORAGE
+      value: 400Gi
+  tierName: appstudiolarge
+  type: tenant 
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
<h3>3: Production changes from a0899b4a to 0f748dbe on Thu Aug 15 16:33:07 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 56313f52..077c8906 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -428,5 +428,5 @@ data:
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
   host.ibm-gpu-amd64.user: "root"
-  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from a0899b4a to 0f748dbe on Thu Aug 15 16:33:07 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 56313f52..077c8906 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -428,5 +428,5 @@ data:
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
   host.ibm-gpu-amd64.user: "root"
-  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from a0899b4a to 0f748dbe on Thu Aug 15 16:33:07 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 56313f52..077c8906 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -428,5 +428,5 @@ data:
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
   host.ibm-gpu-amd64.user: "root"
-  host.ibm-gpu-amd64.secret: "internal-stage-ibm-ssh-key"
+  host.ibm-gpu-amd64.secret: "internal-prod-ibm-ssh-key"
   host.ibm-gpu-amd64.concurrency: "4" 
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
<h3>4: Production changes from bd878c2c to a0899b4a on Thu Aug 15 15:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index bbeaadce..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -29,7 +29,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: konflux-workspaces
+        namespace: workspaces-system
         server: '{{server}}'
       syncPolicy:
         automated: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from bd878c2c to a0899b4a on Thu Aug 15 15:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index bbeaadce..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -29,7 +29,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: konflux-workspaces
+        namespace: workspaces-system
         server: '{{server}}'
       syncPolicy:
         automated: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from bd878c2c to a0899b4a on Thu Aug 15 15:43:38 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/host/workspaces/workspaces.yaml b/argo-cd-apps/base/host/workspaces/workspaces.yaml
index bbeaadce..266571a3 100644
--- a/argo-cd-apps/base/host/workspaces/workspaces.yaml
+++ b/argo-cd-apps/base/host/workspaces/workspaces.yaml
@@ -29,7 +29,7 @@ spec:
         repoURL: https://github.com/redhat-appstudio/infra-deployments.git
         targetRevision: main
       destination:
-        namespace: konflux-workspaces
+        namespace: workspaces-system
         server: '{{server}}'
       syncPolicy:
         automated: 
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
