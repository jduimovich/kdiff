# kustomize changes tracked by commits 
### This file generated at Sat May 11 00:07:49 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 48d8441c to 8b62b981 on Fri May 10 23:37:12 2024 </h3>  
 
<details> 
<summary>Git Diff (514 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0924c8ca..6ead356f 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
diff --git a/components/pipeline-service/development/bump-results-watcher-replicas.yaml b/components/pipeline-service/development/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/development/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/development/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/development/config.env b/components/pipeline-service/development/config.env
new file mode 100644
index 00000000..f1cd6b50
--- /dev/null
+++ b/components/pipeline-service/development/config.env
@@ -0,0 +1,33 @@
+DB_USER=
+DB_PASSWORD=
+DB_HOST=
+DB_PORT=5432
+DB_NAME=
+DB_SSLMODE=disable
+DB_SSLROOTCERT=
+DB_ENABLE_AUTO_MIGRATION=true
+SERVER_PORT=8080
+PROMETHEUS_PORT=9090
+PROMETHEUS_HISTOGRAM=true
+TLS_PATH=/etc/tls
+AUTH_DISABLE=false
+AUTH_IMPERSONATE=true
+LOG_LEVEL=info
+LOGS_API=false
+LOGS_TYPE=File
+LOGS_BUFFER_SIZE=5242880
+LOGS_PATH=/logs
+S3_BUCKET_NAME=
+S3_ENDPOINT=
+S3_HOSTNAME_IMMUTABLE=false
+S3_REGION=
+S3_ACCESS_KEY_ID=
+S3_SECRET_ACCESS_KEY=
+S3_MULTI_PART_SIZE=5242880
+GCS_BUCKET_NAME=
+STORAGE_EMULATOR_HOST=
+K8S_QPS=50
+K8S_BURST=100
+GRPC_WORKER_POOL=50
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4c6f6326..31a76b16 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,10 +8,23 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
   - ../base/rbac
 
+# generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
+configMapGenerator:
+  - behavior: replace
+    files:
+      - config.env
+    name: api-config
+    options:
+      disableNameSuffixHash: true
+  - behavior: merge
+    name: config-observability
+    literals:
+      - profiling.enable="true"
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
@@ -46,3 +59,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/development/update-results-watcher-performance.yaml b/components/pipeline-service/development/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..0490852b
--- /dev/null
+++ b/components/pipeline-service/development/update-results-watcher-performance.yaml
@@ -0,0 +1,19 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -threadiness
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -qps
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -burst
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "100"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/config.env b/components/pipeline-service/staging/base/config.env
new file mode 100644
index 00000000..f1cd6b50
--- /dev/null
+++ b/components/pipeline-service/staging/base/config.env
@@ -0,0 +1,33 @@
+DB_USER=
+DB_PASSWORD=
+DB_HOST=
+DB_PORT=5432
+DB_NAME=
+DB_SSLMODE=disable
+DB_SSLROOTCERT=
+DB_ENABLE_AUTO_MIGRATION=true
+SERVER_PORT=8080
+PROMETHEUS_PORT=9090
+PROMETHEUS_HISTOGRAM=true
+TLS_PATH=/etc/tls
+AUTH_DISABLE=false
+AUTH_IMPERSONATE=true
+LOG_LEVEL=info
+LOGS_API=false
+LOGS_TYPE=File
+LOGS_BUFFER_SIZE=5242880
+LOGS_PATH=/logs
+S3_BUCKET_NAME=
+S3_ENDPOINT=
+S3_HOSTNAME_IMMUTABLE=false
+S3_REGION=
+S3_ACCESS_KEY_ID=
+S3_SECRET_ACCESS_KEY=
+S3_MULTI_PART_SIZE=5242880
+GCS_BUCKET_NAME=
+STORAGE_EMULATOR_HOST=
+K8S_QPS=50
+K8S_BURST=100
+GRPC_WORKER_POOL=50
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index dcbbf3bc..257538a6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,12 +8,25 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
 
+# generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
+configMapGenerator:
+  - behavior: replace
+    files:
+      - config.env
+    name: api-config
+    options:
+      disableNameSuffixHash: true
+  - behavior: merge
+    name: config-observability
+    literals:
+      - profiling.enable="true"
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
@@ -33,20 +46,10 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
       name: config
-  - path: bump-results-watcher-replicas.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
   - path: update-results-watcher-performance.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index ec2b0738..590946b6 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -4,4 +4,22 @@
   value: "250m"
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
+  value: "250m"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -threadiness
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -qps
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -burst
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "100"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..e159c3d4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..f575a174 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..53f35ba0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 48d8441c to 8b62b981 on Fri May 10 23:37:12 2024 </h3>  
 
<details> 
<summary>Git Diff (514 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0924c8ca..6ead356f 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
diff --git a/components/pipeline-service/development/bump-results-watcher-replicas.yaml b/components/pipeline-service/development/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/development/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/development/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/development/config.env b/components/pipeline-service/development/config.env
new file mode 100644
index 00000000..f1cd6b50
--- /dev/null
+++ b/components/pipeline-service/development/config.env
@@ -0,0 +1,33 @@
+DB_USER=
+DB_PASSWORD=
+DB_HOST=
+DB_PORT=5432
+DB_NAME=
+DB_SSLMODE=disable
+DB_SSLROOTCERT=
+DB_ENABLE_AUTO_MIGRATION=true
+SERVER_PORT=8080
+PROMETHEUS_PORT=9090
+PROMETHEUS_HISTOGRAM=true
+TLS_PATH=/etc/tls
+AUTH_DISABLE=false
+AUTH_IMPERSONATE=true
+LOG_LEVEL=info
+LOGS_API=false
+LOGS_TYPE=File
+LOGS_BUFFER_SIZE=5242880
+LOGS_PATH=/logs
+S3_BUCKET_NAME=
+S3_ENDPOINT=
+S3_HOSTNAME_IMMUTABLE=false
+S3_REGION=
+S3_ACCESS_KEY_ID=
+S3_SECRET_ACCESS_KEY=
+S3_MULTI_PART_SIZE=5242880
+GCS_BUCKET_NAME=
+STORAGE_EMULATOR_HOST=
+K8S_QPS=50
+K8S_BURST=100
+GRPC_WORKER_POOL=50
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4c6f6326..31a76b16 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,10 +8,23 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
   - ../base/rbac
 
+# generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
+configMapGenerator:
+  - behavior: replace
+    files:
+      - config.env
+    name: api-config
+    options:
+      disableNameSuffixHash: true
+  - behavior: merge
+    name: config-observability
+    literals:
+      - profiling.enable="true"
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
@@ -46,3 +59,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/development/update-results-watcher-performance.yaml b/components/pipeline-service/development/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..0490852b
--- /dev/null
+++ b/components/pipeline-service/development/update-results-watcher-performance.yaml
@@ -0,0 +1,19 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -threadiness
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -qps
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -burst
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "100"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/config.env b/components/pipeline-service/staging/base/config.env
new file mode 100644
index 00000000..f1cd6b50
--- /dev/null
+++ b/components/pipeline-service/staging/base/config.env
@@ -0,0 +1,33 @@
+DB_USER=
+DB_PASSWORD=
+DB_HOST=
+DB_PORT=5432
+DB_NAME=
+DB_SSLMODE=disable
+DB_SSLROOTCERT=
+DB_ENABLE_AUTO_MIGRATION=true
+SERVER_PORT=8080
+PROMETHEUS_PORT=9090
+PROMETHEUS_HISTOGRAM=true
+TLS_PATH=/etc/tls
+AUTH_DISABLE=false
+AUTH_IMPERSONATE=true
+LOG_LEVEL=info
+LOGS_API=false
+LOGS_TYPE=File
+LOGS_BUFFER_SIZE=5242880
+LOGS_PATH=/logs
+S3_BUCKET_NAME=
+S3_ENDPOINT=
+S3_HOSTNAME_IMMUTABLE=false
+S3_REGION=
+S3_ACCESS_KEY_ID=
+S3_SECRET_ACCESS_KEY=
+S3_MULTI_PART_SIZE=5242880
+GCS_BUCKET_NAME=
+STORAGE_EMULATOR_HOST=
+K8S_QPS=50
+K8S_BURST=100
+GRPC_WORKER_POOL=50
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index dcbbf3bc..257538a6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,12 +8,25 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
 
+# generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
+configMapGenerator:
+  - behavior: replace
+    files:
+      - config.env
+    name: api-config
+    options:
+      disableNameSuffixHash: true
+  - behavior: merge
+    name: config-observability
+    literals:
+      - profiling.enable="true"
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
@@ -33,20 +46,10 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
       name: config
-  - path: bump-results-watcher-replicas.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
   - path: update-results-watcher-performance.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index ec2b0738..590946b6 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -4,4 +4,22 @@
   value: "250m"
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
+  value: "250m"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -threadiness
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -qps
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -burst
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "100"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..e159c3d4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..f575a174 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..53f35ba0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (111 lines)</summary>  

``` 
./commit-48d8441c/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
900c900
<   config.env: |-
---
>   config.env: |
929,933d928
<     K8S_QPS=50
<     K8S_BURST=100
<     GRPC_WORKER_POOL=50
<     PROFILING=true
<     PROFILING_PORT=6060
1062d1056
<   profiling.enable: "true"
1166,1169d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1342c1332
<         image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1411c1401
<   replicas: 1
---
>   replicas: 2
1477,1482d1466
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
1500c1484
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
./commit-48d8441c/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
900c900
<   config.env: |-
---
>   config.env: |
929,933d928
<     K8S_QPS=50
<     K8S_BURST=100
<     GRPC_WORKER_POOL=50
<     PROFILING=true
<     PROFILING_PORT=6060
1062d1056
<   profiling.enable: "true"
1166,1169d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1342c1332
<         image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1411c1401
<   replicas: 1
---
>   replicas: 2
1477,1482d1466
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
1500c1484
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
./commit-48d8441c/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
900c900
<   config.env: |-
---
>   config.env: |
929,933d928
<     K8S_QPS=50
<     K8S_BURST=100
<     GRPC_WORKER_POOL=50
<     PROFILING=true
<     PROFILING_PORT=6060
1062d1056
<   profiling.enable: "true"
1166,1169d1159
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1342c1332
<         image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1411c1401
<   replicas: 1
---
>   replicas: 2
1477,1482d1466
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
1500c1484
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 48d8441c to 8b62b981 on Fri May 10 23:37:12 2024 </h3>  
 
<details> 
<summary>Git Diff (514 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 0924c8ca..6ead356f 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
diff --git a/components/pipeline-service/development/bump-results-watcher-replicas.yaml b/components/pipeline-service/development/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/development/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/development/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/development/config.env b/components/pipeline-service/development/config.env
new file mode 100644
index 00000000..f1cd6b50
--- /dev/null
+++ b/components/pipeline-service/development/config.env
@@ -0,0 +1,33 @@
+DB_USER=
+DB_PASSWORD=
+DB_HOST=
+DB_PORT=5432
+DB_NAME=
+DB_SSLMODE=disable
+DB_SSLROOTCERT=
+DB_ENABLE_AUTO_MIGRATION=true
+SERVER_PORT=8080
+PROMETHEUS_PORT=9090
+PROMETHEUS_HISTOGRAM=true
+TLS_PATH=/etc/tls
+AUTH_DISABLE=false
+AUTH_IMPERSONATE=true
+LOG_LEVEL=info
+LOGS_API=false
+LOGS_TYPE=File
+LOGS_BUFFER_SIZE=5242880
+LOGS_PATH=/logs
+S3_BUCKET_NAME=
+S3_ENDPOINT=
+S3_HOSTNAME_IMMUTABLE=false
+S3_REGION=
+S3_ACCESS_KEY_ID=
+S3_SECRET_ACCESS_KEY=
+S3_MULTI_PART_SIZE=5242880
+GCS_BUCKET_NAME=
+STORAGE_EMULATOR_HOST=
+K8S_QPS=50
+K8S_BURST=100
+GRPC_WORKER_POOL=50
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 4c6f6326..31a76b16 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,10 +8,23 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
   - ../base/rbac
 
+# generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
+configMapGenerator:
+  - behavior: replace
+    files:
+      - config.env
+    name: api-config
+    options:
+      disableNameSuffixHash: true
+  - behavior: merge
+    name: config-observability
+    literals:
+      - profiling.enable="true"
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
@@ -46,3 +59,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/development/update-results-watcher-performance.yaml b/components/pipeline-service/development/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..0490852b
--- /dev/null
+++ b/components/pipeline-service/development/update-results-watcher-performance.yaml
@@ -0,0 +1,19 @@
+---
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -threadiness
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -qps
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -burst
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "100"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/staging/base/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/config.env b/components/pipeline-service/staging/base/config.env
new file mode 100644
index 00000000..f1cd6b50
--- /dev/null
+++ b/components/pipeline-service/staging/base/config.env
@@ -0,0 +1,33 @@
+DB_USER=
+DB_PASSWORD=
+DB_HOST=
+DB_PORT=5432
+DB_NAME=
+DB_SSLMODE=disable
+DB_SSLROOTCERT=
+DB_ENABLE_AUTO_MIGRATION=true
+SERVER_PORT=8080
+PROMETHEUS_PORT=9090
+PROMETHEUS_HISTOGRAM=true
+TLS_PATH=/etc/tls
+AUTH_DISABLE=false
+AUTH_IMPERSONATE=true
+LOG_LEVEL=info
+LOGS_API=false
+LOGS_TYPE=File
+LOGS_BUFFER_SIZE=5242880
+LOGS_PATH=/logs
+S3_BUCKET_NAME=
+S3_ENDPOINT=
+S3_HOSTNAME_IMMUTABLE=false
+S3_REGION=
+S3_ACCESS_KEY_ID=
+S3_SECRET_ACCESS_KEY=
+S3_MULTI_PART_SIZE=5242880
+GCS_BUCKET_NAME=
+STORAGE_EMULATOR_HOST=
+K8S_QPS=50
+K8S_BURST=100
+GRPC_WORKER_POOL=50
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index dcbbf3bc..257538a6 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,12 +8,25 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e52f83e174efb8f308f6e32d1e0fc9f8eb9ed893
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b07d3edb07237a26e60b5c9ea7d90cd358f2a2e
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
 
+# generate a new configmap with updated values (logs api, db ssl mode) and replace the default one
+configMapGenerator:
+  - behavior: replace
+    files:
+      - config.env
+    name: api-config
+    options:
+      disableNameSuffixHash: true
+  - behavior: merge
+    name: config-observability
+    literals:
+      - profiling.enable="true"
+
 patches:
   - path: chains-tekton-config-patches.yaml
     target:
@@ -33,20 +46,10 @@ patches:
     target:
       kind: TektonConfig
       name: config
-#  - path: scale-down-exporter.yaml
-#    target:
-#      kind: Deployment
-#      name: pipeline-metrics-exporter
-#      namespace: openshift-pipelines
   - path: update-tekton-config-performance.yaml
     target:
       kind: TektonConfig
       name: config
-  - path: bump-results-watcher-replicas.yaml
-    target:
-      kind: Deployment
-      namespace: tekton-results
-      name: tekton-results-watcher
   - path: update-results-watcher-performance.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index ec2b0738..590946b6 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -4,4 +4,22 @@
   value: "250m"
 - op: replace
   path: /spec/template/spec/containers/1/resources/limits/cpu
-  value: "250m"
\ No newline at end of file
+  value: "250m"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -threadiness
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -qps
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "50"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -burst
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "100"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 3c8b702f..e159c3d4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 40a9f325..f575a174 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 79c22315..53f35ba0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -897,7 +897,7 @@ subjects:
 ---
 apiVersion: v1
 data:
-  config.env: |
+  config.env: |-
     DB_USER=
     DB_PASSWORD=
     DB_HOST=
@@ -926,6 +926,11 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    GRPC_WORKER_POOL=50
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1059,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1157,6 +1163,10 @@ spec:
     port: 9443
     protocol: TCP
     targetPort: metrics
+  - name: profiling
+    port: 6060
+    protocol: TCP
+    targetPort: 6060
   selector:
     app.kubernetes.io/name: tekton-results-api
 ---
@@ -1329,7 +1339,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1398,7 +1408,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1464,6 +1474,12 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1481,7 +1497,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
         name: watcher
         ports:
         - containerPort: 9090 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (37 lines)</summary>  

``` 
./commit-48d8441c/development/components/pipeline-service/development/kustomize.out.yaml
901c901
<   config.env: |-
---
>   config.env: |
930,934d929
<     K8S_QPS=50
<     K8S_BURST=100
<     GRPC_WORKER_POOL=50
<     PROFILING=true
<     PROFILING_PORT=6060
1063d1057
<   profiling.enable: "true"
1167,1170d1160
<   - name: profiling
<     port: 6060
<     protocol: TCP
<     targetPort: 6060
1318c1308
<         image: quay.io/redhat-appstudio/tekton-results-api:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1481c1471
<   replicas: 1
---
>   replicas: 2
1519,1524d1508
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
1542c1526
<         image: quay.io/redhat-appstudio/tekton-results-watcher:dc54f48f6a1adfde07b923129db33aaa77a61213
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 74a2ec37 to 48d8441c on Fri May 10 18:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1f57f06a..1af3fac9 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5d73f027..ac89a765 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2e4e4321..e8ce9614 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-74a2ec37/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
221,237d220
<   name: build-service-build-pipeline-config-read-only
<   namespace: build-service
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - build-pipeline-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
711c694
<         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
---
>         image: quay.io/redhat-appstudio/build-service:b19e3a30aa621ed898d64488e4c8785420b87f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 74a2ec37 to 48d8441c on Fri May 10 18:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1f57f06a..1af3fac9 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5d73f027..ac89a765 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2e4e4321..e8ce9614 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-74a2ec37/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
221,237d220
<   name: build-service-build-pipeline-config-read-only
<   namespace: build-service
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - build-pipeline-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
711c694
<         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
---
>         image: quay.io/redhat-appstudio/build-service:b19e3a30aa621ed898d64488e4c8785420b87f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 74a2ec37 to 48d8441c on Fri May 10 18:09:57 2024 </h3>  
 
<details> 
<summary>Git Diff (63 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1f57f06a..1af3fac9 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 5d73f027..ac89a765 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 2e4e4321..e8ce9614 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/build-service/config/default?ref=b19e3a30aa621ed898d64488e4c8785420b87f3e
+- https://github.com/konflux-ci/build-service/config/default?ref=d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: b19e3a30aa621ed898d64488e4c8785420b87f3e
+  newTag: d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (23 lines)</summary>  

``` 
./commit-74a2ec37/development/components/build-service/development/kustomize.out.yaml
221,237d220
<   name: build-service-build-pipeline-config-read-only
<   namespace: build-service
< rules:
< - apiGroups:
<   - ""
<   resourceNames:
<   - build-pipeline-config
<   resources:
<   - configmaps
<   verbs:
<   - get
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: Role
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
706c689
<         image: quay.io/redhat-appstudio/build-service:d1ed9ce8369ce2db6b74c4b06b04a1ac63b86c35
---
>         image: quay.io/redhat-appstudio/build-service:b19e3a30aa621ed898d64488e4c8785420b87f3e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from ef0f9dac to 74a2ec37 on Fri May 10 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
index 99bc07eb..2b2f0e1f 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 03a0a14
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: acd4a91
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: d5e862c
+    newTag: a8ca051
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-ef0f9dac/production/components/ui/production/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:03a0a14
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:a8ca051
---
>       - image: quay.io/cloudservices/hac-dev-frontend:d5e862c
585c585
<         image: quay.io/cloudservices/chrome-service:6f08f67
---
>         image: quay.io/cloudservices/chrome-service:acd4a91 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from ef0f9dac to 74a2ec37 on Fri May 10 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
index 99bc07eb..2b2f0e1f 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 03a0a14
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: acd4a91
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: d5e862c
+    newTag: a8ca051
 
 configMapGenerator:
   - name: fed-modules 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from ef0f9dac to 74a2ec37 on Fri May 10 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (27 lines)</summary>  

``` 
diff --git a/components/ui/production/kustomization.yaml b/components/ui/production/kustomization.yaml
index 99bc07eb..2b2f0e1f 100644
--- a/components/ui/production/kustomization.yaml
+++ b/components/ui/production/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 03a0a14
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: acd4a91
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: d5e862c
+    newTag: a8ca051
 
 configMapGenerator:
   - name: fed-modules 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-e3286dd8/production/components/tekton-ci/production/kustomize.out.yaml
272a273,281
>   name: build-service
> spec:
>   url: https://github.com/konflux-ci/build-service
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-e3286dd8/staging/components/tekton-ci/staging/kustomize.out.yaml
232a233,241
>   name: build-service
> spec:
>   url: https://github.com/konflux-ci/build-service
> ---
> apiVersion: pipelinesascode.tekton.dev/v1alpha1
> kind: Repository
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from e3286dd8 to ef0f9dac on Fri May 10 13:40:26 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index df198a4a..2f7e6a7f 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -36,13 +36,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: build-service
-spec:
-  url: "https://github.com/konflux-ci/build-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: build-definitions
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
```
 
</details> 
<br> 


</div>
