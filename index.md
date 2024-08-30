# kustomize changes tracked by commits 
### This file generated at Fri Aug 30 16:05:09 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 77f99a39 to 0fbc74f0 on Fri Aug 30 15:54:48 2024 </h3>  
 
<details> 
<summary>Git Diff (1276 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 9ae3bac1..6aa6f3c6 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -14,6 +14,7 @@ resources:
 - performance/
 - pipeline-service/
 - generic-dashboards/
+- power-monitoring/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
new file mode 100644
index 00000000..1cff92fd
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-power-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-power-monitoring
+    key: kepler.json
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
new file mode 100644
index 00000000..edde47c9
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
@@ -0,0 +1,1224 @@
+{
+    "annotations": {
+      "list": [
+        {
+          "builtIn": 1,
+          "datasource": {
+            "type": "grafana",
+            "uid": "-- Grafana --"
+          },
+          "enable": true,
+          "hide": true,
+          "iconColor": "rgba(0, 211, 255, 1)",
+          "name": "Annotations & Alerts",
+          "target": {
+            "limit": 100,
+            "matchAny": false,
+            "tags": [],
+            "type": "dashboard"
+          },
+          "type": "dashboard"
+        }
+      ]
+    },
+    "description": "Dashboard for Kepler Exporter",
+    "editable": true,
+    "fiscalYearStartMonth": 0,
+    "graphTooltip": 0,
+    "id": 2,
+    "iteration": 1694154532971,
+    "links": [],
+    "liveNow": false,
+    "panels": [
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 0
+        },
+        "id": 33,
+        "panels": [],
+        "title": "Power Consumption / Overview",
+        "type": "row"
+      },
+      {
+        "description": "CPU architecture & Power source determined by Kepler",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "center",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 0,
+          "y": 1
+        },
+        "id": 29,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "enablePagination": false,
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count ( label_replace( kepler_node_info{container=\"kepler\"}, \"zz_components_power_source\", \"$1\", \"components_power_source\", \"(.+)\") ) by (cpu_architecture, zz_components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Node - CPU Architecture & Power Source",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "Value": "Number of nodes",
+                "cpu_architecture": "CPU architecture",
+                "platform_power_source": "Platform Source",
+                "zz_components_power_source": "Component Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "description": "Total Energy Consumption (kWh) - Last 24 hours",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 12,
+          "y": 1
+        },
+        "id": 31,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "colorMode": "value",
+          "graphMode": "area",
+          "justifyMode": "center",
+          "orientation": "auto",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "values": false
+          },
+          "textMode": "auto"
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "expr": "kepler:kepler:container_joules_total:consumed:24h:all * $watt_per_second_to_kWh",
+            "refId": "A"
+          }
+        ],
+        "title": "Total Energy Consumption (kWh) - Last 24 hours",
+        "type": "stat"
+      },
+      {
+        "description": "Total Power Consumption for Top 10 Namespaces (kWh per day)",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 12,
+          "w": 24,
+          "x": 0,
+          "y": 8
+        },
+        "id": 18,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "displayMode": "gradient",
+          "minVizHeight": 10,
+          "minVizWidth": 0,
+          "orientation": "horizontal",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "limit": 10,
+            "values": true
+          },
+          "showUnfilled": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "topk(10, kepler:kepler:container_joules_total:consumed:24h:by_ns) * $watt_per_second_to_kWh",
+            "format": "table",
+            "instant": true,
+            "interval": "",
+            "legendFormat": "{{container_namespace}}",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Top 10 Energy Consuming Namespaces (kWh) in Last 24 hours",
+        "transformations": [
+          {
+            "id": "groupBy",
+            "options": {
+              "fields": {
+                "Value": {
+                  "aggregations": [
+                    "lastNotNull"
+                  ],
+                  "operation": "aggregate"
+                },
+                "container_namespace": {
+                  "aggregations": [],
+                  "operation": "groupby"
+                }
+              }
+            }
+          },
+          {
+            "id": "sortBy",
+            "options": {
+              "fields": {},
+              "sort": [
+                {
+                  "desc": true,
+                  "field": "Value (lastNotNull)"
+                }
+              ]
+            }
+          }
+        ],
+        "type": "bargauge"
+      },
+      {
+        "description": "Architecture, Component and Power source per Instance",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "auto",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                },
+                {
+                  "color": "red",
+                  "value": 80
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 35,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count (label_replace( kepler_node_info{container=\"kepler\"}, \"aa_instance\", \"$1\", \"instance\", \"(.+)\")) by (aa_instance, cpu_architecture, components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Detailed Node Information",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "Value": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "aa_instance": "Instance",
+                "components_power_source": "Component Power Source",
+                "cpu_architecture": "CPU Architecture",
+                "platform_power_source": "Platform Power Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 8,
+        "panels": [],
+        "title": "Power Consumption / Namespace",
+        "type": "row"
+      },
+      {
+        "description": "Total Power Consumption (W) in Namespace",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 0,
+          "y": 21
+        },
+        "id": 2,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom"
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Power Consumption (W) in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "Total Energy Consumption in Namespace (kWh) - Last 1 hour",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 12,
+          "y": 21
+        },
+        "id": 17,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom",
+            "sortBy": "Max",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG (CORE + UNCORE)",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_other_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_gpu_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Energy Consumption in $namespace (kWh) - Last 1 hour",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in PKG by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 29
+        },
+        "id": 16,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "PKG Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in DRAM by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 29
+        },
+        "id": 23,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "B"
+          }
+        ],
+        "title": "DRAM Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in OTHER by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 39
+        },
+        "id": 26,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "OTHER Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in GPU by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 39
+        },
+        "id": 27,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "GPU Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      }
+    ],
+    "refresh": "",
+    "schemaVersion": 36,
+    "style": "dark",
+    "tags": [],
+    "templating": {
+      "list": [
+        {
+          "current": {
+            "selected": true,
+            "text": "Prometheus",
+            "value": "Prometheus"
+          },
+          "hide": 0,
+          "includeAll": false,
+          "multi": false,
+          "name": "datasource",
+          "options": [],
+          "query": "prometheus",
+          "queryValue": "",
+          "refresh": 1,
+          "regex": ".*-(appstudio)-.*",
+          "skipUrlSync": false,
+          "type": "datasource"
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": false,
+            "text": "kepler-operator",
+            "value": "kepler-operator"
+          },
+          "definition": "label_values(kepler_container_package_joules_total, container_namespace)",
+          "description": "Namespace for pods to choose",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Namespace",
+          "multi": false,
+          "name": "namespace",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total, container_namespace)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": true,
+            "text": "All",
+            "value": "$__all"
+          },
+          "definition": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+          "description": "Number of pods inside namespace",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Pod",
+          "multi": false,
+          "name": "pod",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "description": "1W*s = 1J and 1J = (1/3600000)kWh",
+          "hide": 2,
+          "label": "",
+          "name": "watt_per_second_to_kWh",
+          "query": "0.000000277777777777778",
+          "skipUrlSync": false,
+          "type": "constant"
+        }
+      ]
+    },
+    "time": {
+      "from": "now-15m",
+      "to": "now"
+    },
+    "timepicker": {},
+    "timezone": "browser",
+    "title": "Kepler Exporter Dashboard",
+    "uid": "381ef848417532a1ef945494449453a41fdabaa7",
+    "version": 1,
+    "weekStart": ""
+  }
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..24d85e0f
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-power-monitoring
+    files:
+      - kepler.json 
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
<h3>1: Staging changes from 77f99a39 to 0fbc74f0 on Fri Aug 30 15:54:48 2024 </h3>  
 
