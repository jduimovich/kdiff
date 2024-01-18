# kustomize changes tracked by commits 
### This file generated at Thu Jan 18 08:02:21 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from fc4e221d to 7cc42c2c on Wed Jan 17 18:50:09 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index c23eb649..d4511980 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-host-operator
 resources:
 - ../../base
 - ./rbac
+- ./monitoring
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml
new file mode 100644
index 00000000..32cd8c41
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: toolchain-host-operator
+resources:
+- sandbox-registration-service-proxy.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
index 6c25d593..e0a6dc89 100644
--- a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
@@ -47,9 +47,9 @@ spec:
       scheme: http
       path: /metrics
       port: proxy-metrics
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
+      bearerTokenSecret:
+        name: "metrics-reader"
+        key: token
   selector:
     matchLabels:
       run: proxy-metrics
\ No newline at end of file 
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
<h3>1: Staging changes from fc4e221d to 7cc42c2c on Wed Jan 17 18:50:09 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index c23eb649..d4511980 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-host-operator
 resources:
 - ../../base
 - ./rbac
+- ./monitoring
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml
new file mode 100644
index 00000000..32cd8c41
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: toolchain-host-operator
+resources:
+- sandbox-registration-service-proxy.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
index 6c25d593..e0a6dc89 100644
--- a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
@@ -47,9 +47,9 @@ spec:
       scheme: http
       path: /metrics
       port: proxy-metrics
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
+      bearerTokenSecret:
+        name: "metrics-reader"
+        key: token
   selector:
     matchLabels:
       run: proxy-metrics
\ No newline at end of file 
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
<h3>1: Development changes from fc4e221d to 7cc42c2c on Wed Jan 17 18:50:09 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/base/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
index c23eb649..d4511980 100644
--- a/components/sandbox/toolchain-host-operator/base/kustomization.yaml
+++ b/components/sandbox/toolchain-host-operator/base/kustomization.yaml
@@ -4,3 +4,4 @@ namespace: toolchain-host-operator
 resources:
 - ../../base
 - ./rbac
+- ./monitoring
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml
new file mode 100644
index 00000000..32cd8c41
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: toolchain-host-operator
+resources:
+- sandbox-registration-service-proxy.yaml
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
index 6c25d593..e0a6dc89 100644
--- a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
@@ -47,9 +47,9 @@ spec:
       scheme: http
       path: /metrics
       port: proxy-metrics
-    bearerTokenSecret:
-      name: "metrics-reader"
-      key: token
+      bearerTokenSecret:
+        name: "metrics-reader"
+        key: token
   selector:
     matchLabels:
       run: proxy-metrics
\ No newline at end of file 
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
<h3>2: Production changes from 13daa2ec to fc4e221d on Wed Jan 17 18:00:46 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 46346f71..f7d4d7d6 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   # value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7a22fccc..e3502cdb 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1872,11 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d7d3e3ed..0c9e74a8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1872,11 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (18 lines)</summary>  

``` 
./commit-13daa2ec/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1875c1875
<       buckets: 4
---
>       buckets: 1
1879c1879
<       replicas: 2
---
>       replicas: 1
./commit-13daa2ec/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1875c1875
<       buckets: 4
---
>       buckets: 1
1879c1879
<       replicas: 2
---
>       replicas: 1 
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
<h3>2: Staging changes from 13daa2ec to fc4e221d on Wed Jan 17 18:00:46 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 46346f71..f7d4d7d6 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   # value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7a22fccc..e3502cdb 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1872,11 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d7d3e3ed..0c9e74a8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1872,11 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift: 
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
<h3>2: Development changes from 13daa2ec to fc4e221d on Wed Jan 17 18:00:46 2024 </h3>  
 
<details> 
<summary>Git Diff (58 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 46346f71..f7d4d7d6 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   # value: 10
   # upstream large scale env recommendation
-  value: 50
\ No newline at end of file
+  value: 50
+- op: replace
+  path: /spec/pipeline/performance/buckets
+  # default pipeline-service setting is 1
+  # we make buckets twice the replica number per the
+  # convention adopted in https://github.com/openshift-pipelines/performance/blob/main/ci-scripts/setup-cluster.sh
+  value: 4
+- op: replace
+  path: /spec/pipeline/performance/replicas
+  # default pipeline-service setting is 1
+  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 7a22fccc..e3502cdb 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1872,11 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index d7d3e3ed..0c9e74a8 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1872,11 +1872,11 @@ spec:
     enable-hub-resolver: true
     enable-tekton-oci-bundles: true
     performance:
-      buckets: 1
+      buckets: 4
       disable-ha: false
       kube-api-burst: 50
       kube-api-qps: 50
-      replicas: 1
+      replicas: 2
       threads-per-controller: 32
   platforms:
     openshift: 
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
<h3>3: Production changes from d3741e9e to 13daa2ec on Wed Jan 17 18:00:38 2024 </h3>  
 
<details> 
<summary>Git Diff (85 lines)</summary>  

``` 
diff --git a/OWNERS b/OWNERS
index 228151f6..f6701f5a 100644
--- a/OWNERS
+++ b/OWNERS
@@ -2,7 +2,6 @@
 
 approvers:
 - jduimovich
