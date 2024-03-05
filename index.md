# kustomize changes tracked by commits 
### This file generated at Tue Mar  5 16:03:12 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 6c6ebd0e to 31632b29 on Tue Mar 5 15:46:53 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..6a08230d
--- /dev/null
+++ b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "4Gi"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/memory
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index aac55d59..43a8dced 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
@@ -38,3 +43,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -0,0 +1,13 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "-threadiness"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "32"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b293dda..9efbb43f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 487e89b0..a908a351 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c9398bca..08d2f704 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 6c6ebd0e to 31632b29 on Tue Mar 5 15:46:53 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..6a08230d
--- /dev/null
+++ b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "4Gi"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/memory
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index aac55d59..43a8dced 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
@@ -38,3 +43,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -0,0 +1,13 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "-threadiness"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "32"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b293dda..9efbb43f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 487e89b0..a908a351 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c9398bca..08d2f704 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (42 lines)</summary>  

``` 
./commit-6c6ebd0e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1476,1477d1475
<         - -threadiness
<         - "32"
1505c1503
<             memory: 4Gi
---
>             memory: 2Gi
1507,1508c1505,1506
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 64Mi
./commit-6c6ebd0e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1476,1477d1475
<         - -threadiness
<         - "32"
1505c1503
<             memory: 4Gi
---
>             memory: 2Gi
1507,1508c1505,1506
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
>             memory: 64Mi
./commit-6c6ebd0e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1476,1477d1475
<         - -threadiness
<         - "32"
1505c1503
<             memory: 4Gi
---
>             memory: 2Gi
1507,1508c1505,1506
<             cpu: 250m
<             memory: 4Gi
---
>             cpu: 100m
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 6c6ebd0e to 31632b29 on Tue Mar 5 15:46:53 2024 </h3>  
 
<details> 
<summary>Git Diff (141 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
new file mode 100644
index 00000000..6a08230d
--- /dev/null
+++ b/components/pipeline-service/staging/base/bump-results-watcher-mem.yaml
@@ -0,0 +1,7 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/memory
+  value: "4Gi"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/memory
+  value: "4Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index aac55d59..43a8dced 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
       kind: Deployment
       name: pipeline-metrics-exporter
       namespace: openshift-pipelines
+  - path: bump-results-watcher-mem.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
@@ -38,3 +43,8 @@ patches:
       kind: Deployment
       namespace: tekton-results
       name: tekton-results-watcher
+  - path: update-results-watcher-performance.yaml
+    target:
+      kind: Deployment
+      namespace: tekton-results
+      name: tekton-results-watcher
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-results-watcher-performance.yaml b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
new file mode 100644
index 00000000..aea590ed
--- /dev/null
+++ b/components/pipeline-service/staging/base/update-results-watcher-performance.yaml
@@ -0,0 +1,13 @@
+---
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "-threadiness"
+- op: add
+  path: /spec/template/spec/containers/1/args/-
+  value: "32"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/requests/cpu
+  value: "250m"
+- op: replace
+  path: /spec/template/spec/containers/1/resources/limits/cpu
+  value: "250m"
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1b293dda..9efbb43f 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 487e89b0..a908a351 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c9398bca..08d2f704 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1473,6 +1473,8 @@ spec:
         - -check_owner=false
         - -completed_run_grace_period
         - 10m
+        - -threadiness
+        - "32"
         env:
         - name: SYSTEM_NAMESPACE
           valueFrom:
@@ -1500,10 +1502,10 @@ spec:
         resources:
           limits:
             cpu: 250m
-            memory: 2Gi
+            memory: 4Gi
           requests:
-            cpu: 100m
-            memory: 64Mi
+            cpu: 250m
+            memory: 4Gi
         securityContext:
           allowPrivilegeEscalation: false
           capabilities: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 214005b1 to 6c6ebd0e on Tue Mar 5 12:01:12 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/OWNERS b/components/remote-secret-controller/OWNERS
index ac2205d1..8aeb4a61 100644
--- a/components/remote-secret-controller/OWNERS
+++ b/components/remote-secret-controller/OWNERS
@@ -3,9 +3,7 @@
 approvers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
 
 reviewers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
diff --git a/components/spi/OWNERS b/components/spi/OWNERS
index ac2205d1..8aeb4a61 100644
--- a/components/spi/OWNERS
+++ b/components/spi/OWNERS
@@ -3,9 +3,7 @@
 approvers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
 
 reviewers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 214005b1 to 6c6ebd0e on Tue Mar 5 12:01:12 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/OWNERS b/components/remote-secret-controller/OWNERS
index ac2205d1..8aeb4a61 100644
--- a/components/remote-secret-controller/OWNERS
+++ b/components/remote-secret-controller/OWNERS
@@ -3,9 +3,7 @@
 approvers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
 
 reviewers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
diff --git a/components/spi/OWNERS b/components/spi/OWNERS
index ac2205d1..8aeb4a61 100644
--- a/components/spi/OWNERS
+++ b/components/spi/OWNERS
@@ -3,9 +3,7 @@
 approvers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
 
 reviewers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla 
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
<h3>2: Development changes from 214005b1 to 6c6ebd0e on Tue Mar 5 12:01:12 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/OWNERS b/components/remote-secret-controller/OWNERS
index ac2205d1..8aeb4a61 100644
--- a/components/remote-secret-controller/OWNERS
+++ b/components/remote-secret-controller/OWNERS
@@ -3,9 +3,7 @@
 approvers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
 
 reviewers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
diff --git a/components/spi/OWNERS b/components/spi/OWNERS
index ac2205d1..8aeb4a61 100644
--- a/components/spi/OWNERS
+++ b/components/spi/OWNERS
@@ -3,9 +3,7 @@
 approvers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla
 
 reviewers:
 - skabashnyuk
 - mshaposhnik
-- mmulholla 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 9e25b1f7 to 214005b1 on Tue Mar 5 11:47:25 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index e3599430..da3de760 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - ../../base
 - ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (35 lines)</summary>  

``` 
./commit-9e25b1f7/production/components/integration/production/stone-prod-p01/kustomize.out.yaml
1258,1290d1257
< apiVersion: batch/v1
< kind: CronJob
< metadata:
<   name: integration-service-snapshot-garbage-collector
<   namespace: integration-service
< spec:
<   jobTemplate:
<     spec:
<       template:
<         spec:
<           containers:
<           - command:
<             - /snapshotgc
<             - --zap-log-level=debug
<             - --pr-snapshots-to-keep=100
<             - --non-pr-snapshots-to-keep=700
<             image: quay.io/redhat-appstudio/integration-service:b37833f64c8017c942ba95ca648d3b880b39af62
<             imagePullPolicy: Always
<             name: test-gc
<             resources:
<               limits:
<                 cpu: 1000m
<                 memory: 500Mi
<               requests:
<                 cpu: 1000m
<                 memory: 500Mi
<             securityContext:
<               readOnlyRootFilesystem: true
<               runAsNonRoot: true
<           restartPolicy: Never
<           serviceAccountName: integration-service-snapshot-garbage-collector
<   schedule: 0 5 * * *
< --- 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 9e25b1f7 to 214005b1 on Tue Mar 5 11:47:25 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index e3599430..da3de760 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - ../../base
 - ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service 
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
<h3>3: Development changes from 9e25b1f7 to 214005b1 on Tue Mar 5 11:47:25 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/integration/production/base/kustomization.yaml b/components/integration/production/base/kustomization.yaml
index e3599430..da3de760 100644
--- a/components/integration/production/base/kustomization.yaml
+++ b/components/integration/production/base/kustomization.yaml
@@ -4,6 +4,7 @@ resources:
 - ../../base
 - ../../base/external-secrets
 - https://github.com/redhat-appstudio/integration-service/config/default?ref=b37833f64c8017c942ba95ca648d3b880b39af62