<details> 
<summary>Git Diff (1276 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 9ae3bac1..6aa6f3c6 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -14,6 +14,7 @@ resources:
 - performance/
 - pipeline-service/
 - generic-dashboards/
+- power-monitoring/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
new file mode 100644
index 00000000..1cff92fd
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-power-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-power-monitoring
+    key: kepler.json
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
new file mode 100644
index 00000000..edde47c9
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
@@ -0,0 +1,1224 @@
+{
+    "annotations": {
+      "list": [
+        {
+          "builtIn": 1,
+          "datasource": {
+            "type": "grafana",
+            "uid": "-- Grafana --"
+          },
+          "enable": true,
+          "hide": true,
+          "iconColor": "rgba(0, 211, 255, 1)",
+          "name": "Annotations & Alerts",
+          "target": {
+            "limit": 100,
+            "matchAny": false,
+            "tags": [],
+            "type": "dashboard"
+          },
+          "type": "dashboard"
+        }
+      ]
+    },
+    "description": "Dashboard for Kepler Exporter",
+    "editable": true,
+    "fiscalYearStartMonth": 0,
+    "graphTooltip": 0,
+    "id": 2,
+    "iteration": 1694154532971,
+    "links": [],
+    "liveNow": false,
+    "panels": [
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 0
+        },
+        "id": 33,
+        "panels": [],
+        "title": "Power Consumption / Overview",
+        "type": "row"
+      },
+      {
+        "description": "CPU architecture & Power source determined by Kepler",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "center",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 0,
+          "y": 1
+        },
+        "id": 29,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "enablePagination": false,
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count ( label_replace( kepler_node_info{container=\"kepler\"}, \"zz_components_power_source\", \"$1\", \"components_power_source\", \"(.+)\") ) by (cpu_architecture, zz_components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Node - CPU Architecture & Power Source",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "Value": "Number of nodes",
+                "cpu_architecture": "CPU architecture",
+                "platform_power_source": "Platform Source",
+                "zz_components_power_source": "Component Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "description": "Total Energy Consumption (kWh) - Last 24 hours",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 12,
+          "y": 1
+        },
+        "id": 31,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "colorMode": "value",
+          "graphMode": "area",
+          "justifyMode": "center",
+          "orientation": "auto",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "values": false
+          },
+          "textMode": "auto"
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "expr": "kepler:kepler:container_joules_total:consumed:24h:all * $watt_per_second_to_kWh",
+            "refId": "A"
+          }
+        ],
+        "title": "Total Energy Consumption (kWh) - Last 24 hours",
+        "type": "stat"
+      },
+      {
+        "description": "Total Power Consumption for Top 10 Namespaces (kWh per day)",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 12,
+          "w": 24,
+          "x": 0,
+          "y": 8
+        },
+        "id": 18,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "displayMode": "gradient",
+          "minVizHeight": 10,
+          "minVizWidth": 0,
+          "orientation": "horizontal",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "limit": 10,
+            "values": true
+          },
+          "showUnfilled": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "topk(10, kepler:kepler:container_joules_total:consumed:24h:by_ns) * $watt_per_second_to_kWh",
+            "format": "table",
+            "instant": true,
+            "interval": "",
+            "legendFormat": "{{container_namespace}}",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Top 10 Energy Consuming Namespaces (kWh) in Last 24 hours",
+        "transformations": [
+          {
+            "id": "groupBy",
+            "options": {
+              "fields": {
+                "Value": {
+                  "aggregations": [
+                    "lastNotNull"
+                  ],
+                  "operation": "aggregate"
+                },
+                "container_namespace": {
+                  "aggregations": [],
+                  "operation": "groupby"
+                }
+              }
+            }
+          },
+          {
+            "id": "sortBy",
+            "options": {
+              "fields": {},
+              "sort": [
+                {
+                  "desc": true,
+                  "field": "Value (lastNotNull)"
+                }
+              ]
+            }
+          }
+        ],
+        "type": "bargauge"
+      },
+      {
+        "description": "Architecture, Component and Power source per Instance",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "auto",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                },
+                {
+                  "color": "red",
+                  "value": 80
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 35,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count (label_replace( kepler_node_info{container=\"kepler\"}, \"aa_instance\", \"$1\", \"instance\", \"(.+)\")) by (aa_instance, cpu_architecture, components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Detailed Node Information",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "Value": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "aa_instance": "Instance",
+                "components_power_source": "Component Power Source",
+                "cpu_architecture": "CPU Architecture",
+                "platform_power_source": "Platform Power Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 8,
+        "panels": [],
+        "title": "Power Consumption / Namespace",
+        "type": "row"
+      },
+      {
+        "description": "Total Power Consumption (W) in Namespace",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 0,
+          "y": 21
+        },
+        "id": 2,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom"
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Power Consumption (W) in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "Total Energy Consumption in Namespace (kWh) - Last 1 hour",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 12,
+          "y": 21
+        },
+        "id": 17,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom",
+            "sortBy": "Max",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG (CORE + UNCORE)",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_other_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_gpu_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Energy Consumption in $namespace (kWh) - Last 1 hour",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in PKG by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 29
+        },
+        "id": 16,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "PKG Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in DRAM by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 29
+        },
+        "id": 23,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "B"
+          }
+        ],
+        "title": "DRAM Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in OTHER by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 39
+        },
+        "id": 26,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "OTHER Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in GPU by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 39
+        },
+        "id": 27,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "GPU Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      }
+    ],
+    "refresh": "",
+    "schemaVersion": 36,
+    "style": "dark",
+    "tags": [],
+    "templating": {
+      "list": [
+        {
+          "current": {
+            "selected": true,
+            "text": "Prometheus",
+            "value": "Prometheus"
+          },
+          "hide": 0,
+          "includeAll": false,
+          "multi": false,
+          "name": "datasource",
+          "options": [],
+          "query": "prometheus",
+          "queryValue": "",
+          "refresh": 1,
+          "regex": ".*-(appstudio)-.*",
+          "skipUrlSync": false,
+          "type": "datasource"
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": false,
+            "text": "kepler-operator",
+            "value": "kepler-operator"
+          },
+          "definition": "label_values(kepler_container_package_joules_total, container_namespace)",
+          "description": "Namespace for pods to choose",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Namespace",
+          "multi": false,
+          "name": "namespace",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total, container_namespace)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": true,
+            "text": "All",
+            "value": "$__all"
+          },
+          "definition": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+          "description": "Number of pods inside namespace",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Pod",
+          "multi": false,
+          "name": "pod",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "description": "1W*s = 1J and 1J = (1/3600000)kWh",
+          "hide": 2,
+          "label": "",
+          "name": "watt_per_second_to_kWh",
+          "query": "0.000000277777777777778",
+          "skipUrlSync": false,
+          "type": "constant"
+        }
+      ]
+    },
+    "time": {
+      "from": "now-15m",
+      "to": "now"
+    },
+    "timepicker": {},
+    "timezone": "browser",
+    "title": "Kepler Exporter Dashboard",
+    "uid": "381ef848417532a1ef945494449453a41fdabaa7",
+    "version": 1,
+    "weekStart": ""
+  }
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..24d85e0f
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-power-monitoring
+    files:
+      - kepler.json 
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
<h3>1: Development changes from 77f99a39 to 0fbc74f0 on Fri Aug 30 15:54:48 2024 </h3>  
 
