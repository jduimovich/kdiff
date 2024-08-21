# kustomize changes tracked by commits 
### This file generated at Wed Aug 21 12:04:21 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a301c47e to 7bfc29d3 on Wed Aug 21 10:13:51 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 095fe71d..236815bb 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1700,6 +1700,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e48cc45b..148eb6c7 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1634,6 +1634,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2d7369d..c26d1220 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 83f6d037..78178749 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1d3f9fb1..c4a65ded 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec: 
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
<h3>1: Staging changes from a301c47e to 7bfc29d3 on Wed Aug 21 10:13:51 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 095fe71d..236815bb 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1700,6 +1700,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e48cc45b..148eb6c7 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1634,6 +1634,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2d7369d..c26d1220 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 83f6d037..78178749 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1d3f9fb1..c4a65ded 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-a301c47e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2078,2084d2077
<         config-defaults:
<           data:
<             default-container-resource-requirements: |
<               default:
<                 requests:
<                   memory: "256Mi"
<                   cpu: "100m"
./commit-a301c47e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
2078,2084d2077
<         config-defaults:
<           data:
<             default-container-resource-requirements: |
<               default:
<                 requests:
<                   memory: "256Mi"
<                   cpu: "100m"
./commit-a301c47e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
2078,2084d2077
<         config-defaults:
<           data:
<             default-container-resource-requirements: |
<               default:
<                 requests:
<                   memory: "256Mi"
<                   cpu: "100m" 
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
<h3>1: Development changes from a301c47e to 7bfc29d3 on Wed Aug 21 10:13:51 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 095fe71d..236815bb 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1700,6 +1700,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index e48cc45b..148eb6c7 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1634,6 +1634,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2d7369d..c26d1220 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 83f6d037..78178749 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 1d3f9fb1..c4a65ded 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -2104,6 +2104,13 @@ spec:
                   "callerEncoder": ""
                 }
               }
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a301c47e/development/components/pipeline-service/development/kustomize.out.yaml
2054,2060d2053
<         config-defaults:
<           data:
<             default-container-resource-requirements: |
<               default:
<                 requests:
<                   memory: "256Mi"
<                   cpu: "100m" 
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
<h3>2: Production changes from 099e3152 to a301c47e on Mon Aug 19 15:58:14 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 244388c1..691ba054 100644
--- a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -26,7 +26,7 @@ spec:
           # Chart from OTel Project
         - chart: opentelemetry-collector
           repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
-          targetRevision: 0.90.1
+          targetRevision: 0.101.2
           helm:
             parameters:
               - name: "image.repository"
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 383aa39f..506f0652 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -11,14 +11,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -41,7 +41,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -76,4 +75,9 @@ ports:
     enabled: false
   zipkin:
     enabled: false
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0"
 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index a83a9f29..2d4700a6 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -9,14 +9,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -39,7 +39,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -80,4 +79,8 @@ extraEnvs:
       secretKeyRef:
         name: "honeycomb-api-key"
         key: konflux-tracing-prod
-
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0"
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index 0095e76a..d2bc15bb 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -9,14 +9,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -39,7 +39,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -80,3 +79,8 @@ extraEnvs:
       secretKeyRef:
         name: "honeycomb-api-key"
         key: konflux-tracing-stage
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0" 
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
<h3>2: Staging changes from 099e3152 to a301c47e on Mon Aug 19 15:58:14 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 244388c1..691ba054 100644
--- a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -26,7 +26,7 @@ spec:
           # Chart from OTel Project
         - chart: opentelemetry-collector
           repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
-          targetRevision: 0.90.1
+          targetRevision: 0.101.2
           helm:
             parameters:
               - name: "image.repository"
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 383aa39f..506f0652 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -11,14 +11,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -41,7 +41,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -76,4 +75,9 @@ ports:
     enabled: false
   zipkin:
     enabled: false
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0"
 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index a83a9f29..2d4700a6 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -9,14 +9,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -39,7 +39,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -80,4 +79,8 @@ extraEnvs:
       secretKeyRef:
         name: "honeycomb-api-key"
         key: konflux-tracing-prod
-
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0"
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index 0095e76a..d2bc15bb 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -9,14 +9,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -39,7 +39,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -80,3 +79,8 @@ extraEnvs:
       secretKeyRef:
         name: "honeycomb-api-key"
         key: konflux-tracing-stage
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0" 
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
<h3>2: Development changes from 099e3152 to a301c47e on Mon Aug 19 15:58:14 2024 </h3>  
 
