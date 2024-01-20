# kustomize changes tracked by commits 
### This file generated at Sat Jan 20 08:01:59 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from de52b8d2 to a65676ad on Fri Jan 19 17:12:52 2024 </h3>  
 
<details> 
<summary>Git Diff (664 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml b/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
new file mode 100644
index 00000000..773df09e
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-sandbox-proxy-metrics
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-sandbox-proxy-metrics
+    key: sandbox-proxy-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml b/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
new file mode 100644
index 00000000..4fc26c8b
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-sandbox-proxy-metrics
+    files:
+      - sandbox-proxy-metrics.json
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
new file mode 100644
index 00000000..569d73ec
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -0,0 +1,611 @@
+{
+  "annotations": {
+    "list": [
+      {
+        "builtIn": 1,
+        "datasource": {
+          "type": "datasource",
+          "uid": "grafana"
+        },
+        "enable": true,
+        "hide": true,
+        "iconColor": "rgba(0, 211, 255, 1)",
+        "name": "Annotations & Alerts",
+        "type": "dashboard"
+      }
+    ]
+  },
+  "editable": true,
+  "fiscalYearStartMonth": 0,
+  "graphTooltip": 0,
+  "id": 16,
+  "links": [],
+  "liveNow": false,
+  "panels": [
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of requests to list workspaces",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 0
+      },
+      "id": 3,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile of list-workspace requests",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 0
+      },
+      "id": 5,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average response time of list-workspace",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of requests to get workspace",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 8
+      },
+      "id": 2,
+      "options": {
+        "legend": {
+          "calcs": [
+            "max"
+          ],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile of get-workspace requests",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 8
+      },
+      "id": 6,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average response time of get-workspace",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "axisSoftMax": 0,
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineStyle": {
+              "fill": "solid"
+            },
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "always",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 16
+      },
+      "id": 1,
+      "options": {
+        "legend": {
+          "calcs": [
+            "distinctCount",
+            "max"
+          ],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "pluginVersion": "9.5.1",
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile proxy api",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 16
+      },
+      "id": 4,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average Response Time of Api Request",
+      "type": "timeseries"
+    }
+  ],
+  "refresh": "5m",
+  "schemaVersion": 38,
+  "style": "dark",
+  "tags": [],
+  "templating": {
+    "list": []
+  },
+  "time": {
+    "from": "now-7d",
+    "to": "now"
+  },
+  "timepicker": {},
+  "timezone": "",
+  "title": "Proxy Metrics",
+  "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
+  "version": 14,
+  "weekStart": ""
+}
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index a1337a99..336318de 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -1,6 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+- core/
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from de52b8d2 to a65676ad on Fri Jan 19 17:12:52 2024 </h3>  
 
<details> 
<summary>Git Diff (664 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml b/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
new file mode 100644
index 00000000..773df09e
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-sandbox-proxy-metrics
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-sandbox-proxy-metrics
+    key: sandbox-proxy-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml b/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
new file mode 100644
index 00000000..4fc26c8b
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-sandbox-proxy-metrics
+    files:
+      - sandbox-proxy-metrics.json
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
new file mode 100644
index 00000000..569d73ec
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -0,0 +1,611 @@
+{
+  "annotations": {
+    "list": [
+      {
+        "builtIn": 1,
+        "datasource": {
+          "type": "datasource",
+          "uid": "grafana"
+        },
+        "enable": true,
+        "hide": true,
+        "iconColor": "rgba(0, 211, 255, 1)",
+        "name": "Annotations & Alerts",
+        "type": "dashboard"
+      }
+    ]
+  },
+  "editable": true,
+  "fiscalYearStartMonth": 0,
+  "graphTooltip": 0,
+  "id": 16,
+  "links": [],
+  "liveNow": false,
+  "panels": [
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of requests to list workspaces",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 0
+      },
+      "id": 3,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile of list-workspace requests",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 0
+      },
+      "id": 5,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average response time of list-workspace",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of requests to get workspace",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 8
+      },
+      "id": 2,
+      "options": {
+        "legend": {
+          "calcs": [
+            "max"
+          ],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile of get-workspace requests",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 8
+      },
+      "id": 6,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average response time of get-workspace",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "axisSoftMax": 0,
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineStyle": {
+              "fill": "solid"
+            },
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "always",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 16
+      },
+      "id": 1,
+      "options": {
+        "legend": {
+          "calcs": [
+            "distinctCount",
+            "max"
+          ],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "pluginVersion": "9.5.1",
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile proxy api",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 16
+      },
+      "id": 4,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average Response Time of Api Request",
+      "type": "timeseries"
+    }
+  ],
+  "refresh": "5m",
+  "schemaVersion": 38,
+  "style": "dark",
+  "tags": [],
+  "templating": {
+    "list": []
+  },
+  "time": {
+    "from": "now-7d",
+    "to": "now"
+  },
+  "timepicker": {},
+  "timezone": "",
+  "title": "Proxy Metrics",
+  "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
+  "version": 14,
+  "weekStart": ""
+}
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index a1337a99..336318de 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -1,6 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+- core/
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
<h3>1: Development changes from de52b8d2 to a65676ad on Fri Jan 19 17:12:52 2024 </h3>  
 
