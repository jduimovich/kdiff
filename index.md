# kustomize changes tracked by commits 
### This file generated at Wed Jan 17 16:04:43 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 1d00f85a to 690f0bed on Wed Jan 17 15:51:22 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/sandbox/base/kustomization.yaml b/components/sandbox/base/kustomization.yaml
index af7550d5..b2d378a8 100644
--- a/components/sandbox/base/kustomization.yaml
+++ b/components/sandbox/base/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- ./monitoring/sandbox-registration-service-proxy.yaml
diff --git a/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml
deleted file mode 100644
index 98c781f9..00000000
--- a/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  namespace: toolchain-host-operator
-  name: sandbox-registration-service-proxy
-  labels:
-    prometheus: appstudio-workload
-spec:
-  endpoints:
-    - interval: 15s
-      scheme: http
-      path: /metrics
-      port: proxy-metrics
-  selector:
-    matchLabels:
-      run: proxy-metrics
-
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
new file mode 100644
index 00000000..6c25d593
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
@@ -0,0 +1,55 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+  namespace: toolchain-host-operator
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  namespace: toolchain-host-operator
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: registration-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-registration-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: registration-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: toolchain-host-operator
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: sandbox-registration-service-proxy
+  namespace: toolchain-host-operator
+spec:
+  endpoints:
+    - interval: 15s
+      scheme: http
+      path: /metrics
+      port: proxy-metrics
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+  selector:
+    matchLabels:
+      run: proxy-metrics
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
<h3>1: Staging changes from 1d00f85a to 690f0bed on Wed Jan 17 15:51:22 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/sandbox/base/kustomization.yaml b/components/sandbox/base/kustomization.yaml
index af7550d5..b2d378a8 100644
--- a/components/sandbox/base/kustomization.yaml
+++ b/components/sandbox/base/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- ./monitoring/sandbox-registration-service-proxy.yaml
diff --git a/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml
deleted file mode 100644
index 98c781f9..00000000
--- a/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  namespace: toolchain-host-operator
-  name: sandbox-registration-service-proxy
-  labels:
-    prometheus: appstudio-workload
-spec:
-  endpoints:
-    - interval: 15s
-      scheme: http
-      path: /metrics
-      port: proxy-metrics
-  selector:
-    matchLabels:
-      run: proxy-metrics
-
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
new file mode 100644
index 00000000..6c25d593
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
@@ -0,0 +1,55 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+  namespace: toolchain-host-operator
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  namespace: toolchain-host-operator
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: registration-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-registration-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: registration-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: toolchain-host-operator
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: sandbox-registration-service-proxy
+  namespace: toolchain-host-operator
+spec:
+  endpoints:
+    - interval: 15s
+      scheme: http
+      path: /metrics
+      port: proxy-metrics
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+  selector:
+    matchLabels:
+      run: proxy-metrics
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
<h3>1: Development changes from 1d00f85a to 690f0bed on Wed Jan 17 15:51:22 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/sandbox/base/kustomization.yaml b/components/sandbox/base/kustomization.yaml
index af7550d5..b2d378a8 100644
--- a/components/sandbox/base/kustomization.yaml
+++ b/components/sandbox/base/kustomization.yaml
@@ -3,4 +3,3 @@ kind: Kustomization
 resources:
 - ./rbac
 - ./olm-restart
-- ./monitoring/sandbox-registration-service-proxy.yaml
diff --git a/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml
deleted file mode 100644
index 98c781f9..00000000
--- a/components/sandbox/base/monitoring/sandbox-registration-service-proxy.yaml
+++ /dev/null
@@ -1,17 +0,0 @@
-apiVersion: monitoring.coreos.com/v1
-kind: ServiceMonitor
-metadata:
-  namespace: toolchain-host-operator
-  name: sandbox-registration-service-proxy
-  labels:
-    prometheus: appstudio-workload
-spec:
-  endpoints:
-    - interval: 15s
-      scheme: http
-      path: /metrics
-      port: proxy-metrics
-  selector:
-    matchLabels:
-      run: proxy-metrics
-
diff --git a/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
new file mode 100644
index 00000000..6c25d593
--- /dev/null
+++ b/components/sandbox/toolchain-host-operator/base/monitoring/sandbox-registration-service-proxy.yaml
@@ -0,0 +1,55 @@
+apiVersion: v1
+kind: ServiceAccount
+metadata:
+  name: metrics-reader
+  namespace: toolchain-host-operator
+---
+apiVersion: v1
+kind: Secret
+metadata:
+  name: metrics-reader
+  namespace: toolchain-host-operator
+  annotations:
+    kubernetes.io/service-account.name: metrics-reader
+type: kubernetes.io/service-account-token
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRole
+metadata:
+  name: registration-service-metrics-reader
+rules:
+- nonResourceURLs:
+  - /metrics
+  verbs:
+  - get
+---
+apiVersion: rbac.authorization.k8s.io/v1
+kind: ClusterRoleBinding
+metadata:
+  name: prometheus-registration-service-metrics-reader
+roleRef:
+  apiGroup: rbac.authorization.k8s.io
+  kind: ClusterRole
+  name: registration-service-metrics-reader
+subjects:
+- kind: ServiceAccount
+  name: metrics-reader
+  namespace: toolchain-host-operator
+---
+apiVersion: monitoring.coreos.com/v1
+kind: ServiceMonitor
+metadata:
+  name: sandbox-registration-service-proxy
+  namespace: toolchain-host-operator
+spec:
+  endpoints:
+    - interval: 15s
+      scheme: http
+      path: /metrics
+      port: proxy-metrics
+    bearerTokenSecret:
+      name: "metrics-reader"
+      key: token
+  selector:
+    matchLabels:
+      run: proxy-metrics
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
<h3>2: Production changes from 03702f89 to 1d00f85a on Wed Jan 17 14:45:25 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 8b3e558d..21350ab7 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: application-service
-spec:
-  url: "https://github.com/redhat-appstudio/application-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-03702f89/production/components/tekton-ci/production/kustomize.out.yaml
241a242,250
>   name: application-service
> spec:
>   url: https://github.com/redhat-appstudio/application-service
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 03702f89 to 1d00f85a on Wed Jan 17 14:45:25 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 8b3e558d..21350ab7 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: application-service
-spec:
-  url: "https://github.com/redhat-appstudio/application-service"
----
-apiVersion: pipelinesascode.tekton.dev/v1alpha1
-kind: Repository
 metadata:
   name: application-api
 spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-03702f89/staging/components/tekton-ci/staging/kustomize.out.yaml