<details> 
<summary>Git Diff (1276 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/kustomization.yaml b/components/monitoring/grafana/base/dashboards/kustomization.yaml
index 9ae3bac1..6aa6f3c6 100644
--- a/components/monitoring/grafana/base/dashboards/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/kustomization.yaml
@@ -14,6 +14,7 @@ resources:
 - performance/
 - pipeline-service/
 - generic-dashboards/
+- power-monitoring/
 
 # Skip applying the grafana operands (integreatly.org) while the grafana operator is being installed.
 # See more information about this option, here:
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
new file mode 100644
index 00000000..1cff92fd
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/dashboard.yaml
@@ -0,0 +1,13 @@
+apiVersion: grafana.integreatly.org/v1beta1
+kind: GrafanaDashboard
+metadata:
+  name: grafana-dashboard-power-monitoring
+  labels: 
+    app: appstudio-grafana
+spec:
+  instanceSelector:
+    matchLabels:
+      dashboards: "appstudio-grafana"
+  configMapRef:
+    name: grafana-dashboard-power-monitoring
+    key: kepler.json
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
new file mode 100644
index 00000000..edde47c9
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kepler.json
@@ -0,0 +1,1224 @@
+{
+    "annotations": {
+      "list": [
+        {
+          "builtIn": 1,
+          "datasource": {
+            "type": "grafana",
+            "uid": "-- Grafana --"
+          },
+          "enable": true,
+          "hide": true,
+          "iconColor": "rgba(0, 211, 255, 1)",
+          "name": "Annotations & Alerts",
+          "target": {
+            "limit": 100,
+            "matchAny": false,
+            "tags": [],
+            "type": "dashboard"
+          },
+          "type": "dashboard"
+        }
+      ]
+    },
+    "description": "Dashboard for Kepler Exporter",
+    "editable": true,
+    "fiscalYearStartMonth": 0,
+    "graphTooltip": 0,
+    "id": 2,
+    "iteration": 1694154532971,
+    "links": [],
+    "liveNow": false,
+    "panels": [
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 0
+        },
+        "id": 33,
+        "panels": [],
+        "title": "Power Consumption / Overview",
+        "type": "row"
+      },
+      {
+        "description": "CPU architecture & Power source determined by Kepler",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "center",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 0,
+          "y": 1
+        },
+        "id": 29,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "enablePagination": false,
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count ( label_replace( kepler_node_info{container=\"kepler\"}, \"zz_components_power_source\", \"$1\", \"components_power_source\", \"(.+)\") ) by (cpu_architecture, zz_components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Node - CPU Architecture & Power Source",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "Value": "Number of nodes",
+                "cpu_architecture": "CPU architecture",
+                "platform_power_source": "Platform Source",
+                "zz_components_power_source": "Component Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "description": "Total Energy Consumption (kWh) - Last 24 hours",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 7,
+          "w": 12,
+          "x": 12,
+          "y": 1
+        },
+        "id": 31,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "colorMode": "value",
+          "graphMode": "area",
+          "justifyMode": "center",
+          "orientation": "auto",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "values": false
+          },
+          "textMode": "auto"
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "expr": "kepler:kepler:container_joules_total:consumed:24h:all * $watt_per_second_to_kWh",
+            "refId": "A"
+          }
+        ],
+        "title": "Total Energy Consumption (kWh) - Last 24 hours",
+        "type": "stat"
+      },
+      {
+        "description": "Total Power Consumption for Top 10 Namespaces (kWh per day)",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 12,
+          "w": 24,
+          "x": 0,
+          "y": 8
+        },
+        "id": 18,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "displayMode": "gradient",
+          "minVizHeight": 10,
+          "minVizWidth": 0,
+          "orientation": "horizontal",
+          "reduceOptions": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "fields": "",
+            "limit": 10,
+            "values": true
+          },
+          "showUnfilled": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "topk(10, kepler:kepler:container_joules_total:consumed:24h:by_ns) * $watt_per_second_to_kWh",
+            "format": "table",
+            "instant": true,
+            "interval": "",
+            "legendFormat": "{{container_namespace}}",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Top 10 Energy Consuming Namespaces (kWh) in Last 24 hours",
+        "transformations": [
+          {
+            "id": "groupBy",
+            "options": {
+              "fields": {
+                "Value": {
+                  "aggregations": [
+                    "lastNotNull"
+                  ],
+                  "operation": "aggregate"
+                },
+                "container_namespace": {
+                  "aggregations": [],
+                  "operation": "groupby"
+                }
+              }
+            }
+          },
+          {
+            "id": "sortBy",
+            "options": {
+              "fields": {},
+              "sort": [
+                {
+                  "desc": true,
+                  "field": "Value (lastNotNull)"
+                }
+              ]
+            }
+          }
+        ],
+        "type": "bargauge"
+      },
+      {
+        "description": "Architecture, Component and Power source per Instance",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "thresholds"
+            },
+            "custom": {
+              "align": "auto",
+              "displayMode": "auto",
+              "inspect": false
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                },
+                {
+                  "color": "red",
+                  "value": 80
+                }
+              ]
+            }
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 35,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "footer": {
+            "fields": "",
+            "reducer": [
+              "sum"
+            ],
+            "show": false
+          },
+          "showHeader": true
+        },
+        "pluginVersion": "8.5.5",
+        "targets": [
+          {
+            "editorMode": "code",
+            "exemplar": false,
+            "expr": "count (label_replace( kepler_node_info{container=\"kepler\"}, \"aa_instance\", \"$1\", \"instance\", \"(.+)\")) by (aa_instance, cpu_architecture, components_power_source, platform_power_source)",
+            "format": "table",
+            "instant": true,
+            "legendFormat": "__auto",
+            "range": false,
+            "refId": "A"
+          }
+        ],
+        "title": "Detailed Node Information",
+        "transformations": [
+          {
+            "id": "organize",
+            "options": {
+              "excludeByName": {
+                "Time": true,
+                "Value": true,
+                "platform_power_source": true
+              },
+              "indexByName": {},
+              "renameByName": {
+                "aa_instance": "Instance",
+                "components_power_source": "Component Power Source",
+                "cpu_architecture": "CPU Architecture",
+                "platform_power_source": "Platform Power Source"
+              }
+            }
+          }
+        ],
+        "type": "table"
+      },
+      {
+        "collapsed": false,
+        "gridPos": {
+          "h": 1,
+          "w": 24,
+          "x": 0,
+          "y": 20
+        },
+        "id": 8,
+        "panels": [],
+        "title": "Power Consumption / Namespace",
+        "type": "row"
+      },
+      {
+        "description": "Total Power Consumption (W) in Namespace",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 0,
+          "y": 21
+        },
+        "id": 2,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom"
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "sum(kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Power Consumption (W) in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "Total Energy Consumption in Namespace (kWh) - Last 1 hour",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 11,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "kwatth"
+          },
+          "overrides": [
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*PKG.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "red",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*DRAM.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "orange",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*OTHER.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "blue",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            },
+            {
+              "matcher": {
+                "id": "byRegexp",
+                "options": ".*GPU.*"
+              },
+              "properties": [
+                {
+                  "id": "color",
+                  "value": {
+                    "fixedColor": "semi-dark-green",
+                    "mode": "fixed"
+                  }
+                }
+              ]
+            }
+          ]
+        },
+        "gridPos": {
+          "h": 8,
+          "w": 12,
+          "x": 12,
+          "y": 21
+        },
+        "id": 17,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "mean",
+              "max"
+            ],
+            "displayMode": "table",
+            "placement": "bottom",
+            "sortBy": "Max",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "multi",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "PKG (CORE + UNCORE)",
+            "range": true,
+            "refId": "A"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "DRAM",
+            "range": true,
+            "refId": "B"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_other_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "OTHER",
+            "range": true,
+            "refId": "C"
+          },
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_gpu_joules_total:consumed:1h:by_ns{container_namespace=~\"$namespace\"} * $watt_per_second_to_kWh",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": " GPU",
+            "range": true,
+            "refId": "D"
+          }
+        ],
+        "title": "Total Energy Consumption in $namespace (kWh) - Last 1 hour",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in PKG by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 29
+        },
+        "id": 16,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_package_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "PKG Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in DRAM by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 29
+        },
+        "id": 23,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "kepler:kepler:container_dram_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"}",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "B"
+          }
+        ],
+        "title": "DRAM Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in OTHER by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 0,
+          "y": 39
+        },
+        "id": 26,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_other_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "OTHER Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      },
+      {
+        "description": "The total energy spent in GPU by a container.",
+        "fieldConfig": {
+          "defaults": {
+            "color": {
+              "mode": "palette-classic"
+            },
+            "custom": {
+              "axisLabel": "",
+              "axisPlacement": "left",
+              "barAlignment": 0,
+              "drawStyle": "line",
+              "fillOpacity": 0,
+              "gradientMode": "opacity",
+              "hideFrom": {
+                "graph": false,
+                "legend": false,
+                "tooltip": false,
+                "viz": false
+              },
+              "lineInterpolation": "linear",
+              "lineWidth": 2,
+              "pointSize": 5,
+              "scaleDistribution": {
+                "type": "linear"
+              },
+              "showPoints": "never",
+              "spanNulls": false,
+              "stacking": {
+                "group": "A",
+                "mode": "none"
+              },
+              "thresholdsStyle": {
+                "mode": "off"
+              }
+            },
+            "mappings": [],
+            "thresholds": {
+              "mode": "absolute",
+              "steps": [
+                {
+                  "color": "green",
+                  "value": null
+                }
+              ]
+            },
+            "unit": "watt"
+          },
+          "overrides": []
+        },
+        "gridPos": {
+          "h": 10,
+          "w": 12,
+          "x": 12,
+          "y": 39
+        },
+        "id": 27,
+        "links": [
+          {
+            "targetBlank": true,
+            "title": "Kepler metrics for Container Energy Consumption",
+            "url": "https://github.com/sustainable-computing-io/kepler-doc/blob/84e3e01a0110829937cd40f9634dd8d0c92540a4/docs/design/metrics.md#kepler-metrics-for-container-energy-consumption"
+          }
+        ],
+        "options": {
+          "legend": {
+            "calcs": [
+              "lastNotNull"
+            ],
+            "displayMode": "table",
+            "placement": "right",
+            "sortBy": "Mean",
+            "sortDesc": true
+          },
+          "tooltip": {
+            "mode": "single",
+            "sort": "none"
+          }
+        },
+        "targets": [
+          {
+            "editorMode": "code",
+            "expr": "sum by (pod_name) (kepler:kepler:container_gpu_watts:1m:by_ns_pod{container_namespace=~\"$namespace\", pod_name=~\"$pod\"})",
+            "hide": false,
+            "interval": "5m",
+            "legendFormat": "{{pod_name}}",
+            "range": true,
+            "refId": "A"
+          }
+        ],
+        "title": "GPU Power Consumption (W) by Pods in $namespace",
+        "type": "timeseries"
+      }
+    ],
+    "refresh": "",
+    "schemaVersion": 36,
+    "style": "dark",
+    "tags": [],
+    "templating": {
+      "list": [
+        {
+          "current": {
+            "selected": true,
+            "text": "Prometheus",
+            "value": "Prometheus"
+          },
+          "hide": 0,
+          "includeAll": false,
+          "multi": false,
+          "name": "datasource",
+          "options": [],
+          "query": "prometheus",
+          "queryValue": "",
+          "refresh": 1,
+          "regex": ".*-(appstudio)-.*",
+          "skipUrlSync": false,
+          "type": "datasource"
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": false,
+            "text": "kepler-operator",
+            "value": "kepler-operator"
+          },
+          "definition": "label_values(kepler_container_package_joules_total, container_namespace)",
+          "description": "Namespace for pods to choose",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Namespace",
+          "multi": false,
+          "name": "namespace",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total, container_namespace)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "allValue": ".*",
+          "current": {
+            "selected": true,
+            "text": "All",
+            "value": "$__all"
+          },
+          "definition": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+          "description": "Number of pods inside namespace",
+          "hide": 0,
+          "includeAll": true,
+          "label": "Pod",
+          "multi": false,
+          "name": "pod",
+          "options": [],
+          "query": {
+            "query": "label_values(kepler_container_package_joules_total{container_namespace=~\"$namespace\"}, pod_name)",
+            "refId": "StandardVariableQuery"
+          },
+          "refresh": 1,
+          "regex": "",
+          "skipUrlSync": false,
+          "sort": 0,
+          "tagValuesQuery": "",
+          "tagsQuery": "",
+          "type": "query",
+          "useTags": false
+        },
+        {
+          "description": "1W*s = 1J and 1J = (1/3600000)kWh",
+          "hide": 2,
+          "label": "",
+          "name": "watt_per_second_to_kWh",
+          "query": "0.000000277777777777778",
+          "skipUrlSync": false,
+          "type": "constant"
+        }
+      ]
+    },
+    "time": {
+      "from": "now-15m",
+      "to": "now"
+    },
+    "timepicker": {},
+    "timezone": "browser",
+    "title": "Kepler Exporter Dashboard",
+    "uid": "381ef848417532a1ef945494449453a41fdabaa7",
+    "version": 1,
+    "weekStart": ""
+  }
\ No newline at end of file
diff --git a/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
new file mode 100644
index 00000000..24d85e0f
--- /dev/null
+++ b/components/monitoring/grafana/base/dashboards/power-monitoring/kustomization.yaml
@@ -0,0 +1,8 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- dashboard.yaml
+configMapGenerator:
+  - name: grafana-dashboard-power-monitoring
+    files:
+      - kepler.json 
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
<h3>2: Production changes from 29944cd0 to 77f99a39 on Fri Aug 30 15:10:48 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b83ed571..b55379ed 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -52,6 +52,13 @@ http {
             proxy_pass http://registration-service.toolchain-host-operator.svc.cluster.local/;
         }
 
