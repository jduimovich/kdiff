# kustomize changes tracked by commits 
### This file generated at Wed Nov 27 12:05:25 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from fc765c2a to 258a3d80 on Wed Nov 27 09:23:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 071420df..6967bd23 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-fc765c2a/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1513,1515c1513,1515
<             - --pr-snapshots-to-keep=70
<             - --non-pr-snapshots-to-keep=600
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             - --pr-snapshots-to-keep=100
>             - --non-pr-snapshots-to-keep=700
>             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1530c1530
<   schedule: 0 */6 * * *
---
>   schedule: 0 5 * * *
./commit-fc765c2a/production/components/integration/production/stone-prod-p02/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1513,1515c1513,1515
<             - --pr-snapshots-to-keep=70
<             - --non-pr-snapshots-to-keep=600
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             - --pr-snapshots-to-keep=100
>             - --non-pr-snapshots-to-keep=700
>             image: quay.io/redhat-appstudio/integration-service:3330c2dca9f84664954491282e1e5608c6c25c13
1530c1530
<   schedule: 0 */6 * * *
---
>   schedule: 0 5 * * * 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from fc765c2a to 258a3d80 on Wed Nov 27 09:23:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 071420df..6967bd23 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from fc765c2a to 258a3d80 on Wed Nov 27 09:23:44 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index 071420df..6967bd23 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=3330c2dca9f84664954491282e1e5608c6c25c13
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=3330c2dca9f84664954491282e1e5608c6c25c13
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 3330c2dca9f84664954491282e1e5608c6c25c13
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
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

<div>
<h3>2: Production changes from 58f59119 to fc765c2a on Wed Nov 27 06:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
index ff33364b..f1707461 100644
--- a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
+++ b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
@@ -24,3 +24,4 @@ spec:
         aws_region: "{{ .aws_region }}"
         bucket: "{{ .bucket }}"
         endpoint: "https://{{ .endpoint }}"
+        s3_url: "s3://{{ .bucket }}"
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 58dfd147..cc10560e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -439,6 +439,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -731,6 +743,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -872,6 +896,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1066,7 +1103,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1114,7 +1151,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1207,6 +1244,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1256,6 +1367,7 @@ spec:
             - token
             - -check_owner=false
             - -completed_run_grace_period=2h
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1273,7 +1385,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index da4f57ad..88a34ab6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -409,6 +409,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -684,6 +696,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -825,6 +849,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1046,7 +1083,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1074,6 +1111,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1094,7 +1136,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1158,6 +1200,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1235,6 +1351,7 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1252,7 +1369,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7b2535c1..72cfe7db 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0393db22..3be83ff8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 58f59119 to fc765c2a on Wed Nov 27 06:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
index ff33364b..f1707461 100644
--- a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
+++ b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
@@ -24,3 +24,4 @@ spec:
         aws_region: "{{ .aws_region }}"
         bucket: "{{ .bucket }}"
         endpoint: "https://{{ .endpoint }}"
+        s3_url: "s3://{{ .bucket }}"
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 58dfd147..cc10560e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -439,6 +439,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -731,6 +743,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -872,6 +896,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1066,7 +1103,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1114,7 +1151,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1207,6 +1244,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1256,6 +1367,7 @@ spec:
             - token
             - -check_owner=false
             - -completed_run_grace_period=2h
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1273,7 +1385,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index da4f57ad..88a34ab6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -409,6 +409,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -684,6 +696,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -825,6 +849,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1046,7 +1083,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1074,6 +1111,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1094,7 +1136,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1158,6 +1200,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1235,6 +1351,7 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1252,7 +1369,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7b2535c1..72cfe7db 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0393db22..3be83ff8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (282 lines)</summary>  

