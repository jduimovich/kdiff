# kustomize changes tracked by commits 
### This file generated at Mon Jul  1 16:08:08 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a6237db4 to f9d2eec3 on Mon Jul 1 14:16:20 2024 </h3>  
 
<details> 
<summary>Git Diff (82 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
new file mode 100644
index 00000000..cc78bc4d
--- /dev/null
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -0,0 +1,76 @@
+config:
+  exporters:
+    otlphttp:
+      endpoint: https://api.honeycomb.io:443
+      headers:
+        "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
+  extensions:
+    # The health_check extension is mandatory for this chart.
+    # Without the health_check extension the collector will fail the readiness and liveliness probes.
+    # The health_check extension can be modified, but should never be removed.
+    health_check: {}
+    memory_ballast: {}
+  processors:
+    batch: {}
+    # If set to null, will be overridden with values based on k8s resource limits
+    memory_limiter:
+      check_interval: 2s
+      limit_mib: 512
+      spike_limit_percentage: 100
+    attributes/collector-info:
+      actions:
+        - key: collector.hostname
+          action: insert
+          value: ${env:HOSTNAME}
+        - key: collector.clustername
+          action: insert
+          value: production
+  receivers:
+    jaeger: null
+    prometheus: null
+    zipkin: null
+    otlp:
+      protocols:
+        grpc:
+          endpoint: 0.0.0.0:4317
+          max_recv_msg_size_mib: 999999999
+        http:
+          endpoint: 0.0.0.0:4318
+  service:
+    extensions:
+      - health_check
+      - memory_ballast
+    pipelines:
+      traces:
+        exporters:
+          - debug
+        processors:
+          - memory_limiter
+          - attributes/collector-info
+          - batch
+        receivers:
+          - otlp
+      metrics: null
+# Configuration for ports
+ports:
+  otlp:
+    enabled: true
+    containerPort: 4317
+    servicePort: 4317
+    hostPort: 4317
+    protocol: TCP
+  otlp-http:
+    enabled: true
+    containerPort: 4318
+    servicePort: 4318
+    hostPort: 4318
+    protocol: TCP
+  jaeger-compact:
+    enabled: false
+  jaeger-thrift:
+    enabled: false
+  jaeger-grpc:
+    enabled: false
+  zipkin:
+    enabled: false
+ 
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
<h3>1: Staging changes from a6237db4 to f9d2eec3 on Mon Jul 1 14:16:20 2024 </h3>  
 
<details> 
<summary>Git Diff (82 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
new file mode 100644
index 00000000..cc78bc4d
--- /dev/null
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -0,0 +1,76 @@
+config:
+  exporters:
+    otlphttp:
+      endpoint: https://api.honeycomb.io:443
+      headers:
+        "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
+  extensions:
+    # The health_check extension is mandatory for this chart.
+    # Without the health_check extension the collector will fail the readiness and liveliness probes.
+    # The health_check extension can be modified, but should never be removed.
+    health_check: {}
+    memory_ballast: {}
+  processors:
+    batch: {}
+    # If set to null, will be overridden with values based on k8s resource limits
+    memory_limiter:
+      check_interval: 2s
+      limit_mib: 512
+      spike_limit_percentage: 100
+    attributes/collector-info:
+      actions:
+        - key: collector.hostname
+          action: insert
+          value: ${env:HOSTNAME}
+        - key: collector.clustername
+          action: insert
+          value: production
+  receivers:
+    jaeger: null
+    prometheus: null
+    zipkin: null
+    otlp:
+      protocols:
+        grpc:
+          endpoint: 0.0.0.0:4317
+          max_recv_msg_size_mib: 999999999
+        http:
+          endpoint: 0.0.0.0:4318
+  service:
+    extensions:
+      - health_check
+      - memory_ballast
+    pipelines:
+      traces:
+        exporters:
+          - debug
+        processors:
+          - memory_limiter
+          - attributes/collector-info
+          - batch
+        receivers:
+          - otlp
+      metrics: null
+# Configuration for ports
+ports:
+  otlp:
+    enabled: true
+    containerPort: 4317
+    servicePort: 4317
+    hostPort: 4317
+    protocol: TCP
+  otlp-http:
+    enabled: true
+    containerPort: 4318
+    servicePort: 4318
+    hostPort: 4318
+    protocol: TCP
+  jaeger-compact:
+    enabled: false
+  jaeger-thrift:
+    enabled: false
+  jaeger-grpc:
+    enabled: false
+  zipkin:
+    enabled: false
+ 
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
<h3>1: Development changes from a6237db4 to f9d2eec3 on Mon Jul 1 14:16:20 2024 </h3>  
 
<details> 
<summary>Git Diff (82 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
new file mode 100644
index 00000000..cc78bc4d
--- /dev/null
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -0,0 +1,76 @@
+config:
+  exporters:
+    otlphttp:
+      endpoint: https://api.honeycomb.io:443
+      headers:
+        "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
+  extensions:
+    # The health_check extension is mandatory for this chart.
+    # Without the health_check extension the collector will fail the readiness and liveliness probes.
+    # The health_check extension can be modified, but should never be removed.
+    health_check: {}
+    memory_ballast: {}
+  processors:
+    batch: {}
+    # If set to null, will be overridden with values based on k8s resource limits
+    memory_limiter:
+      check_interval: 2s
+      limit_mib: 512
+      spike_limit_percentage: 100
+    attributes/collector-info:
+      actions:
+        - key: collector.hostname
+          action: insert
+          value: ${env:HOSTNAME}
+        - key: collector.clustername
+          action: insert
+          value: production
+  receivers:
+    jaeger: null
+    prometheus: null
+    zipkin: null
+    otlp:
+      protocols:
+        grpc:
+          endpoint: 0.0.0.0:4317
+          max_recv_msg_size_mib: 999999999
+        http:
+          endpoint: 0.0.0.0:4318
+  service:
+    extensions:
+      - health_check
+      - memory_ballast
+    pipelines:
+      traces:
+        exporters:
+          - debug
+        processors:
+          - memory_limiter
+          - attributes/collector-info
+          - batch
+        receivers:
+          - otlp
+      metrics: null
+# Configuration for ports
+ports:
+  otlp:
+    enabled: true
+    containerPort: 4317
+    servicePort: 4317
+    hostPort: 4317
+    protocol: TCP
+  otlp-http:
+    enabled: true
+    containerPort: 4318
+    servicePort: 4318
+    hostPort: 4318
+    protocol: TCP
+  jaeger-compact:
+    enabled: false
+  jaeger-thrift:
+    enabled: false
+  jaeger-grpc:
+    enabled: false
+  zipkin:
+    enabled: false
+ 
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
<h3>2: Production changes from 158ce646 to a6237db4 on Mon Jul 1 13:52:10 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/hack/secret-creator/create-plnsvc-secrets.sh b/hack/secret-creator/create-plnsvc-secrets.sh
index dd37786b..4c5d06f3 100755
--- a/hack/secret-creator/create-plnsvc-secrets.sh
+++ b/hack/secret-creator/create-plnsvc-secrets.sh
@@ -78,7 +78,7 @@ create_db_cert_secret_and_configmap() {
         -subj "/CN=cluster.local" \
         > /dev/null
     chmod og-rwx ".tmp/tekton-results/ca.key"
-    openssl x509 -req -days 7 -text -extensions v3_ca \
+    openssl x509 -req -days 9999 -text -extensions v3_ca \
         -signkey ".tmp/tekton-results/ca.key" \
         -in ".tmp/tekton-results/ca.csr" \
         -extfile "/etc/ssl/openssl.cnf" \
@@ -91,7 +91,7 @@ create_db_cert_secret_and_configmap() {
         -keyout ".tmp/tekton-results/tls.key" \
         > /dev/null
     chmod og-rwx ".tmp/tekton-results/tls.key"
-    openssl x509 -req -text -days 7 -CAcreateserial \
+    openssl x509 -req -text -days 9999 -CAcreateserial \
         -extfile <(printf "subjectAltName=DNS:postgres-postgresql.tekton-results.svc.cluster.local") \
         -in ".tmp/tekton-results/tls.csr" \
         -CA ".tmp/tekton-results/ca.crt" \ 
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
<h3>2: Staging changes from 158ce646 to a6237db4 on Mon Jul 1 13:52:10 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/hack/secret-creator/create-plnsvc-secrets.sh b/hack/secret-creator/create-plnsvc-secrets.sh
index dd37786b..4c5d06f3 100755
--- a/hack/secret-creator/create-plnsvc-secrets.sh
+++ b/hack/secret-creator/create-plnsvc-secrets.sh
@@ -78,7 +78,7 @@ create_db_cert_secret_and_configmap() {
         -subj "/CN=cluster.local" \
         > /dev/null
     chmod og-rwx ".tmp/tekton-results/ca.key"
-    openssl x509 -req -days 7 -text -extensions v3_ca \
+    openssl x509 -req -days 9999 -text -extensions v3_ca \
         -signkey ".tmp/tekton-results/ca.key" \
         -in ".tmp/tekton-results/ca.csr" \
         -extfile "/etc/ssl/openssl.cnf" \
@@ -91,7 +91,7 @@ create_db_cert_secret_and_configmap() {
         -keyout ".tmp/tekton-results/tls.key" \
         > /dev/null
     chmod og-rwx ".tmp/tekton-results/tls.key"
-    openssl x509 -req -text -days 7 -CAcreateserial \
+    openssl x509 -req -text -days 9999 -CAcreateserial \
         -extfile <(printf "subjectAltName=DNS:postgres-postgresql.tekton-results.svc.cluster.local") \
         -in ".tmp/tekton-results/tls.csr" \
         -CA ".tmp/tekton-results/ca.crt" \ 
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
<h3>2: Development changes from 158ce646 to a6237db4 on Mon Jul 1 13:52:10 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/hack/secret-creator/create-plnsvc-secrets.sh b/hack/secret-creator/create-plnsvc-secrets.sh
index dd37786b..4c5d06f3 100755
--- a/hack/secret-creator/create-plnsvc-secrets.sh
+++ b/hack/secret-creator/create-plnsvc-secrets.sh
@@ -78,7 +78,7 @@ create_db_cert_secret_and_configmap() {
         -subj "/CN=cluster.local" \
         > /dev/null
     chmod og-rwx ".tmp/tekton-results/ca.key"
-    openssl x509 -req -days 7 -text -extensions v3_ca \
+    openssl x509 -req -days 9999 -text -extensions v3_ca \
         -signkey ".tmp/tekton-results/ca.key" \
         -in ".tmp/tekton-results/ca.csr" \
         -extfile "/etc/ssl/openssl.cnf" \
@@ -91,7 +91,7 @@ create_db_cert_secret_and_configmap() {
         -keyout ".tmp/tekton-results/tls.key" \
         > /dev/null
     chmod og-rwx ".tmp/tekton-results/tls.key"
-    openssl x509 -req -text -days 7 -CAcreateserial \
+    openssl x509 -req -text -days 9999 -CAcreateserial \
         -extfile <(printf "subjectAltName=DNS:postgres-postgresql.tekton-results.svc.cluster.local") \
         -in ".tmp/tekton-results/tls.csr" \
         -CA ".tmp/tekton-results/ca.crt" \ 
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
<h3>3: Production changes from e506fb2a to 158ce646 on Mon Jul 1 12:45:35 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 60459450..ec80f286 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+    newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-e506fb2a/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
528c528
<         image: quay.io/konflux-ci/mintmaker:ffb703d40e031d2915b25b9b73c860f0b41e36a6
---
>         image: quay.io/konflux-ci/mintmaker:54105346eaeaf885969e5e4f5e47c0a9e0af99fb
./commit-e506fb2a/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
528c528
<         image: quay.io/konflux-ci/mintmaker:ffb703d40e031d2915b25b9b73c860f0b41e36a6
---
>         image: quay.io/konflux-ci/mintmaker:54105346eaeaf885969e5e4f5e47c0a9e0af99fb 
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
<h3>3: Staging changes from e506fb2a to 158ce646 on Mon Jul 1 12:45:35 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 60459450..ec80f286 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+    newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from e506fb2a to 158ce646 on Mon Jul 1 12:45:35 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/kustomization.yaml b/components/mintmaker/production/base/kustomization.yaml
index 60459450..ec80f286 100644
--- a/components/mintmaker/production/base/kustomization.yaml
+++ b/components/mintmaker/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
   - ../../base
   - ../../base/external-secrets
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
 namespace: mintmaker
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 54105346eaeaf885969e5e4f5e47c0a9e0af99fb
+    newTag: ffb703d40e031d2915b25b9b73c860f0b41e36a6
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 4cb50a81 to e506fb2a on Mon Jul 1 09:48:58 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index df5c461d..53694cb5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
+  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e09b76bf..40ff4206 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
+  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from 4cb50a81 to e506fb2a on Mon Jul 1 09:48:58 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index df5c461d..53694cb5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
+  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e09b76bf..40ff4206 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
+  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-4cb50a81/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
---
>         image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
---
>             image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41 
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
<h3>4: Development changes from 4cb50a81 to e506fb2a on Mon Jul 1 09:48:58 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index df5c461d..53694cb5 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
+  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index e09b76bf..40ff4206 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=60d590e7f217d831f6c16bb0ddce925c64c6ba41
+- https://github.com/konflux-ci/integration-service/config/default?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 60d590e7f217d831f6c16bb0ddce925c64c6ba41
+  newTag: 01dd602af0cd97c0d4d53d6b1b9e8785673cf100
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-4cb50a81/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
---
>         image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:01dd602af0cd97c0d4d53d6b1b9e8785673cf100
---
>             image: quay.io/redhat-appstudio/integration-service:60d590e7f217d831f6c16bb0ddce925c64c6ba41 
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