<details> 
<summary>Git Diff (664 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/core/dashboard.yaml b/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
new file mode 100644
index 00000000..773df09e
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-sandbox-proxy-metrics
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-sandbox-proxy-metrics
+    key: sandbox-proxy-metrics.json
diff --git a/components/monitoring/grafana/base/dashboards/core/kustomization.yaml b/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
new file mode 100644
index 00000000..4fc26c8b
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-sandbox-proxy-metrics
+    files:
+      - sandbox-proxy-metrics.json
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
new file mode 100644
index 00000000..569d73ec
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/core/sandbox-proxy-metrics.json
@@ -0,0 +1,611 @@
+{
+  "annotations": {
+    "list": [
+      {
+        "builtIn": 1,
+        "datasource": {
+          "type": "datasource",
+          "uid": "grafana"
+        },
+        "enable": true,
+        "hide": true,
+        "iconColor": "rgba(0, 211, 255, 1)",
+        "name": "Annotations & Alerts",
+        "type": "dashboard"
+      }
+    ]
+  },
+  "editable": true,
+  "fiscalYearStartMonth": 0,
+  "graphTooltip": 0,
+  "id": 16,
+  "links": [],
+  "liveNow": false,
+  "panels": [
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of requests to list workspaces",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 0
+      },
+      "id": 3,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"List\"}[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile of list-workspace requests",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 0
+      },
+      "id": 5,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"List\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"List\"}[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average response time of list-workspace",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of requests to get workspace",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 8
+      },
+      "id": 2,
+      "options": {
+        "legend": {
+          "calcs": [
+            "max"
+          ],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_workspace_http_request_time_bucket{kube_verb=\"Get\"}[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile of get-workspace requests",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 8
+      },
+      "id": 6,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_workspace_http_request_time_sum{kube_verb=\"Get\"}[5m])/rate(sandbox_proxy_workspace_http_request_time_count{kube_verb=\"Get\"}[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average response time of get-workspace",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "description": "p95 latency of proxy api requests which is either accepted (202) or not accepted(406)",
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "axisSoftMax": 0,
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineStyle": {
+              "fill": "solid"
+            },
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "always",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          },
+          "unit": "s"
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 0,
+        "y": 16
+      },
+      "id": 1,
+      "options": {
+        "legend": {
+          "calcs": [
+            "distinctCount",
+            "max"
+          ],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "pluginVersion": "9.5.1",
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "builder",
+          "expr": "histogram_quantile(0.95, sum by(le, status_code) (rate(sandbox_proxy_api_http_request_time_bucket[5m])))",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "95 quantile proxy api",
+      "type": "timeseries"
+    },
+    {
+      "datasource": {
+        "type": "datasource",
+        "uid": "grafana"
+      },
+      "fieldConfig": {
+        "defaults": {
+          "color": {
+            "mode": "palette-classic"
+          },
+          "custom": {
+            "axisCenteredZero": false,
+            "axisColorMode": "text",
+            "axisLabel": "",
+            "axisPlacement": "auto",
+            "barAlignment": 0,
+            "drawStyle": "line",
+            "fillOpacity": 0,
+            "gradientMode": "none",
+            "hideFrom": {
+              "legend": false,
+              "tooltip": false,
+              "viz": false
+            },
+            "lineInterpolation": "linear",
+            "lineWidth": 1,
+            "pointSize": 5,
+            "scaleDistribution": {
+              "type": "linear"
+            },
+            "showPoints": "auto",
+            "spanNulls": false,
+            "stacking": {
+              "group": "A",
+              "mode": "none"
+            },
+            "thresholdsStyle": {
+              "mode": "off"
+            }
+          },
+          "mappings": [],
+          "thresholds": {
+            "mode": "absolute",
+            "steps": [
+              {
+                "color": "green",
+                "value": null
+              },
+              {
+                "color": "red",
+                "value": 80
+              }
+            ]
+          }
+        },
+        "overrides": []
+      },
+      "gridPos": {
+        "h": 8,
+        "w": 12,
+        "x": 12,
+        "y": 16
+      },
+      "id": 4,
+      "options": {
+        "legend": {
+          "calcs": [],
+          "displayMode": "list",
+          "placement": "bottom",
+          "showLegend": true
+        },
+        "tooltip": {
+          "mode": "single",
+          "sort": "none"
+        }
+      },
+      "targets": [
+        {
+          "datasource": {
+            "type": "datasource",
+            "uid": "grafana"
+          },
+          "editorMode": "code",
+          "expr": "sum (rate(sandbox_proxy_api_http_request_time_sum[5m])/rate(sandbox_proxy_api_http_request_time_count[5m])) by (status_code)",
+          "legendFormat": "__auto",
+          "range": true,
+          "refId": "A"
+        }
+      ],
+      "title": "Average Response Time of Api Request",
+      "type": "timeseries"
+    }
+  ],
+  "refresh": "5m",
+  "schemaVersion": 38,
+  "style": "dark",
+  "tags": [],
+  "templating": {
+    "list": []
+  },
+  "time": {
+    "from": "now-7d",
+    "to": "now"
+  },
+  "timepicker": {},
+  "timezone": "",
+  "title": "Proxy Metrics",
+  "uid": "a2aa66a3-b7b9-42d4-92df-7e4f46ee7bea",
+  "version": 14,
+  "weekStart": ""
+}
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index a1337a99..336318de 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -1,6 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
+- core/
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 1cf5bf20 to de52b8d2 on Fri Jan 19 15:28:22 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index a326c1dc..ee90f32b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 491bfd3c..2b4719d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d802f90c..a92e4ddc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-1cf5bf20/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1202c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
./commit-1cf5bf20/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1202c1202
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2 
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
<h3>2: Staging changes from 1cf5bf20 to de52b8d2 on Fri Jan 19 15:28:22 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index a326c1dc..ee90f32b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 491bfd3c..2b4719d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d802f90c..a92e4ddc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>2: Development changes from 1cf5bf20 to de52b8d2 on Fri Jan 19 15:28:22 2024 </h3>  
 