``` 
./commit-58f59119/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
543,554d542
<   - ""
<   resources:
<   - events
<   verbs:
<   - get
<   - list
<   - create
<   - update
<   - delete
<   - patch
<   - watch
< - apiGroups:
1082,1093d1069
<     CONVERTER_ENABLE=false
<     CONVERTER_DB_LIMIT=50
<     LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
<     LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
<     LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
<     LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
<     LOGGING_PLUGIN_CA_CERT=
<     LOGGING_PLUGIN_QUERY_LIMIT=1700
<     LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
<     LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
<     LOGGING_PLUGIN_API_URL=s3://tekton-logs
<     LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
1236,1250d1211
<   maxRetention: "30"
<   runAt: 5 5 * * 0
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-config-results-retention-policy
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1471c1432
<           value: blob
---
>           value: S3
1499,1503d1459
<         - name: LOGGING_PLUGIN_API_URL
<           valueFrom:
<             secretKeyRef:
<               key: s3_url
<               name: tekton-results-s3
1523c1479
<         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
1590,1664d1545
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy-agent
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-retention-policy-agent
<   namespace: tekton-results
< spec:
<   replicas: 0
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: tekton-results-retention-policy-agent
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
<       labels:
<         app.kubernetes.io/name: tekton-results-retention-policy-agent
<         app.kubernetes.io/version: devel
<     spec:
<       containers:
<       - env:
<         - name: SYSTEM_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         - name: CONFIG_LOGGING_NAME
<           value: tekton-results-config-logging
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: POSTGRES_USER
<               name: tekton-results-postgres
<           valueFrom:
<             secretKeyRef:
<               name: tekton-results-postgres
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
<         name: retention-policy-agent
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
<         - mountPath: /etc/tls
<           name: tls
<           readOnly: true
<       serviceAccountName: tekton-results-watcher
<       volumes:
<       - configMap:
<           name: tekton-results-api-config
<         name: config
<       - name: tls
<         secret:
<           secretName: tekton-results-tls
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1739d1619
<         - -logs_api=true
1757c1637
<         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
2144d2023
<         s3_url: s3://{{ .bucket }}
./commit-58f59119/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
543,554d542
<   - ""
<   resources:
<   - events
<   verbs:
<   - get
<   - list
<   - create
<   - update
<   - delete
<   - patch
<   - watch
< - apiGroups:
1082,1093d1069
<     CONVERTER_ENABLE=false
<     CONVERTER_DB_LIMIT=50
<     LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
<     LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
<     LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
<     LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
<     LOGGING_PLUGIN_CA_CERT=
<     LOGGING_PLUGIN_QUERY_LIMIT=1700
<     LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
<     LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
<     LOGGING_PLUGIN_API_URL=s3://tekton-logs
<     LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
1236,1250d1211
<   maxRetention: "30"
<   runAt: 5 5 * * 0
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-config-results-retention-policy
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1471c1432
<           value: blob
---
>           value: S3
1499,1503d1459
<         - name: LOGGING_PLUGIN_API_URL
<           valueFrom:
<             secretKeyRef:
<               key: s3_url
<               name: tekton-results-s3
1523c1479
<         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
1590,1664d1545
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy-agent
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-retention-policy-agent
<   namespace: tekton-results
< spec:
<   replicas: 0
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: tekton-results-retention-policy-agent
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
<       labels:
<         app.kubernetes.io/name: tekton-results-retention-policy-agent
<         app.kubernetes.io/version: devel
<     spec:
<       containers:
<       - env:
<         - name: SYSTEM_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         - name: CONFIG_LOGGING_NAME
<           value: tekton-results-config-logging
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: POSTGRES_USER
<               name: tekton-results-postgres
<           valueFrom:
<             secretKeyRef:
<               name: tekton-results-postgres
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
<         name: retention-policy-agent
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
<         - mountPath: /etc/tls
<           name: tls
<           readOnly: true
<       serviceAccountName: tekton-results-watcher
<       volumes:
<       - configMap:
<           name: tekton-results-api-config
<         name: config
<       - name: tls
<         secret:
<           secretName: tekton-results-tls
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1739d1619
<         - -logs_api=true
1757c1637
<         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
2144d2023
<         s3_url: s3://{{ .bucket }} 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 58f59119 to fc765c2a on Wed Nov 27 06:41:28 2024 </h3>  
 
<details> 
<summary>Git Diff (783 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
index ff33364b..f1707461 100644
--- a/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
+++ b/components/pipeline-service/base/external-secrets/tekton-results/tekton-results-s3.yaml
@@ -24,3 +24,4 @@ spec:
         aws_region: "{{ .aws_region }}"
         bucket: "{{ .bucket }}"
         endpoint: "https://{{ .endpoint }}"
+        s3_url: "s3://{{ .bucket }}"
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 58dfd147..cc10560e 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -439,6 +439,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -731,6 +743,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -872,6 +896,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1066,7 +1103,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1114,7 +1151,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1207,6 +1244,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1256,6 +1367,7 @@ spec:
             - token
             - -check_owner=false
             - -completed_run_grace_period=2h
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1273,7 +1385,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index da4f57ad..88a34ab6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -409,6 +409,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -684,6 +696,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -825,6 +849,19 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1046,7 +1083,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1074,6 +1111,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1094,7 +1136,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1158,6 +1200,80 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1235,6 +1351,7 @@ spec:
             - -check_owner=false
             - -completed_run_grace_period
             - 10m
+            - -logs_api=true
           env:
             - name: SYSTEM_NAMESPACE
               valueFrom:
@@ -1252,7 +1369,7 @@ spec:
               value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
             - name: AUTH_MODE
               value: token
-          image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+          image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
           name: watcher
           ports:
             - containerPort: 9090
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 7b2535c1..72cfe7db 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0393db22..3be83ff8 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -539,6 +539,18 @@ rules:
   - pods/log
   verbs:
   - get
+- apiGroups:
+  - ""
+  resources:
+  - events
+  verbs:
+  - get
+  - list
+  - create
+  - update
+  - delete
+  - patch
+  - watch
 - apiGroups:
   - tekton.dev
   resources:
@@ -1068,6 +1080,18 @@ data:
     K8S_BURST=100
     PROFILING=true
     PROFILING_PORT=6060
+    CONVERTER_ENABLE=false
+    CONVERTER_DB_LIMIT=50
+    LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
+    LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
+    LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
+    LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
+    LOGGING_PLUGIN_CA_CERT=
+    LOGGING_PLUGIN_QUERY_LIMIT=1700
+    LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
+    LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
+    LOGGING_PLUGIN_API_URL=s3://tekton-logs
+    LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
 kind: ConfigMap
 metadata:
   annotations:
@@ -1209,6 +1233,21 @@ metadata:
   namespace: tekton-results
 ---
 apiVersion: v1
+data:
+  maxRetention: "30"
+  runAt: 5 5 * * 0
+kind: ConfigMap
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-config-results-retention-policy
+  namespace: tekton-results
+---
+apiVersion: v1
 data:
   version: devel
 kind: ConfigMap
@@ -1430,7 +1469,7 @@ spec:
         - name: LOGS_API
           value: "true"
         - name: LOGS_TYPE
-          value: S3
+          value: blob
         - name: S3_HOSTNAME_IMMUTABLE
           value: "true"
         - name: S3_ACCESS_KEY_ID
@@ -1458,6 +1497,11 @@ spec:
             secretKeyRef:
               key: endpoint
               name: tekton-results-s3
+        - name: LOGGING_PLUGIN_API_URL
+          valueFrom:
+            secretKeyRef:
+              key: s3_url
+              name: tekton-results-s3
         - name: DB_USER
           valueFrom:
             secretKeyRef:
@@ -1478,7 +1522,7 @@ spec:
             secretKeyRef:
               key: db.name
               name: tekton-results-database
-        image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
+        image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         livenessProbe:
           httpGet:
             path: /healthz
@@ -1542,6 +1586,83 @@ spec:
 ---
 apiVersion: apps/v1
 kind: Deployment
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+  labels:
+    app.kubernetes.io/name: tekton-results-retention-policy-agent
+    app.kubernetes.io/part-of: tekton-results
+    app.kubernetes.io/version: devel
+  name: tekton-results-retention-policy-agent
+  namespace: tekton-results
+spec:
+  replicas: 0
+  selector:
+    matchLabels:
+      app.kubernetes.io/name: tekton-results-retention-policy-agent
+  template:
+    metadata:
+      annotations:
+        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+        cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
+      labels:
+        app.kubernetes.io/name: tekton-results-retention-policy-agent
+        app.kubernetes.io/version: devel
+    spec:
+      containers:
+      - env:
+        - name: SYSTEM_NAMESPACE
+          valueFrom:
+            fieldRef:
+              fieldPath: metadata.namespace
+        - name: CONFIG_LOGGING_NAME
+          value: tekton-results-config-logging
+        - name: DB_USER
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_USER
+              name: tekton-results-postgres
+        - name: DB_PASSWORD
+          valueFrom:
+            secretKeyRef:
+              key: POSTGRES_PASSWORD
+              name: tekton-results-postgres
+        image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
+        name: retention-policy-agent
+        resources:
+          limits:
+            cpu: 500m
+            memory: 128Mi
+          requests:
+            cpu: 5m
+            memory: 64Mi
+        securityContext:
+          allowPrivilegeEscalation: false
+          capabilities:
+            drop:
+            - ALL
+          readOnlyRootFilesystem: true
+          runAsNonRoot: true
+          seccompProfile:
+            type: RuntimeDefault
+        volumeMounts:
+        - mountPath: /etc/tekton/results
+          name: config
+          readOnly: true
+        - mountPath: /etc/tls
+          name: tls
+          readOnly: true
+      serviceAccountName: tekton-results-watcher
+      volumes:
+      - configMap:
+          name: tekton-results-api-config
+        name: config
+      - name: tls
+        secret:
+          secretName: tekton-results-tls
+---
+apiVersion: apps/v1
+kind: Deployment
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1619,6 +1740,7 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -logs_api=true
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1636,7 +1758,7 @@ spec:
           value: tekton-results-api-service.tekton-pipelines.svc.cluster.local:8080
         - name: AUTH_MODE
           value: token
-        image: quay.io/redhat-appstudio/tekton-results-watcher:bae7851ff584423503af324200f52cd28ca99116
+        image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
         name: watcher
         ports:
         - containerPort: 9090
@@ -1851,6 +1973,7 @@ spec:
         aws_secret_access_key: '{{ .aws_secret_access_key }}'
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
+        s3_url: s3://{{ .bucket }}
 ---
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (133 lines)</summary>  

``` 
./commit-58f59119/development/components/pipeline-service/development/kustomize.out.yaml
558,569d557
<   - ""
<   resources:
<   - events
<   verbs:
<   - get
<   - list
<   - create
<   - update
<   - delete
<   - patch
<   - watch
< - apiGroups:
948,959d935
<     CONVERTER_ENABLE=false
<     CONVERTER_DB_LIMIT=50
<     LOGGING_PLUGIN_PROXY_PATH=/api/logs/v1/application
<     LOGGING_PLUGIN_TOKEN_PATH=/var/run/secrets/kubernetes.io/serviceaccount/token
<     LOGGING_PLUGIN_NAMESPACE_KEY=kubernetes_namespace_name
<     LOGGING_PLUGIN_STATIC_LABELS='log_type=application'
<     LOGGING_PLUGIN_CA_CERT=
<     LOGGING_PLUGIN_QUERY_LIMIT=1700
<     LOGGING_PLUGIN_TLS_VERIFICATION_DISABLE=
<     LOGGING_PLUGIN_FORWARDER_DELAY_DURATION=10
<     LOGGING_PLUGIN_API_URL=s3://tekton-logs
<     LOGGING_PLUGIN_QUERY_PARAMS='v1alpha2LogType=true&use_path_style=true'
1102,1116d1077
<   maxRetention: "30"
<   runAt: 5 5 * * 0
< kind: ConfigMap
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-config-results-retention-policy
<   namespace: tekton-results
< ---
< apiVersion: v1
< data:
1310c1271
<           value: blob
---
>           value: S3
1357c1318
<         image: quay.io/konflux-ci/tekton-results-api:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
---
>         image: quay.io/konflux-ci/tekton-results-api:e35af9274c0df84386b73aae8df0ad496ad175df
1453,1527d1413
<   labels:
<     app.kubernetes.io/name: tekton-results-retention-policy-agent
<     app.kubernetes.io/part-of: tekton-results
<     app.kubernetes.io/version: devel
<   name: tekton-results-retention-policy-agent
<   namespace: tekton-results
< spec:
<   replicas: 0
<   selector:
<     matchLabels:
<       app.kubernetes.io/name: tekton-results-retention-policy-agent
<   template:
<     metadata:
<       annotations:
<         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<         cluster-autoscaler.kubernetes.io/safe-to-evict: "false"
<       labels:
<         app.kubernetes.io/name: tekton-results-retention-policy-agent
<         app.kubernetes.io/version: devel
<     spec:
<       containers:
<       - env:
<         - name: SYSTEM_NAMESPACE
<           valueFrom:
<             fieldRef:
<               fieldPath: metadata.namespace
<         - name: CONFIG_LOGGING_NAME
<           value: tekton-results-config-logging
<         - name: DB_USER
<           valueFrom:
<             secretKeyRef:
<               key: POSTGRES_USER
<               name: tekton-results-postgres
<           valueFrom:
<             secretKeyRef:
<               name: tekton-results-postgres
<         image: quay.io/konflux-ci/tekton-results-retention-policy-agent:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
<         name: retention-policy-agent
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<           runAsNonRoot: true
<           seccompProfile:
<             type: RuntimeDefault
<         volumeMounts:
<         - mountPath: /etc/tekton/results
<           name: config
<           readOnly: true
<         - mountPath: /etc/tls
<           name: tls
<           readOnly: true
<       serviceAccountName: tekton-results-watcher
<       volumes:
<       - configMap:
<           name: tekton-results-api-config
<         name: config
<       - name: tls
<         secret:
<           secretName: tekton-results-tls
< ---
< apiVersion: apps/v1
< kind: Deployment
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1574d1459
<         - -logs_api=true
1592c1477
<         image: quay.io/konflux-ci/tekton-results-watcher:b4017a355cafd589c3ae9a31f3d869e21a4b77fe
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 2734fda4 to 58f59119 on Tue Nov 26 17:09:37 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ae52e085..a2f13975 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 91f96874..760c86f9 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 2734fda4 to 58f59119 on Tue Nov 26 17:09:37 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ae52e085..a2f13975 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 91f96874..760c86f9 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (16 lines)</summary>  