-- sbose78
 - zregvart
 - simonbaird
 - johnmcollier
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
index 8e45f623..63a6a9ee 100644
--- a/components/authentication/base/group-sync/group-sync.yaml
+++ b/components/authentication/base/group-sync/group-sync.yaml
@@ -4,8 +4,8 @@ metadata:
   name: group-sync-operator-maintainers
   namespace: group-sync-operator
 subjects:
-  - kind: User
-    name: sbose78
+  - kind: Group
+    name: Infra Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index 5f863e4f..fca9525a 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,9 +4,6 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sbose78
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: johnmcollier
diff --git a/components/image-controller/base/OWNERS b/components/image-controller/base/OWNERS
index 853b2766..f3264bb7 100644
--- a/components/image-controller/base/OWNERS
+++ b/components/image-controller/base/OWNERS
@@ -5,10 +5,8 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- sbose78
 
 reviewers:
-- sbose78
 - mmorhun
 - tkdchen
 - mkosiarc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 24844681..c9c5d281 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -2,10 +2,8 @@
 
 approvers:
 - stuartwdouglas
-- sbose78
 - arewm
 
 reviewers:
-- sbose78
 - stuartwdouglas
 - arewm
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 9709b431..189a395b 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -4,9 +4,6 @@ metadata:
   name: tekton-ci-maintainers
   namespace: tekton-ci
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sbose78
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: psturc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-d3741e9e/production/components/authentication/production/kustomize.out.yaml
493,494c493,494
< - kind: Group
<   name: Infra Team
---
> - kind: User
>   name: sbose78
./commit-d3741e9e/production/components/has/production/kustomize.out.yaml
548a549,551
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
./commit-d3741e9e/production/components/tekton-ci/production/kustomize.out.yaml
33a34,36
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User 
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
<h3>3: Staging changes from d3741e9e to 13daa2ec on Wed Jan 17 18:00:38 2024 </h3>  
 
<details> 
<summary>Git Diff (85 lines)</summary>  

``` 
diff --git a/OWNERS b/OWNERS
index 228151f6..f6701f5a 100644
--- a/OWNERS
+++ b/OWNERS
@@ -2,7 +2,6 @@
 
 approvers:
 - jduimovich
-- sbose78
 - zregvart
 - simonbaird
 - johnmcollier
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
index 8e45f623..63a6a9ee 100644
--- a/components/authentication/base/group-sync/group-sync.yaml
+++ b/components/authentication/base/group-sync/group-sync.yaml
@@ -4,8 +4,8 @@ metadata:
   name: group-sync-operator-maintainers
   namespace: group-sync-operator
 subjects:
-  - kind: User
-    name: sbose78
+  - kind: Group
+    name: Infra Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index 5f863e4f..fca9525a 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,9 +4,6 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sbose78
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: johnmcollier
diff --git a/components/image-controller/base/OWNERS b/components/image-controller/base/OWNERS
index 853b2766..f3264bb7 100644
--- a/components/image-controller/base/OWNERS
+++ b/components/image-controller/base/OWNERS
@@ -5,10 +5,8 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- sbose78
 
 reviewers:
-- sbose78
 - mmorhun
 - tkdchen
 - mkosiarc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 24844681..c9c5d281 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -2,10 +2,8 @@
 
 approvers:
 - stuartwdouglas
-- sbose78
 - arewm
 
 reviewers:
-- sbose78
 - stuartwdouglas
 - arewm
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 9709b431..189a395b 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -4,9 +4,6 @@ metadata:
   name: tekton-ci-maintainers
   namespace: tekton-ci
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sbose78
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: psturc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-d3741e9e/staging/components/authentication/staging/kustomize.out.yaml
508,509c508,509
< - kind: Group
<   name: Infra Team
---
> - kind: User
>   name: sbose78
./commit-d3741e9e/staging/components/has/staging/kustomize.out.yaml
561a562,564
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
./commit-d3741e9e/staging/components/tekton-ci/staging/kustomize.out.yaml
33a34,36
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User 
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
<h3>3: Development changes from d3741e9e to 13daa2ec on Wed Jan 17 18:00:38 2024 </h3>  
 
<details> 
<summary>Git Diff (85 lines)</summary>  

``` 
diff --git a/OWNERS b/OWNERS
index 228151f6..f6701f5a 100644
--- a/OWNERS
+++ b/OWNERS
@@ -2,7 +2,6 @@
 
 approvers:
 - jduimovich
