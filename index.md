# kustomize changes tracked by commits 
### This file generated at Fri Nov 15 20:05:07 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 10f96276 to 8475b04d on Fri Nov 15 13:53:47 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 8a98a81b..b7081580 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -25,3 +25,6 @@ patches:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/production/base/manager_resources_patch.yaml b/components/build-service/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9f39caaa..16f1d5ce 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -17,3 +17,6 @@ commonAnnotations:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/staging/base/manager_resources_patch.yaml b/components/build-service/staging/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/staging/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/image-controller/production/base/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/production/base/manager_resources_patch.yaml
+++ b/components/image-controller/production/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
 
diff --git a/components/image-controller/staging/base/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/staging/base/manager_resources_patch.yaml
+++ b/components/image-controller/staging/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-10f96276/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
573c573
<             memory: 2Gi
---
>             memory: 1024Mi
575,576c575,576
<             cpu: 250m
<             memory: 768Mi
---
>             cpu: 10m
>             memory: 64Mi
./commit-10f96276/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
573c573
<             memory: 2Gi
---
>             memory: 1024Mi
575,576c575,576
<             cpu: 250m
<             memory: 768Mi
---
>             cpu: 10m
>             memory: 64Mi
./commit-10f96276/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
1014,1015c1014,1015
<             cpu: 250m
<             memory: 1Gi
---
>             cpu: 100m
>             memory: 20Mi 
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
<h3>1: Staging changes from 10f96276 to 8475b04d on Fri Nov 15 13:53:47 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 8a98a81b..b7081580 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -25,3 +25,6 @@ patches:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/production/base/manager_resources_patch.yaml b/components/build-service/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9f39caaa..16f1d5ce 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -17,3 +17,6 @@ commonAnnotations:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/staging/base/manager_resources_patch.yaml b/components/build-service/staging/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/staging/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/image-controller/production/base/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/production/base/manager_resources_patch.yaml
+++ b/components/image-controller/production/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
 
diff --git a/components/image-controller/staging/base/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/staging/base/manager_resources_patch.yaml
+++ b/components/image-controller/staging/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-10f96276/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
573c573
<             memory: 2Gi
---
>             memory: 1024Mi
575,576c575,576
<             cpu: 250m
<             memory: 768Mi
---
>             cpu: 10m
>             memory: 64Mi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 10f96276 to 8475b04d on Fri Nov 15 13:53:47 2024 </h3>  
 
<details> 
<summary>Git Diff (94 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 8a98a81b..b7081580 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -25,3 +25,6 @@ patches:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/production/base/manager_resources_patch.yaml b/components/build-service/production/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/production/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9f39caaa..16f1d5ce 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -17,3 +17,6 @@ commonAnnotations:
 
 components:
   - ../../components/rh-certs
+
+patches:
+  - path: manager_resources_patch.yaml
diff --git a/components/build-service/staging/base/manager_resources_patch.yaml b/components/build-service/staging/base/manager_resources_patch.yaml
new file mode 100644
index 00000000..32205435
--- /dev/null
+++ b/components/build-service/staging/base/manager_resources_patch.yaml
@@ -0,0 +1,17 @@
+apiVersion: apps/v1
+kind: Deployment
+metadata:
+  name: build-service-controller-manager
+  namespace: build-service
+spec:
+  template:
+    spec:
+      containers:
+      - name: manager
+        resources:
+          limits:
+            cpu: 500m
+            memory: 2Gi
+          requests:
+            cpu: 250m
+            memory: 768Mi
diff --git a/components/image-controller/production/base/manager_resources_patch.yaml b/components/image-controller/production/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/production/base/manager_resources_patch.yaml
+++ b/components/image-controller/production/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
 
diff --git a/components/image-controller/staging/base/manager_resources_patch.yaml b/components/image-controller/staging/base/manager_resources_patch.yaml
index 972112ef..4063cedf 100644
--- a/components/image-controller/staging/base/manager_resources_patch.yaml
+++ b/components/image-controller/staging/base/manager_resources_patch.yaml
@@ -13,6 +13,6 @@ spec:
             cpu: 500m
             memory: 2Gi
           requests:
-            cpu: 100m
-            memory: 20Mi
+            cpu: 250m
+            memory: 1Gi
  
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
<h3>2: Production changes from 988f3bf6 to 10f96276 on Fri Nov 15 13:23:30 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 49fc8a86..925f6041 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -114,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"controller.tektonresolverframework.bundleresolver..*"}'
         - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}' 
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
<h3>2: Staging changes from 988f3bf6 to 10f96276 on Fri Nov 15 13:23:30 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 49fc8a86..925f6041 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -114,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"controller.tektonresolverframework.bundleresolver..*"}'
         - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}' 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 988f3bf6 to 10f96276 on Fri Nov 15 13:23:30 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