``` 
./commit-2734fda4/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
483a484
>         "nix",
695a697,704
>       "nix": {
>         "enabled": true,
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/",
>         "schedule": [
>           "after 5am on thursday"
>         ]
>       },
898c907
<         image: quay.io/konflux-ci/mintmaker:8162b25f78b3d03c129a6a780b457b1b400775ba
---
>         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 2734fda4 to 58f59119 on Tue Nov 26 17:09:37 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index ae52e085..a2f13975 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=e140ba058b127890681fd73fc8beefda48abcd7f
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=e140ba058b127890681fd73fc8beefda48abcd7f
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+    newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 91f96874..760c86f9 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=945caa7bbd28e17dc6a7f033036ffb85a0584856
+- https://github.com/konflux-ci/mintmaker/config/default?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=8162b25f78b3d03c129a6a780b457b1b400775ba
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: e140ba058b127890681fd73fc8beefda48abcd7f
+  newTag: 8162b25f78b3d03c129a6a780b457b1b400775ba
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (274 lines)</summary>  

``` 
./commit-2734fda4/development/components/mintmaker/development/kustomize.out.yaml
483a484
>         "nix",
538,540d538
<         ],
<         "schedule": [
<           "after 5am on saturday"
546,549c544
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on monday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
562,565c557
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "before 5am"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
573c565
<           "before 5am"
---
>           "at any time"
579,582c571
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on tuesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
586,589c575
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
593,596c579
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
600,603c583
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
607,610c587
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
614,617c591
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
621,624c595
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
628,631c599
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
635,638c603
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
642,645c607
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
649,652c611
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
656,659c615
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
663,666c619
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on wednesday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
670,673c623
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
677,680c627
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
684,687c631
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
691,694c635,640
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
>       },
>       "nix": {
>         "enabled": true,
>         "additionalBranchPrefix": "{{baseBranch}}/",
>         "branchPrefix": "konflux/mintmaker/"
698,701c644
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
706,709c649
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
713,716c653
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on thursday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
720,723c657
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
727,730c661
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
734,737c665
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
741,744c669
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
748,751c673
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on friday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
755,758c677
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
762,765c681
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
769,772c685
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
776,779c689
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
783,786c693
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
790,793c697
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
797,800c701
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
804,807c705
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
811,814c709
<         "branchPrefix": "konflux/mintmaker/",
<         "schedule": [
<           "after 5am on saturday"
<         ]
---
>         "branchPrefix": "konflux/mintmaker/"
818d712
<       "updateNotScheduled": false,
897c791
<         image: quay.io/konflux-ci/mintmaker:8162b25f78b3d03c129a6a780b457b1b400775ba
---
>         image: quay.io/konflux-ci/mintmaker:e140ba058b127890681fd73fc8beefda48abcd7f 
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
<h3>4: Production changes from 2ed122f5 to 2734fda4 on Tue Nov 26 15:41:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8dfa6de..eeb3c981 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04b46fa9..8df44745 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 2ed122f5 to 2734fda4 on Tue Nov 26 15:41:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8dfa6de..eeb3c981 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04b46fa9..8df44745 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2ed122f5/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1424c1424
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
1515c1515
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 2ed122f5 to 2734fda4 on Tue Nov 26 15:41:38 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index e8dfa6de..eeb3c981 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 04b46fa9..8df44745 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b2b574118504bd139b19f220c17a4e78d8a0fa48
+- https://github.com/konflux-ci/integration-service/config/default?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=b547faa7f109c99314aced6ff31647a4a71ced8a
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: b2b574118504bd139b19f220c17a4e78d8a0fa48
+  newTag: b547faa7f109c99314aced6ff31647a4a71ced8a
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-2ed122f5/development/components/integration/development/kustomize.out.yaml
1422c1422
<         image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>         image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48
1516c1516
<             image: quay.io/redhat-appstudio/integration-service:b547faa7f109c99314aced6ff31647a4a71ced8a
---
>             image: quay.io/redhat-appstudio/integration-service:b2b574118504bd139b19f220c17a4e78d8a0fa48 
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