-- sbose78
 - zregvart
 - simonbaird
 - johnmcollier
diff --git a/components/authentication/base/group-sync/group-sync.yaml b/components/authentication/base/group-sync/group-sync.yaml
index 8e45f623..63a6a9ee 100644
--- a/components/authentication/base/group-sync/group-sync.yaml
+++ b/components/authentication/base/group-sync/group-sync.yaml
@@ -4,8 +4,8 @@ metadata:
   name: group-sync-operator-maintainers
   namespace: group-sync-operator
 subjects:
-  - kind: User
-    name: sbose78
+  - kind: Group
+    name: Infra Team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/has/base/rbac/has.yaml b/components/has/base/rbac/has.yaml
index 5f863e4f..fca9525a 100644
--- a/components/has/base/rbac/has.yaml
+++ b/components/has/base/rbac/has.yaml
@@ -4,9 +4,6 @@ metadata:
   name: application-service-maintainers
   namespace: application-service
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sbose78
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: johnmcollier
diff --git a/components/image-controller/base/OWNERS b/components/image-controller/base/OWNERS
index 853b2766..f3264bb7 100644
--- a/components/image-controller/base/OWNERS
+++ b/components/image-controller/base/OWNERS
@@ -5,10 +5,8 @@ approvers:
 - tkdchen
 - rcerven
 - mkosiarc
-- sbose78
 
 reviewers:
-- sbose78
 - mmorhun
 - tkdchen
 - mkosiarc
diff --git a/components/multi-platform-controller/OWNERS b/components/multi-platform-controller/OWNERS
index 24844681..c9c5d281 100644
--- a/components/multi-platform-controller/OWNERS
+++ b/components/multi-platform-controller/OWNERS
@@ -2,10 +2,8 @@
 
 approvers:
 - stuartwdouglas
-- sbose78
 - arewm
 
 reviewers:
-- sbose78
 - stuartwdouglas
 - arewm
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 9709b431..189a395b 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -4,9 +4,6 @@ metadata:
   name: tekton-ci-maintainers
   namespace: tekton-ci
 subjects:
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: sbose78
   - kind: User
     apiGroup: rbac.authorization.k8s.io
     name: psturc 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-d3741e9e/development/components/authentication/development/kustomize.out.yaml