index 49fc8a86..925f6041 100644
--- a/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
+++ b/components/monitoring/prometheus/base/monitoringstack/monitoringstack.yaml
@@ -114,6 +114,7 @@ spec:
         - '{__name__="grpc_server_handling_seconds_bucket", namespace=~"tekton-results|openshift-pipelines"}'
         - '{__name__="controller_runtime_reconcile_errors_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="controller_runtime_reconcile_total", namespace!~".*-tenant|openshift-.*|kube-.*"}'
+        - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"controller.tektonresolverframework.bundleresolver..*"}'
         - '{__name__="kube_lease_owner", namespace="openshift-pipelines", lease=~"tekton-pipelines-controller.github.com.tektoncd.pipeline.pkg.reconciler..*"}'
         - '{__name__="kube_pod_status_unschedulable", namespace!~".*-tenant|openshift-.*|kube-.*"}'
         - '{__name__="kube_pod_container_status_restarts_total", namespace=~"openshift-pipelines|release-service"}' 
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
<h3>3: Production changes from 9fc375e3 to 988f3bf6 on Fri Nov 15 10:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index fde15b42..64c85ea4 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
+    newTag: f862243aef9a8540bade567fc8f1945a46970b31
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 1580026d..f7598a67 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+- https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
+  newTag: f862243aef9a8540bade567fc8f1945a46970b31
 
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
<h3>3: Staging changes from 9fc375e3 to 988f3bf6 on Fri Nov 15 10:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index fde15b42..64c85ea4 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
+    newTag: f862243aef9a8540bade567fc8f1945a46970b31
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 1580026d..f7598a67 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+- https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
+  newTag: f862243aef9a8540bade567fc8f1945a46970b31
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-9fc375e3/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
559,567d558
<       "lockFileMaintenance": {
<         "enabled": true,
<         "recreateWhen": "always",
<         "rebaseWhen": "behind-base-branch",
<         "branchTopic": "lock-file-maintenance",
<         "schedule": [
<           "at any time"
<         ]
<       },
792c783
<         image: quay.io/konflux-ci/mintmaker:f862243aef9a8540bade567fc8f1945a46970b31
---
>         image: quay.io/konflux-ci/mintmaker:645166dfaf1871be6501cbd2c176fa1f65e04863 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 9fc375e3 to 988f3bf6 on Fri Nov 15 10:43:58 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index fde15b42..64c85ea4 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
+    newTag: f862243aef9a8540bade567fc8f1945a46970b31
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 1580026d..f7598a67 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=645166dfaf1871be6501cbd2c176fa1f65e04863
+- https://github.com/konflux-ci/mintmaker/config/default?ref=f862243aef9a8540bade567fc8f1945a46970b31
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=f862243aef9a8540bade567fc8f1945a46970b31
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 645166dfaf1871be6501cbd2c176fa1f65e04863
+  newTag: f862243aef9a8540bade567fc8f1945a46970b31
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-9fc375e3/development/components/mintmaker/development/kustomize.out.yaml
559,567d558
<       "lockFileMaintenance": {
<         "enabled": true,
<         "recreateWhen": "always",
<         "rebaseWhen": "behind-base-branch",
<         "branchTopic": "lock-file-maintenance",
<         "schedule": [
<           "at any time"
<         ]
<       },
791c782
<         image: quay.io/konflux-ci/mintmaker:f862243aef9a8540bade567fc8f1945a46970b31
---
>         image: quay.io/konflux-ci/mintmaker:645166dfaf1871be6501cbd2c176fa1f65e04863 
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
<h3>4: Production changes from 3b1dc865 to 9fc375e3 on Thu Nov 14 21:05:29 2024 </h3>  
 
