# kustomize changes tracked by commits 
### This file generated at Tue Jun 18 08:02:44 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e95d2b11 to 4e63f615 on Mon Jun 17 13:57:03 2024 </h3>  
 
<details> 
<summary>Git Diff (524 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3ccd8778..9f7dc662 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
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
index 00000000..45c7366e
--- /dev/null
+++ b/components/pipeline-service/development/config.env
@@ -0,0 +1,32 @@
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
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index c7908094..f29f0a99 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,15 +8,22 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
   - ../base/rbac
 
-images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
-  - name: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
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
 
 patches:
   - path: chains-tekton-config-patches.yaml
@@ -56,3 +63,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: update-results-watcher-performance.yaml
+    target:
+        kind: Deployment
+        namespace: tekton-results
+        name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/development/update-results-watcher-performance.yaml b/components/pipeline-service/development/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..03b0fe44
--- /dev/null
+++ b/components/pipeline-service/development/update-results-watcher-performance.yaml
@@ -0,0 +1,31 @@
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
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -update_log_timeout
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "9m"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -dynamic_reconcile_timeout
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "9m"
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
index 00000000..45c7366e
--- /dev/null
+++ b/components/pipeline-service/staging/base/config.env
@@ -0,0 +1,32 @@
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
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 894045c2..55afedce 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,17 +8,24 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
 
-images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
-  - name: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
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
 
 patches:
   - path: chains-tekton-config-patches.yaml
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index ec2b0738..99ad9993 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -4,4 +4,34 @@
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
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -update_log_timeout
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "9m"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -dynamic_reconcile_timeout
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "9m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9197bb5f..f957fb42 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0500342f..c409fc1c 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0d0f1cf4..9b4be03b 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e95d2b11 to 4e63f615 on Mon Jun 17 13:57:03 2024 </h3>  
 
<details> 
<summary>Git Diff (524 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3ccd8778..9f7dc662 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
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
index 00000000..45c7366e
--- /dev/null
+++ b/components/pipeline-service/development/config.env
@@ -0,0 +1,32 @@
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
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index c7908094..f29f0a99 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,15 +8,22 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
   - ../base/rbac
 
-images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
-  - name: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
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
 
 patches:
   - path: chains-tekton-config-patches.yaml
@@ -56,3 +63,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: update-results-watcher-performance.yaml
+    target:
+        kind: Deployment
+        namespace: tekton-results
+        name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/development/update-results-watcher-performance.yaml b/components/pipeline-service/development/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..03b0fe44
--- /dev/null
+++ b/components/pipeline-service/development/update-results-watcher-performance.yaml
@@ -0,0 +1,31 @@
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
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -update_log_timeout
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "9m"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -dynamic_reconcile_timeout
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "9m"
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
index 00000000..45c7366e
--- /dev/null
+++ b/components/pipeline-service/staging/base/config.env
@@ -0,0 +1,32 @@
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
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 894045c2..55afedce 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,17 +8,24 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
 
-images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
-  - name: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
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
 
 patches:
   - path: chains-tekton-config-patches.yaml
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index ec2b0738..99ad9993 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -4,4 +4,34 @@
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
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -update_log_timeout
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "9m"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -dynamic_reconcile_timeout
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "9m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9197bb5f..f957fb42 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0500342f..c409fc1c 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0d0f1cf4..9b4be03b 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (117 lines)</summary>  

``` 
./commit-e95d2b11/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
900c900
<   config.env: |-
---
>   config.env: |
929,932d928
<     K8S_QPS=50
<     K8S_BURST=100
<     PROFILING=true
<     PROFILING_PORT=6060
1061d1056
<   profiling.enable: "true"
1343c1338
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1412c1407
<   replicas: 1
---
>   replicas: 2
1478,1487d1472
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
<         - -update_log_timeout
<         - 9m
<         - -dynamic_reconcile_timeout
<         - 9m
1505c1490
<         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
1653c1638
<         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
./commit-e95d2b11/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
900c900
<   config.env: |-
---
>   config.env: |
929,932d928
<     K8S_QPS=50
<     K8S_BURST=100
<     PROFILING=true
<     PROFILING_PORT=6060
1061d1056
<   profiling.enable: "true"
1343c1338
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1412c1407
<   replicas: 1
---
>   replicas: 2
1478,1487d1472
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
<         - -update_log_timeout
<         - 9m
<         - -dynamic_reconcile_timeout
<         - 9m
1505c1490
<         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
1653c1638
<         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
./commit-e95d2b11/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
900c900
<   config.env: |-
---
>   config.env: |
929,932d928
<     K8S_QPS=50
<     K8S_BURST=100
<     PROFILING=true
<     PROFILING_PORT=6060
1061d1056
<   profiling.enable: "true"
1343c1338
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1412c1407
<   replicas: 1
---
>   replicas: 2
1478,1487d1472
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
<         - -update_log_timeout
<         - 9m
<         - -dynamic_reconcile_timeout
<         - 9m
1505c1490
<         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
1653c1638
<         image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
---
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14 
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
<h3>1: Development changes from e95d2b11 to 4e63f615 on Mon Jun 17 13:57:03 2024 </h3>  
 
<details> 
<summary>Git Diff (524 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 3ccd8778..9f7dc662 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
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
index 00000000..45c7366e
--- /dev/null
+++ b/components/pipeline-service/development/config.env
@@ -0,0 +1,32 @@
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
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index c7908094..f29f0a99 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,15 +8,22 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
   - ../base/rbac
 
-images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
-  - name: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
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
 
 patches:
   - path: chains-tekton-config-patches.yaml
@@ -56,3 +63,8 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - path: update-results-watcher-performance.yaml
+    target:
+        kind: Deployment
+        namespace: tekton-results
+        name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/development/update-results-watcher-performance.yaml b/components/pipeline-service/development/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..03b0fe44
--- /dev/null
+++ b/components/pipeline-service/development/update-results-watcher-performance.yaml
@@ -0,0 +1,31 @@
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
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -update_log_timeout
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "9m"
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: -dynamic_reconcile_timeout
+- op: add
+  path: /spec/template/spec/containers/0/args/-
+  value: "9m"
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
index 00000000..45c7366e
--- /dev/null
+++ b/components/pipeline-service/staging/base/config.env
@@ -0,0 +1,32 @@
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
+PROFILING=true
+PROFILING_PORT=6060
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 894045c2..55afedce 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,17 +8,24 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=72287aca6503f631b917debc27683a508f7e45ad
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3ed2e97d4eacb0252b153edd2d6006637acb528e
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
   - ../../base/rbac
 
-images:
-  - name: quay.io/redhat-appstudio/tekton-results-api
-    newTag: bae7851ff584423503af324200f52cd28ca99116
-  - name: quay.io/redhat-appstudio/tekton-results-watcher
-    newTag: bae7851ff584423503af324200f52cd28ca99116
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
 
 patches:
   - path: chains-tekton-config-patches.yaml
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
index ec2b0738..99ad9993 100644
--- a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -4,4 +4,34 @@
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
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -update_log_timeout
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "9m"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: -dynamic_reconcile_timeout
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "9m"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 9197bb5f..f957fb42 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 0500342f..c409fc1c 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0d0f1cf4..9b4be03b 100644
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
@@ -926,6 +926,10 @@ data:
     S3_MULTI_PART_SIZE=5242880
     GCS_BUCKET_NAME=
     STORAGE_EMULATOR_HOST=
+    K8S_QPS=50
+    K8S_BURST=100
+    PROFILING=true
+    PROFILING_PORT=6060
 kind: ConfigMap
 metadata:
   annotations:
@@ -1054,6 +1058,7 @@ data:
     metrics.taskrun.duration-type: "histogram"
     metrics.pipelinerun.level: "pipeline"
     metrics.pipelinerun.duration-type: "histogram"
+  profiling.enable: "true"
 kind: ConfigMap
 metadata:
   annotations:
@@ -1335,7 +1340,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1404,7 +1409,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
@@ -1470,6 +1475,16 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "50"
+        - -qps
+        - "50"
+        - -burst
+        - "100"
+        - -update_log_timeout
+        - 9m
+        - -dynamic_reconcile_timeout
+        - 9m
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1487,7 +1502,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
         name: watcher
         ports:
         - containerPort: 9090
@@ -1635,7 +1650,7 @@ spec:
             )" \
             --dry-run=client \
             -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
+        image: quay.io/redhat-appstudio/appstudio-utils:dbbdd82734232e6289e8fbae5b4c858481a7c057
         imagePullPolicy: Always
         name: chains-secret-generation
         resources: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-e95d2b11/development/components/pipeline-service/development/kustomize.out.yaml
901c901
<   config.env: |-
---
>   config.env: |
930,933d929
<     K8S_QPS=50
<     K8S_BURST=100
<     PROFILING=true
<     PROFILING_PORT=6060
1062d1057
<   profiling.enable: "true"
1319c1314
<         image: quay.io/redhat-appstudio/tekton-results-api:ed360eccc021ad5eedf8ea9c0732912ef602b15a
---
>         image: quay.io/redhat-appstudio/tekton-results-api:bae7851ff584423503af324200f52cd28ca99116
1482c1477
<   replicas: 1
---
>   replicas: 2
1520,1529d1514
<         - -threadiness
<         - "50"
<         - -qps
<         - "50"
<         - -burst
<         - "100"
<         - -update_log_timeout
<         - 9m
<         - -dynamic_reconcile_timeout
<         - 9m
1547c1532
<         image: quay.io/redhat-appstudio/tekton-results-watcher:ed360eccc021ad5eedf8ea9c0732912ef602b15a
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 5a7e4aeb to e95d2b11 on Fri Jun 14 14:45:56 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 85d020a6..086b1209 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -19,3 +19,10 @@ metadata:
   name: build-definitions
 spec:
   url: "https://github.com/konflux-ci/build-definitions"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: e2e-tests
+spec:
+  url: "https://github.com/konflux-ci/e2e-tests"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d425c77e..c224bede 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -8,13 +8,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-5a7e4aeb/production/components/konflux-ci/production/kustomize.out.yaml
298,306d297
<   name: e2e-tests
< spec:
<   url: https://github.com/konflux-ci/e2e-tests
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-5a7e4aeb/production/components/tekton-ci/production/kustomize.out.yaml
313a314,322
>   name: e2e-tests
> spec:
>   url: https://github.com/konflux-ci/e2e-tests
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 5a7e4aeb to e95d2b11 on Fri Jun 14 14:45:56 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 85d020a6..086b1209 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -19,3 +19,10 @@ metadata:
   name: build-definitions
 spec:
   url: "https://github.com/konflux-ci/build-definitions"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: e2e-tests
+spec:
+  url: "https://github.com/konflux-ci/e2e-tests"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d425c77e..c224bede 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -8,13 +8,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-5a7e4aeb/staging/components/konflux-ci/staging/kustomize.out.yaml
233,241d232
<   name: e2e-tests
< spec:
<   url: https://github.com/konflux-ci/e2e-tests
< ---
< apiVersion: pipelinesascode.tekton.dev/v1alpha1
< kind: Repository
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
./commit-5a7e4aeb/staging/components/tekton-ci/staging/kustomize.out.yaml
241a242,250
>   name: e2e-tests
> spec:
>   url: https://github.com/konflux-ci/e2e-tests
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
<h3>2: Development changes from 5a7e4aeb to e95d2b11 on Fri Jun 14 14:45:56 2024 </h3>  
 
<details> 
<summary>Git Diff (33 lines)</summary>  

``` 
diff --git a/components/konflux-ci/base/repository.yaml b/components/konflux-ci/base/repository.yaml
index 85d020a6..086b1209 100644
--- a/components/konflux-ci/base/repository.yaml
+++ b/components/konflux-ci/base/repository.yaml
@@ -19,3 +19,10 @@ metadata:
   name: build-definitions
 spec:
   url: "https://github.com/konflux-ci/build-definitions"
+---
+apiVersion: pipelinesascode.tekton.dev/v1alpha1
+kind: Repository
+metadata:
+  name: e2e-tests
+spec:
+  url: "https://github.com/konflux-ci/e2e-tests"
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index d425c77e..c224bede 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -8,13 +8,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: e2e-tests
-spec:
-  url: "https://github.com/konflux-ci/e2e-tests"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from bdb3a6c2 to 5a7e4aeb on Fri Jun 14 12:11:47 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-templates/production/e2e-quay-push-secret.yaml b/components/build-templates/production/e2e-quay-push-secret.yaml
index c2591eb6..bb865453 100644
--- a/components/build-templates/production/e2e-quay-push-secret.yaml
+++ b/components/build-templates/production/e2e-quay-push-secret.yaml
@@ -9,7 +9,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/tekton-ci/quay-push-secret
+        key: production/build/tekton-ci/quay-push-secret-konflux-ci
   refreshInterval: 15m
   secretStoreRef:
     kind: ClusterSecretStore 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-bdb3a6c2/production/components/build-templates/production/kustomize.out.yaml
187c187
<       key: production/build/tekton-ci/quay-push-secret-konflux-ci
---
>       key: production/build/tekton-ci/quay-push-secret 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from bdb3a6c2 to 5a7e4aeb on Fri Jun 14 12:11:47 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-templates/production/e2e-quay-push-secret.yaml b/components/build-templates/production/e2e-quay-push-secret.yaml
index c2591eb6..bb865453 100644
--- a/components/build-templates/production/e2e-quay-push-secret.yaml
+++ b/components/build-templates/production/e2e-quay-push-secret.yaml
@@ -9,7 +9,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/tekton-ci/quay-push-secret
+        key: production/build/tekton-ci/quay-push-secret-konflux-ci
   refreshInterval: 15m
   secretStoreRef:
     kind: ClusterSecretStore 
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
<h3>3: Development changes from bdb3a6c2 to 5a7e4aeb on Fri Jun 14 12:11:47 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/build-templates/production/e2e-quay-push-secret.yaml b/components/build-templates/production/e2e-quay-push-secret.yaml
index c2591eb6..bb865453 100644
--- a/components/build-templates/production/e2e-quay-push-secret.yaml
+++ b/components/build-templates/production/e2e-quay-push-secret.yaml
@@ -9,7 +9,7 @@ metadata:
 spec:
   dataFrom:
     - extract:
-        key: production/build/tekton-ci/quay-push-secret
+        key: production/build/tekton-ci/quay-push-secret-konflux-ci
   refreshInterval: 15m
   secretStoreRef:
     kind: ClusterSecretStore 
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
<h3>4: Production changes from 7f14e443 to bdb3a6c2 on Thu Jun 13 15:37:57 2024 </h3>  
 
<details> 
<summary>Git Diff (95 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index 5bb216d6..f1fafc77 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -57,7 +57,7 @@ spec:
                   export -f deleteAndLog
                   xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
               imagePullPolicy: IfNotPresent
-              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
               volumeMounts:
                 - mountPath: /var/tmp
                   name: temp-directory
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 829e27ed..27ca5d85 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 4059480c..45d9d964 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 510828be..70d6f60b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,15 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
 
diff --git a/hack/preview.sh b/hack/preview.sh
index 6b1d2b04..4ade0b1d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
-[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
-[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7f14e443/production/components/release/production/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba
---
>         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
1911c1911
<             image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
---
>             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 7f14e443 to bdb3a6c2 on Thu Jun 13 15:37:57 2024 </h3>  
 
<details> 
<summary>Git Diff (95 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index 5bb216d6..f1fafc77 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -57,7 +57,7 @@ spec:
                   export -f deleteAndLog
                   xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
               imagePullPolicy: IfNotPresent
-              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
               volumeMounts:
                 - mountPath: /var/tmp
                   name: temp-directory
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 829e27ed..27ca5d85 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 4059480c..45d9d964 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 510828be..70d6f60b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,15 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
 
diff --git a/hack/preview.sh b/hack/preview.sh
index 6b1d2b04..4ade0b1d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
-[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
-[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7f14e443/staging/components/release/staging/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba
---
>         image: quay.io/redhat-appstudio/release-service:386031571e33e33fa211b1029b359c93ee363c62
1911c1911
<             image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
---
>             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e 
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
<h3>4: Development changes from 7f14e443 to bdb3a6c2 on Thu Jun 13 15:37:57 2024 </h3>  
 
<details> 
<summary>Git Diff (95 lines)</summary>  

``` 
diff --git a/components/release/base/cronjobs/remove-expired-releases.yaml b/components/release/base/cronjobs/remove-expired-releases.yaml
index 5bb216d6..f1fafc77 100644
--- a/components/release/base/cronjobs/remove-expired-releases.yaml
+++ b/components/release/base/cronjobs/remove-expired-releases.yaml
@@ -57,7 +57,7 @@ spec:
                   export -f deleteAndLog
                   xargs -a ${EXPIRED_RELEASES_FILE} -i -P ${MAX_PROCS} bash -c 'deleteAndLog "{}"'
               imagePullPolicy: IfNotPresent
-              image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e
+              image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
               volumeMounts:
                 - mountPath: /var/tmp
                   name: temp-directory
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 829e27ed..27ca5d85 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=758a1d48d0020e8d9356c63924507d970411ebea
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 758a1d48d0020e8d9356c63924507d970411ebea
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 4059480c..45d9d964 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 510828be..70d6f60b 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,15 +2,15 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=386031571e33e33fa211b1029b359c93ee363c62
+  - https://github.com/konflux-ci/release-service/config/default?ref=5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 components:
   - ../k-components/manager-resources-patch
 
 images:
-  - name: quay.io/redhat-appstudio/release-service
-    newName: quay.io/redhat-appstudio/release-service
-    newTag: 386031571e33e33fa211b1029b359c93ee363c62
+  - name: quay.io/konflux-ci/release-service
+    newName: quay.io/konflux-ci/release-service
+    newTag: 5e27ea8bc9073de6a18dee73534ec93dffb93aba
 
 namespace: release-service
 
diff --git a/hack/preview.sh b/hack/preview.sh
index 6b1d2b04..4ade0b1d 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -200,8 +200,8 @@ sed -i.bak "s/rekor-server.enterprise-contract-service.svc/$rekor_server/" $ROOT
 [ -n "${INTEGRATION_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/integration-service\")) |=.newTag=\"${INTEGRATION_SERVICE_IMAGE_TAG}\"" $ROOT/components/integration/development/kustomization.yaml
 [[ -n "${INTEGRATION_SERVICE_PR_OWNER}" && "${INTEGRATION_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/integration-service*\")) |= (sub(\"\?ref=.+\", \"?ref=${INTEGRATION_SERVICE_PR_SHA}\" ) | sub(\"github.com/redhat-appstudio\", \"github.com/${INTEGRATION_SERVICE_PR_OWNER}\"))" $ROOT/components/integration/development/kustomization.yaml
 
-[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
-[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/redhat-appstudio/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newName=\"${RELEASE_SERVICE_IMAGE_REPO}\"" $ROOT/components/release/development/kustomization.yaml
+[ -n "${RELEASE_SERVICE_IMAGE_TAG}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/release-service\")) |=.newTag=\"${RELEASE_SERVICE_IMAGE_TAG}\"" $ROOT/components/release/development/kustomization.yaml
 [[ -n "${RELEASE_SERVICE_PR_OWNER}" && "${RELEASE_SERVICE_PR_SHA}" ]] && yq -i e "(.resources[] | select(. ==\"*github.com/konflux-ci/release-service*\")) |= \"https://github.com/${RELEASE_SERVICE_PR_OWNER}/release-service/config/default?ref=${RELEASE_SERVICE_PR_SHA}\"" $ROOT/components/release/development/kustomization.yaml
 
 [ -n "${MINTMAKER_IMAGE_REPO}" ] && yq -i e "(.images.[] | select(.name==\"quay.io/konflux-ci/mintmaker\")) |=.newName=\"${MINTMAKER_IMAGE_REPO}\"" $ROOT/components/mintmaker/development/kustomization.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7f14e443/development/components/release/development/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:5e27ea8bc9073de6a18dee73534ec93dffb93aba
---
>         image: quay.io/redhat-appstudio/release-service:758a1d48d0020e8d9356c63924507d970411ebea
1911c1911
<             image: quay.io/konflux-ci/release-service-utils:38c3bfd7479c86b832cba5b61f9bbde40c469393
---
>             image: quay.io/redhat-appstudio/release-service-utils:305541d8b8c2670dea4b50bd8c56858c365ca11e 
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