521,522c521,522
< - kind: Group
<   name: Infra Team
---
> - kind: User
>   name: sbose78
./commit-d3741e9e/development/components/has/development/kustomize.out.yaml
542a543,545
>   name: sbose78
> - apiGroup: rbac.authorization.k8s.io
>   kind: User 
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
<h3>4: Production changes from 690f0bed to d3741e9e on Wed Jan 17 16:57:22 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index db375b94..80be00d8 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfdba1defa6d8b42adf343180431da6496841396
+    newTag: 2d425363673f7c798e29f186e27d24bb9704d004
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dc6c0e72..f097dbc6 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfdba1defa6d8b42adf343180431da6496841396
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=2d425363673f7c798e29f186e27d24bb9704d004
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfdba1defa6d8b42adf343180431da6496841396
+    newTag: 2d425363673f7c798e29f186e27d24bb9704d004
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 158d5177..c9273ed8 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b2f61059..e74bfe7b 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=2d425363673f7c798e29f186e27d24bb9704d004
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-690f0bed/production/components/has/production/kustomize.out.yaml
848c848
<         image: quay.io/redhat-appstudio/application-service:2d425363673f7c798e29f186e27d24bb9704d004
---
>         image: quay.io/redhat-appstudio/application-service:bfdba1defa6d8b42adf343180431da6496841396 
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
<h3>4: Staging changes from 690f0bed to d3741e9e on Wed Jan 17 16:57:22 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index db375b94..80be00d8 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfdba1defa6d8b42adf343180431da6496841396
+    newTag: 2d425363673f7c798e29f186e27d24bb9704d004
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dc6c0e72..f097dbc6 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfdba1defa6d8b42adf343180431da6496841396
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=2d425363673f7c798e29f186e27d24bb9704d004
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfdba1defa6d8b42adf343180431da6496841396
+    newTag: 2d425363673f7c798e29f186e27d24bb9704d004
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 158d5177..c9273ed8 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b2f61059..e74bfe7b 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=2d425363673f7c798e29f186e27d24bb9704d004
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-690f0bed/staging/components/has/staging/kustomize.out.yaml
874c874
<         image: quay.io/redhat-appstudio/application-service:2d425363673f7c798e29f186e27d24bb9704d004
---
>         image: quay.io/redhat-appstudio/application-service:bfdba1defa6d8b42adf343180431da6496841396 
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
<h3>4: Development changes from 690f0bed to d3741e9e on Wed Jan 17 16:57:22 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/has/base/kustomization.yaml b/components/has/base/kustomization.yaml
index db375b94..80be00d8 100644
--- a/components/has/base/kustomization.yaml
+++ b/components/has/base/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ./argocd-roles
   - ./rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 
 components:
@@ -13,7 +13,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfdba1defa6d8b42adf343180431da6496841396
+    newTag: 2d425363673f7c798e29f186e27d24bb9704d004
 
 configMapGenerator:
   - literals:
diff --git a/components/has/production/kustomization.yaml b/components/has/production/kustomization.yaml
index dc6c0e72..f097dbc6 100644
--- a/components/has/production/kustomization.yaml
+++ b/components/has/production/kustomization.yaml
@@ -4,8 +4,8 @@ resources:
   - ../base/argocd-roles
   - ../base/external-secrets
   - ../base/rbac
-  - https://github.com/redhat-appstudio/application-service/config/default?ref=bfdba1defa6d8b42adf343180431da6496841396
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/default?ref=2d425363673f7c798e29f186e27d24bb9704d004
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 components:
   - ../k-components/manager-resources
@@ -15,7 +15,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/application-service
     newName: quay.io/redhat-appstudio/application-service
-    newTag: bfdba1defa6d8b42adf343180431da6496841396
+    newTag: 2d425363673f7c798e29f186e27d24bb9704d004
 
 configMapGenerator:
   - literals:
diff --git a/components/has/staging/kustomization.yaml b/components/has/staging/kustomization.yaml
index 158d5177..c9273ed8 100644
--- a/components/has/staging/kustomization.yaml
+++ b/components/has/staging/kustomization.yaml
@@ -4,7 +4,7 @@ resources:
   - ../base
   - ../base/external-secrets
   - rbac
-  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/prometheus/?ref=2d425363673f7c798e29f186e27d24bb9704d004
 
 
 components:
diff --git a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
index b2f61059..e74bfe7b 100644
--- a/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/has/kustomization.yaml
@@ -1,5 +1,5 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=bfdba1defa6d8b42adf343180431da6496841396
+  - https://github.com/redhat-appstudio/application-service/config/monitoring/?ref=2d425363673f7c798e29f186e27d24bb9704d004
   - dashboard.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-690f0bed/development/components/has/development/kustomize.out.yaml
807c807
<         image: quay.io/redhat-appstudio/application-service:2d425363673f7c798e29f186e27d24bb9704d004
---
>         image: quay.io/redhat-appstudio/application-service:bfdba1defa6d8b42adf343180431da6496841396 
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