<details> 
<summary>Git Diff (129 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
index 244388c1..691ba054 100644
--- a/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/tracing-workload-otel-collector/tracing-workload-otel-collector.yaml
@@ -26,7 +26,7 @@ spec:
           # Chart from OTel Project
         - chart: opentelemetry-collector
           repoURL: https://open-telemetry.github.io/opentelemetry-helm-charts
-          targetRevision: 0.90.1
+          targetRevision: 0.101.2
           helm:
             parameters:
               - name: "image.repository"
diff --git a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
index 383aa39f..506f0652 100644
--- a/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/development/otel-collector-helm-values.yaml
@@ -11,14 +11,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -41,7 +41,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -76,4 +75,9 @@ ports:
     enabled: false
   zipkin:
     enabled: false
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0"
 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index a83a9f29..2d4700a6 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -9,14 +9,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -39,7 +39,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -80,4 +79,8 @@ extraEnvs:
       secretKeyRef:
         name: "honeycomb-api-key"
         key: konflux-tracing-prod
-
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0"
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index 0095e76a..d2bc15bb 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -9,14 +9,14 @@ config:
     # Without the health_check extension the collector will fail the readiness and liveliness probes.
     # The health_check extension can be modified, but should never be removed.
     health_check: {}
-    memory_ballast: {}
   processors:
     batch: {}
     # If set to null, will be overridden with values based on k8s resource limits
     memory_limiter:
       check_interval: 2s
       limit_mib: 512
-      spike_limit_percentage: 100
+      limit_percentage: 95
+      spike_limit_percentage: 90
     attributes/collector-info:
       actions:
         - key: collector.hostname
@@ -39,7 +39,6 @@ config:
   service:
     extensions:
       - health_check
-      - memory_ballast
     pipelines:
       traces:
         exporters:
@@ -80,3 +79,8 @@ extraEnvs:
       secretKeyRef:
         name: "honeycomb-api-key"
         key: konflux-tracing-stage
+image:
+  repository: quay.io/konflux-ci/opentelemetry-collector-k8s
+  pullPolicy: Always
+  # Overrides the image tag whose default is the chart appVersion.
+  tag: "0.106.0" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-099e3152/development/app-of-apps-development.yaml
1442c1442
<         targetRevision: 0.101.2
---
>         targetRevision: 0.90.1 
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
<h3>3: Production changes from a778ae75 to 099e3152 on Mon Aug 19 13:48:59 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 496ce646..890d901f 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e8e35b076da6b9568ee47a1bf740c0ce69826901
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=735da595a594c672ab85075e7b7af998d7aa60fe
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 29051601..4ebad13c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e8e35b076da6b9568ee47a1bf740c0ce69826901
+  - https://github.com/konflux-ci/release-service/config/default?ref=735da595a594c672ab85075e7b7af998d7aa60fe
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e8e35b076da6b9568ee47a1bf740c0ce69826901
+    newTag: 735da595a594c672ab85075e7b7af998d7aa60fe
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from a778ae75 to 099e3152 on Mon Aug 19 13:48:59 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 496ce646..890d901f 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e8e35b076da6b9568ee47a1bf740c0ce69826901
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=735da595a594c672ab85075e7b7af998d7aa60fe
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 29051601..4ebad13c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e8e35b076da6b9568ee47a1bf740c0ce69826901
+  - https://github.com/konflux-ci/release-service/config/default?ref=735da595a594c672ab85075e7b7af998d7aa60fe
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e8e35b076da6b9568ee47a1bf740c0ce69826901
+    newTag: 735da595a594c672ab85075e7b7af998d7aa60fe
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from a778ae75 to 099e3152 on Mon Aug 19 13:48:59 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index 496ce646..890d901f 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=e8e35b076da6b9568ee47a1bf740c0ce69826901
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=735da595a594c672ab85075e7b7af998d7aa60fe
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 29051601..4ebad13c 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -3,11 +3,11 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/development
-  - https://github.com/konflux-ci/release-service/config/default?ref=e8e35b076da6b9568ee47a1bf740c0ce69826901
+  - https://github.com/konflux-ci/release-service/config/default?ref=735da595a594c672ab85075e7b7af998d7aa60fe
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e8e35b076da6b9568ee47a1bf740c0ce69826901
+    newTag: 735da595a594c672ab85075e7b7af998d7aa60fe
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a778ae75/development/components/release/development/kustomize.out.yaml
1861c1861
<         image: quay.io/konflux-ci/release-service:735da595a594c672ab85075e7b7af998d7aa60fe
---
>         image: quay.io/konflux-ci/release-service:e8e35b076da6b9568ee47a1bf740c0ce69826901 
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
<h3>4: Production changes from 1cc4fb90 to a778ae75 on Mon Aug 19 07:35:57 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 78005499..ba5075ad 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=4a1be0120d40c46a6a80826467bafffc83768212
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4a1be0120d40c46a6a80826467bafffc83768212
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: 4a1be0120d40c46a6a80826467bafffc83768212
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-1cc4fb90/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
98c98
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
307c307
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
---
>         image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
---
>             image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
./commit-1cc4fb90/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
98c98
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
307c307
<                         description: Env is an array of standard environment variables
---
>                         description: Env is an array of standard environment vairables
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
---
>         image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:4a1be0120d40c46a6a80826467bafffc83768212
---
>             image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb 
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
<h3>4: Staging changes from 1cc4fb90 to a778ae75 on Mon Aug 19 07:35:57 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 78005499..ba5075ad 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=4a1be0120d40c46a6a80826467bafffc83768212
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4a1be0120d40c46a6a80826467bafffc83768212
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: 4a1be0120d40c46a6a80826467bafffc83768212
 
 configMapGenerator:
 - name: integration-config 
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
<h3>4: Development changes from 1cc4fb90 to a778ae75 on Mon Aug 19 07:35:57 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 78005499..ba5075ad 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=4a1be0120d40c46a6a80826467bafffc83768212
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=4a1be0120d40c46a6a80826467bafffc83768212
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: 4a1be0120d40c46a6a80826467bafffc83768212
 
 configMapGenerator:
 - name: integration-config 
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