+- https://github.com/redhat-appstudio/integration-service/config/snapshotgc?ref=f7bb0788791c37b7a82a98555dc710d434e36a56
 
 images:
 - name: quay.io/redhat-appstudio/integration-service 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from ef466d77 to 9e25b1f7 on Tue Mar 5 10:08:26 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 5f4bbe72..880c6428 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 39f837e3..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2981ac570764e7ad954ab7e97bcaa7c2fed15ceb
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=f1fdfbde74a46100854c3528db0795f7b949eb15
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-ef466d77/production/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: f1fdfbde74a46100854c3528db0795f7b949eb15
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from ef466d77 to 9e25b1f7 on Tue Mar 5 10:08:26 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 5f4bbe72..880c6428 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 39f837e3..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2981ac570764e7ad954ab7e97bcaa7c2fed15ceb
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=f1fdfbde74a46100854c3528db0795f7b949eb15
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-ef466d77/staging/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: f1fdfbde74a46100854c3528db0795f7b949eb15
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378 
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
<h3>4: Development changes from ef466d77 to 9e25b1f7 on Tue Mar 5 10:08:26 2024 </h3>  
 
<details> 
<summary>Git Diff (78 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 5f4bbe72..880c6428 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,7 +110,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -129,4 +129,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 39f837e3..fd36c31f 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=2981ac570764e7ad954ab7e97bcaa7c2fed15ceb
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9611ee13a47265fd26b26a7c38d7b759708a6aff
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=f1fdfbde74a46100854c3528db0795f7b949eb15
+      - verify_ec_task_git_revision=007593d8afd87f5ee612d7d2cc1adf8ae474bb75
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (33 lines)</summary>  

``` 
./commit-ef466d77/development/components/enterprise-contract/kustomize.out.yaml
376c376
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:007593d8afd87f5ee612d7d2cc1adf8ae474bb75@sha256:bf6f20badff9cd473b607c96d3125b40a30e3cd564efe450837f486d6ffbb05a
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:f1fdfbde74a46100854c3528db0795f7b949eb15@sha256:bfa038ebb99229bddf98b0f50cb90b78c525163a95039f5120098872e3964b3e
378c378
<   verify_ec_task_git_revision: 007593d8afd87f5ee612d7d2cc1adf8ae474bb75
---
>   verify_ec_task_git_revision: f1fdfbde74a46100854c3528db0795f7b949eb15
612c612
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
637c637
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
661c661
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
688c688
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378
707c707
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-fe45153@sha256:0ec4be1ec7c841af09e7b368ff1978d271d7a426946846c9fb38ef9be17f9616
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-e381903@sha256:594b2d4a807eeef8fdc8bf547b33a42c2fbf41007f3359106aa12a969058b736
733c733
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-fe45153@sha256:94b62b263b947a762b08d5aa2715f37ff3ba25ff7462850dba9d9a8eec1b4c49
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a7f4cf4@sha256:1318e6900b9b03337ce003068e3927726f0afd8766e4d1358464a804fa733378 
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
```
 
</details> 
<br> 


</div>