<details> 
<summary>Git Diff (196 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 72d36e5b..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1694,7 +1694,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -1709,7 +1709,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 5a5a691e..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c0cce49f..4e6cd249 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b7b81071..8e6454a5 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 7dd98c45..a6ee80df 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,18 +37,6 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index c849f373..46488583 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2222,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (19 lines)</summary>  

``` 
./commit-3b1dc865/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2210c2210
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
./commit-3b1dc865/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2210c2210
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
./commit-3b1dc865/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2208c2208
<   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
---
>   image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
2223c2223
<   channel: pipelines-5.0
---
>   channel: latest 
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
<h3>4: Staging changes from 3b1dc865 to 9fc375e3 on Thu Nov 14 21:05:29 2024 </h3>  
 
<details> 
<summary>Git Diff (196 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 72d36e5b..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1694,7 +1694,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -1709,7 +1709,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 5a5a691e..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c0cce49f..4e6cd249 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b7b81071..8e6454a5 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 7dd98c45..a6ee80df 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,18 +37,6 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index c849f373..46488583 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2222,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 3b1dc865 to 9fc375e3 on Thu Nov 14 21:05:29 2024 </h3>  
 
<details> 
<summary>Git Diff (196 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 72d36e5b..82c45934 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1694,7 +1694,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -1709,7 +1709,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 5a5a691e..00000000
--- a/components/pipeline-service/production/stone-prd-m01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index c0cce49f..4e6cd249 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index a0463243..8a915041 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -27,18 +27,6 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prd-rh01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index b7b81071..8e6454a5 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2209,7 +2209,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 7dd98c45..a6ee80df 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -37,18 +37,6 @@ patches:
     target:
       kind: TektonConfig
       name: config
-  - path: osp-nightly-version.yaml
-    target:
-      name: custom-operators
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: CatalogSource
-  - path: osp-nightly-channel.yaml
-    target:
-      name: openshift-pipelines-operator
-      group: operators.coreos.com
-      version: v1alpha1
-      kind: Subscription
   - path: osp-perf-resolvers.yaml
     target:
       name: config
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
deleted file mode 100644
index 16674495..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-channel.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-- op: replace
-  path: /spec/channel
-  value: pipelines-5.0
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml b/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
deleted file mode 100644
index 3794ca4e..00000000
--- a/components/pipeline-service/production/stone-prod-p01/resources/osp-nightly-version.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/image
-  value: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:7444d41ebe811a505866a99a92e24ca390677835dfdd597bed2e0b5d66780c5b
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index c849f373..46488583 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2207,7 +2207,7 @@ metadata:
   namespace: openshift-marketplace
 spec:
   displayName: custom-operators
-  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:8c7ba9a4cddfaba38872c5d93c5d9c88db36dd0eef44c6531d4246ff62c93d6e
+  image: quay.io/openshift-pipeline/openshift-pipelines-pipelines-operator-bundle-container-index@sha256:d34f2de74b26b384643b04e5b391dc3216289f7e351ca36e8b46e4d8b03e47ce
   sourceType: grpc
   updateStrategy:
     registryPoll:
@@ -2222,7 +2222,7 @@ metadata:
   name: openshift-pipelines-operator
   namespace: openshift-operators
 spec:
-  channel: latest
+  channel: pipelines-5.0
   name: openshift-pipelines-operator-rh
   source: custom-operators
   sourceNamespace: openshift-marketplace 
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