+        location /api/k8s/apis/workspaces.konflux-ci.dev/ {
+            # workspaces expects requests under the traditional API paths for
+            # kubernetes api servers, so we need to strip /api/k8s from them
+            rewrite ^/api/k8s/(.*)$ /$1 break;
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+        }
+
         location /api/k8s/ {
             # Kube-API
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/; 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-29944cd0/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
96,102d95
<             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
<                 # workspaces expects requests under the traditional API paths for
<                 # kubernetes api servers, so we need to strip /api/k8s from them
<                 rewrite ^/api/k8s/(.*)$ /$1 break;
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
126c119
<   name: proxy-fg6f8t7bm6
---
>   name: proxy-mk27dcmc6f
631c624
<           name: proxy-fg6f8t7bm6
---
>           name: proxy-mk27dcmc6f
./commit-29944cd0/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
96,102d95
<             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
<                 # workspaces expects requests under the traditional API paths for
<                 # kubernetes api servers, so we need to strip /api/k8s from them
<                 rewrite ^/api/k8s/(.*)$ /$1 break;
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
126c119
<   name: proxy-fg6f8t7bm6
---
>   name: proxy-mk27dcmc6f
631c624
<           name: proxy-fg6f8t7bm6
---
>           name: proxy-mk27dcmc6f 
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
<h3>2: Staging changes from 29944cd0 to 77f99a39 on Fri Aug 30 15:10:48 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b83ed571..b55379ed 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -52,6 +52,13 @@ http {
             proxy_pass http://registration-service.toolchain-host-operator.svc.cluster.local/;
         }
 
+        location /api/k8s/apis/workspaces.konflux-ci.dev/ {
+            # workspaces expects requests under the traditional API paths for
+            # kubernetes api servers, so we need to strip /api/k8s from them
+            rewrite ^/api/k8s/(.*)$ /$1 break;
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+        }
+
         location /api/k8s/ {
             # Kube-API
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/; 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-29944cd0/staging/components/ui/staging/kustomize.out.yaml
96,102d95
<             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
<                 # workspaces expects requests under the traditional API paths for
<                 # kubernetes api servers, so we need to strip /api/k8s from them
<                 rewrite ^/api/k8s/(.*)$ /$1 break;
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
126c119
<   name: proxy-fg6f8t7bm6
---
>   name: proxy-mk27dcmc6f
631c624
<           name: proxy-fg6f8t7bm6
---
>           name: proxy-mk27dcmc6f 
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
<h3>2: Development changes from 29944cd0 to 77f99a39 on Fri Aug 30 15:10:48 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/ui/base/proxy/nginx.conf b/components/ui/base/proxy/nginx.conf
index b83ed571..b55379ed 100644
--- a/components/ui/base/proxy/nginx.conf
+++ b/components/ui/base/proxy/nginx.conf
@@ -52,6 +52,13 @@ http {
             proxy_pass http://registration-service.toolchain-host-operator.svc.cluster.local/;
         }
 
+        location /api/k8s/apis/workspaces.konflux-ci.dev/ {
+            # workspaces expects requests under the traditional API paths for
+            # kubernetes api servers, so we need to strip /api/k8s from them
+            rewrite ^/api/k8s/(.*)$ /$1 break;
+            proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
+        }
+
         location /api/k8s/ {
             # Kube-API
             proxy_pass http://api.toolchain-host-operator.svc.cluster.local/; 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-29944cd0/development/components/ui/development/kustomize.out.yaml
96,102d95
<             location /api/k8s/apis/workspaces.konflux-ci.dev/ {
<                 # workspaces expects requests under the traditional API paths for
<                 # kubernetes api servers, so we need to strip /api/k8s from them
<                 rewrite ^/api/k8s/(.*)$ /$1 break;
<                 proxy_pass http://workspaces-rest-api-server.workspaces-system.svc.cluster.local/;
<             }
< 
126c119
<   name: proxy-fg6f8t7bm6
---
>   name: proxy-mk27dcmc6f
631c624
<           name: proxy-fg6f8t7bm6
---
>           name: proxy-mk27dcmc6f 
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
<h3>3: Production changes from d153ca70 to 29944cd0 on Thu Aug 29 19:33:47 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index 3dfd14a2..79b4f52b 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -305,6 +305,26 @@ rules:
       - delete
       - get
       - list
+  - apiGroups:
+      - hypershift.openshift.io
+    resources:
+      - awsendpointservices
+      - certificatesigningrequestapprovals
+      - hostedclusters
+      - hostedcontrolplanes
+      - nodepools
+    verbs:
+      - '*'
+  - apiGroups:
+      - clustertemplate.openshift.io
+    resources:
+      - clustertemplates
+      - clustertemplateinstances
+      - clustertemplatequotas
+      - clustertemplatesetups
+      - configs
+    verbs:
+      - '*'
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 85baae96..1d69a61d 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -12,3 +12,5 @@ spec:
     policy: |
       g, system:cluster-admins, role:admin
       g, system:authenticated, role:readonly
+      g, konflux-admins, role:admin
+      g, konflux-sre, role:admin 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (48 lines)</summary>  

``` 
./commit-d153ca70/production/components/authentication/production/stone-prod-p01/kustomize.out.yaml
399,418d398
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - awsendpointservices
<   - certificatesigningrequestapprovals
<   - hostedclusters
<   - hostedcontrolplanes
<   - nodepools
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   - clustertemplateinstances
<   - clustertemplatequotas
<   - clustertemplatesetups
<   - configs
<   verbs:
<   - '*'
./commit-d153ca70/production/components/authentication/production/stone-prod-p02/kustomize.out.yaml
399,418d398
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - awsendpointservices
<   - certificatesigningrequestapprovals
<   - hostedclusters
<   - hostedcontrolplanes
<   - nodepools
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   - clustertemplateinstances
<   - clustertemplatequotas
<   - clustertemplatesetups
<   - configs
<   verbs:
<   - '*'
./commit-d153ca70/production/components/cluster-as-a-service/production/kustomize.out.yaml
252,253d251
<       g, konflux-admins, role:admin
<       g, konflux-sre, role:admin 
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
<h3>3: Staging changes from d153ca70 to 29944cd0 on Thu Aug 29 19:33:47 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index 3dfd14a2..79b4f52b 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -305,6 +305,26 @@ rules:
       - delete
       - get
       - list
+  - apiGroups:
+      - hypershift.openshift.io
+    resources:
+      - awsendpointservices
+      - certificatesigningrequestapprovals
+      - hostedclusters
+      - hostedcontrolplanes
+      - nodepools
+    verbs:
+      - '*'
+  - apiGroups:
+      - clustertemplate.openshift.io
+    resources:
+      - clustertemplates
+      - clustertemplateinstances
+      - clustertemplatequotas
+      - clustertemplatesetups
+      - configs
+    verbs:
+      - '*'
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 85baae96..1d69a61d 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -12,3 +12,5 @@ spec:
     policy: |
       g, system:cluster-admins, role:admin
       g, system:authenticated, role:readonly
+      g, konflux-admins, role:admin
+      g, konflux-sre, role:admin 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-d153ca70/staging/components/authentication/staging/stone-stage-p01/kustomize.out.yaml
399,418d398
< - apiGroups:
<   - hypershift.openshift.io
<   resources:
<   - awsendpointservices
<   - certificatesigningrequestapprovals
<   - hostedclusters
<   - hostedcontrolplanes
<   - nodepools
<   verbs:
<   - '*'
< - apiGroups:
<   - clustertemplate.openshift.io
<   resources:
<   - clustertemplates
<   - clustertemplateinstances
<   - clustertemplatequotas
<   - clustertemplatesetups
<   - configs
<   verbs:
<   - '*'
./commit-d153ca70/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
252,253d251
<       g, konflux-admins, role:admin
<       g, konflux-sre, role:admin 
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
<h3>3: Development changes from d153ca70 to 29944cd0 on Thu Aug 29 19:33:47 2024 </h3>  
 
<details> 
<summary>Git Diff (41 lines)</summary>  

``` 
diff --git a/components/authentication/base/konflux-admins.yaml b/components/authentication/base/konflux-admins.yaml
index 3dfd14a2..79b4f52b 100644
--- a/components/authentication/base/konflux-admins.yaml
+++ b/components/authentication/base/konflux-admins.yaml
@@ -305,6 +305,26 @@ rules:
       - delete
       - get
       - list
+  - apiGroups:
+      - hypershift.openshift.io
+    resources:
+      - awsendpointservices
+      - certificatesigningrequestapprovals
+      - hostedclusters
+      - hostedcontrolplanes
+      - nodepools
+    verbs:
+      - '*'
+  - apiGroups:
+      - clustertemplate.openshift.io
+    resources:
+      - clustertemplates
+      - clustertemplateinstances
+      - clustertemplatequotas
+      - clustertemplatesetups
+      - configs
+    verbs:
+      - '*'
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/cluster-as-a-service/base/argocd.yaml b/components/cluster-as-a-service/base/argocd.yaml
index 85baae96..1d69a61d 100644
--- a/components/cluster-as-a-service/base/argocd.yaml
+++ b/components/cluster-as-a-service/base/argocd.yaml
@@ -12,3 +12,5 @@ spec:
     policy: |
       g, system:cluster-admins, role:admin
       g, system:authenticated, role:readonly
+      g, konflux-admins, role:admin
+      g, konflux-sre, role:admin 
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
<h3>4: Production changes from fd921ab3 to d153ca70 on Thu Aug 29 18:52:39 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index a845a9d4..3b8c9d36 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 36979b3d..e8b66851 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 36979b3d..e8b66851 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index ad505e04..cdfdea48 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-fd921ab3/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
./commit-fd921ab3/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c 
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
<h3>4: Staging changes from fd921ab3 to d153ca70 on Thu Aug 29 18:52:39 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index a845a9d4..3b8c9d36 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 36979b3d..e8b66851 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 36979b3d..e8b66851 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index ad505e04..cdfdea48 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fd921ab3/staging/components/ui/staging/kustomize.out.yaml
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c 
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
<h3>4: Development changes from fd921ab3 to d153ca70 on Thu Aug 29 18:52:39 2024 </h3>  
 
<details> 
<summary>Git Diff (52 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index a845a9d4..3b8c9d36 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 36979b3d..e8b66851 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 36979b3d..e8b66851 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index ad505e04..cdfdea48 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 0d8b021
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fd921ab3/development/components/ui/development/kustomize.out.yaml
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:0d8b021
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c 
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