<details> 
<summary>Git Diff (39 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index a326c1dc..ee90f32b 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=de5809f2532b129640c4a00aae76a363be67dcbe
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=7dd671fd96e4f2407f426cc94ae0c959717f409a
   - pipelines-as-code-secret.yaml # create external secret in openshift-pipelines namespace
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 491bfd3c..2b4719d9 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d802f90c..a92e4ddc 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1199,7 +1199,7 @@ spec:
     spec:
       containers:
       - args: []
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:42a1938a18bf5b999241fafbf0d57a1c7d19e0f2
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:cdff9b19bf4b6e7009412ae6103be882a3a36f9b
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 99d5ea5f to 1cf5bf20 on Fri Jan 19 14:27:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f18d3bab..c8772385 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=99b3d180b4f70fecc99bcee284beffcbe0f92cb7
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml 
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
<h3>3: Staging changes from 99d5ea5f to 1cf5bf20 on Fri Jan 19 14:27:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f18d3bab..c8772385 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=99b3d180b4f70fecc99bcee284beffcbe0f92cb7
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml 
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
<h3>3: Development changes from 99d5ea5f to 1cf5bf20 on Fri Jan 19 14:27:54 2024 </h3>  
 
<details> 
<summary>Git Diff (11 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
index f18d3bab..c8772385 100644
--- a/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/spi/kustomization.yaml
@@ -2,5 +2,5 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - https://github.com/redhat-appstudio/service-provider-integration-operator/config/monitoring/grafana/base?ref=99b3d180b4f70fecc99bcee284beffcbe0f92cb7
-- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=c146261dd5441a74b87c302e8528aba1df50f201
+- https://github.com/redhat-appstudio/remote-secret/config/monitoring/grafana/base?ref=dbad89ab926ce9f8ee829702abc276e1805c8a97
 - dashboard.yaml 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from b7cc9547 to 99d5ea5f on Fri Jan 19 13:13:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8185485e..374bb49e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template:
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index f7583390..8f6952fc 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/staging/manager_resources_patch.yaml
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template: 
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
<h3>4: Staging changes from b7cc9547 to 99d5ea5f on Fri Jan 19 13:13:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8185485e..374bb49e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template:
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index f7583390..8f6952fc 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/staging/manager_resources_patch.yaml
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-b7cc9547/staging/components/integration/staging/kustomize.out.yaml
1108c1108
<   name: integration-service-controller-manager
---
>   name: integration-service-integration-service-controller-manager
1129c1129
<         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
---
>         image: quay.io/redhat-appstudio/integration-service:cb0b172ed6bc1a9619440058eecc1b2f5feafafc 
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
<h3>4: Development changes from b7cc9547 to 99d5ea5f on Fri Jan 19 13:13:38 2024 </h3>  
 
<details> 
<summary>Git Diff (64 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8185485e..374bb49e 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/development/manager_resources_patch.yaml b/components/integration/development/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/development/manager_resources_patch.yaml
+++ b/components/integration/development/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template:
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index f7583390..8f6952fc 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: cb0b172ed6bc1a9619440058eecc1b2f5feafafc
+  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
 
 namespace: integration-service
 
diff --git a/components/integration/staging/manager_resources_patch.yaml b/components/integration/staging/manager_resources_patch.yaml
index 5d3aa167..87ef961d 100644
--- a/components/integration/staging/manager_resources_patch.yaml
+++ b/components/integration/staging/manager_resources_patch.yaml
@@ -1,7 +1,7 @@
 apiVersion: apps/v1
 kind: Deployment
 metadata:
-  name: integration-service-controller-manager
+  name: controller-manager
   namespace: system
 spec:
   template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-b7cc9547/development/components/integration/development/kustomize.out.yaml
1108c1108
<   name: integration-service-controller-manager
---
>   name: integration-service-integration-service-controller-manager
1129c1129
<         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
---
>         image: quay.io/redhat-appstudio/integration-service:cb0b172ed6bc1a9619440058eecc1b2f5feafafc 
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
```
 
</details> 
<br> 


</div>