201a202,210
>   name: application-service
> spec:
>   url: https://github.com/redhat-appstudio/application-service
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 03702f89 to 1d00f85a on Wed Jan 17 14:45:25 2024 </h3>  
 
<details> 
<summary>Git Diff (18 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/repository.yaml b/components/tekton-ci/base/repository.yaml
index 8b3e558d..21350ab7 100644
--- a/components/tekton-ci/base/repository.yaml
+++ b/components/tekton-ci/base/repository.yaml
@@ -15,13 +15,6 @@ spec:
 ---
 apiVersion: pipelinesascode.tekton.dev/v1alpha1
 kind: Repository
-metadata:
-  name: application-service
-spec:
-  url: "https://github.com/redhat-appstudio/application-service"
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 20309c15 to 03702f89 on Wed Jan 17 13:00:39 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8ea4ff09..0a49ea10 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=45f788bbf54a77f50bcb2390545b383de6eff7b8
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=552d67764087321a7a64348ba657161a3febd0bb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 45f788bbf54a77f50bcb2390545b383de6eff7b8
+  newTag: 552d67764087321a7a64348ba657161a3febd0bb
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 80a325b0..16ef6dd0 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=45f788bbf54a77f50bcb2390545b383de6eff7b8
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=552d67764087321a7a64348ba657161a3febd0bb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 45f788bbf54a77f50bcb2390545b383de6eff7b8
+  newTag: 552d67764087321a7a64348ba657161a3febd0bb
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 20309c15 to 03702f89 on Wed Jan 17 13:00:39 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8ea4ff09..0a49ea10 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=45f788bbf54a77f50bcb2390545b383de6eff7b8
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=552d67764087321a7a64348ba657161a3febd0bb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 45f788bbf54a77f50bcb2390545b383de6eff7b8
+  newTag: 552d67764087321a7a64348ba657161a3febd0bb
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 80a325b0..16ef6dd0 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=45f788bbf54a77f50bcb2390545b383de6eff7b8
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=552d67764087321a7a64348ba657161a3febd0bb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 45f788bbf54a77f50bcb2390545b383de6eff7b8
+  newTag: 552d67764087321a7a64348ba657161a3febd0bb
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-20309c15/staging/components/integration/staging/kustomize.out.yaml
1129c1129
<         image: quay.io/redhat-appstudio/integration-service:552d67764087321a7a64348ba657161a3febd0bb
---
>         image: quay.io/redhat-appstudio/integration-service:45f788bbf54a77f50bcb2390545b383de6eff7b8 
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
<h3>3: Development changes from 20309c15 to 03702f89 on Wed Jan 17 13:00:39 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index 8ea4ff09..0a49ea10 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=45f788bbf54a77f50bcb2390545b383de6eff7b8
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=552d67764087321a7a64348ba657161a3febd0bb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 45f788bbf54a77f50bcb2390545b383de6eff7b8
+  newTag: 552d67764087321a7a64348ba657161a3febd0bb
 
 namespace: integration-service
 
diff --git a/components/integration/staging/kustomization.yaml b/components/integration/staging/kustomization.yaml
index 80a325b0..16ef6dd0 100644
--- a/components/integration/staging/kustomization.yaml
+++ b/components/integration/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=45f788bbf54a77f50bcb2390545b383de6eff7b8
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=552d67764087321a7a64348ba657161a3febd0bb
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 45f788bbf54a77f50bcb2390545b383de6eff7b8
+  newTag: 552d67764087321a7a64348ba657161a3febd0bb
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-20309c15/development/components/integration/development/kustomize.out.yaml
1129c1129
<         image: quay.io/redhat-appstudio/integration-service:552d67764087321a7a64348ba657161a3febd0bb
---
>         image: quay.io/redhat-appstudio/integration-service:45f788bbf54a77f50bcb2390545b383de6eff7b8 
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
<h3>4: Production changes from b8762c63 to 20309c15 on Wed Jan 17 08:33:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 0ae72a28..8a084819 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when: 
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
<h3>4: Staging changes from b8762c63 to 20309c15 on Wed Jan 17 08:33:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 0ae72a28..8a084819 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-b8762c63/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0 
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
<h3>4: Development changes from b8762c63 to 20309c15 on Wed Jan 17 08:33:53 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 0ae72a28..8a084819 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-b8762c63/development/components/build-service/development/kustomize.out.yaml
844c844
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
856c856
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
868c868
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0
880c880
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:88b5db85aa9d9faea12d2f89110a7ccd79db77a0 
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
