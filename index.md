# kustomize changes tracked by commits 
### This file generated at Sat Jan 13 00:06:57 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 19a845a4 to 756cc2d7 on Fri Jan 12 21:39:56 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/development/kustomization.yaml b/components/monitoring/logging/development/kustomization.yaml
index 4ea1bcca..e609fb24 100644
--- a/components/monitoring/logging/development/kustomization.yaml
+++ b/components/monitoring/logging/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+resources: [] 
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
<h3>1: Staging changes from 19a845a4 to 756cc2d7 on Fri Jan 12 21:39:56 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/development/kustomization.yaml b/components/monitoring/logging/development/kustomization.yaml
index 4ea1bcca..e609fb24 100644
--- a/components/monitoring/logging/development/kustomization.yaml
+++ b/components/monitoring/logging/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+resources: [] 
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
<h3>1: Development changes from 19a845a4 to 756cc2d7 on Fri Jan 12 21:39:56 2024 </h3>  
 
<details> 
<summary>Git Diff (9 lines)</summary>  

``` 
diff --git a/components/monitoring/logging/development/kustomization.yaml b/components/monitoring/logging/development/kustomization.yaml
index 4ea1bcca..e609fb24 100644
--- a/components/monitoring/logging/development/kustomization.yaml
+++ b/components/monitoring/logging/development/kustomization.yaml
@@ -1,2 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
+
+resources: [] 
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
<h3>2: Production changes from cd9c293d to 19a845a4 on Fri Jan 12 19:38:26 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 71faabe4..41788c6d 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
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
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 4620d416..94cf33e1 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   #value: 10
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f1ac2121..acd04240 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4e1c607..6af9cb18 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eaf4a3ce..9de100b3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from cd9c293d to 19a845a4 on Fri Jan 12 19:38:26 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 71faabe4..41788c6d 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
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
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 4620d416..94cf33e1 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   #value: 10
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f1ac2121..acd04240 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4e1c607..6af9cb18 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eaf4a3ce..9de100b3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-cd9c293d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1876c1876
<       buckets: 4
---
>       buckets: 1
1880c1880
<       replicas: 2
---
>       replicas: 1
./commit-cd9c293d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1876c1876
<       buckets: 4
---
>       buckets: 1
1880c1880
<       replicas: 2
---
>       replicas: 1
./commit-cd9c293d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1876c1876
<       buckets: 4
---
>       buckets: 1
1880c1880
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from cd9c293d to 19a845a4 on Fri Jan 12 19:38:26 2024 </h3>  
 
<details> 
<summary>Git Diff (98 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 71faabe4..41788c6d 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
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
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 4620d416..94cf33e1 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -16,4 +16,14 @@
   # default upstream setting
   #value: 10
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
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f1ac2121..acd04240 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4e1c607..6af9cb18 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index eaf4a3ce..9de100b3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1873,11 +1873,11 @@ spec:
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
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-cd9c293d/development/components/pipeline-service/development/kustomize.out.yaml
2008c2008
<       buckets: 4
---
>       buckets: 1
2012c2012
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 6e0a01f5 to cd9c293d on Fri Jan 12 17:46:22 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 91b827ad..aa682463 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 1bc970e2..4f16f731 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
 
 namespace: image-controller
  
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
<h3>3: Staging changes from 6e0a01f5 to cd9c293d on Fri Jan 12 17:46:22 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 91b827ad..aa682463 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 1bc970e2..4f16f731 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (208 lines)</summary>  

``` 
./commit-6e0a01f5/staging/components/image-controller/staging/kustomize.out.yaml
443,445d442
<     import itertools
<     import json
<     import logging
446a444
>     import logging
448,453c446
< 
<     from collections.abc import Iterator
<     from http.client import HTTPResponse
<     from typing import Any, Dict, List
<     from urllib.parse import urlencode
<     from urllib.request import Request, urlopen
---
>     import requests
461,464c454
<     processed_repos_counter = itertools.count()
< 
< 
<     ImageRepo = Dict[str, Any]
---
>     PROCESSED_REPOS = 0
467,496c457,463
<     def get_quay_repo(quay_token: str, namespace: str, name: str) -> ImageRepo:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}"
<         request = Request(api_url, headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         with urlopen(request) as resp:
<             if resp.status != 200:
<                 raise RuntimeError(resp.reason)
<             return json.loads(resp.read())
< 
< 
<     def delete_image_tag(quay_token: str, namespace: str, name: str, tag: str) -> None:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/{tag}"
<         request = Request(api_url, method="DELETE", headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         with urlopen(request) as resp:
<             if resp.status != 200 and resp.status != 204:
<                 raise RuntimeError(resp.reason)
< 
< 
<     def remove_tags(tags: Dict[str, Any], quay_token: str, namespace: str, name: str, dry_run: bool = False) -> None:
<         image_digests = [image["manifest_digest"] for image in tags.values()]
<         tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att)$")
<         for tag in tags:
<             # attestation or sbom image
<             if (match := tag_regex.match(tag)) is not None:
<                 if f"sha256:{match.group(1)}" not in image_digests:
---
>     def remove_images(images, session, repository, dry_run=False):
>         image_digests = [image["manifest_digest"] for image in images.values()]
>         for image in images:
>             # attribute or sbom image
>             if image.endswith(".att") or image.endswith(".sbom"):
>                 sha = re.search("sha256-(.*)(.sbom|.att)", image).group(1)
>                 if f"sha256:{sha}" not in image_digests:
498c465
<                         LOGGER.info("Image %s from %s/%s should be removed", tag, namespace, name)
---
>                         LOGGER.info("Image %s from %s should be removed", image, repository)
500,542c467,491
<                         LOGGER.info("Removing image %s from %s/%s", tag, namespace, name)
<                         delete_image_tag(quay_token, namespace, name, tag)
<             else:
<                 LOGGER.debug("%s is not an image with suffix .att or .sbom", tag)
< 
< 
<     def process_repositories(repos: List[ImageRepo], quay_token: str, dry_run: bool = False) -> None:
<         for repo in repos:
<             namespace = repo["namespace"]
<             name = repo["name"]
<             LOGGER.info("Processing repository %s: %s/%s", next(processed_repos_counter), namespace, name)
<             repo_info = get_quay_repo(quay_token, namespace, name)
<             if (tags := repo_info.get("tags")) is not None:
<                 remove_tags(tags, quay_token, namespace, name, dry_run=dry_run)
< 
< 
<     def fetch_image_repos(access_token: str, namespace: str) -> Iterator[List[ImageRepo]]:
<         next_page = None
<         resp: HTTPResponse
<         while True:
<             query_args = {"namespace": namespace}
<             if next_page is not None:
<                 query_args["next_page"] = next_page
< 
<             api_url = f"{QUAY_API_URL}/repository?{urlencode(query_args)}"
<             request = Request(api_url, headers={
<                 "Authorization": f"Bearer {access_token}",
<             })
< 
<             with urlopen(request) as resp:
<                 if resp.status != 200:
<                     raise RuntimeError(resp.reason)
<                 json_data = json.loads(resp.read())
< 
<             repos = json_data.get("repositories", [])
<             if not repos:
<                 LOGGER.debug("No image repository is found.")
<                 break
< 
<             yield repos
< 
<             if (next_page := json_data.get("next_page", None)) is None:
<                 break
---
>                         LOGGER.info("Removing image %s from %s", image, repository)
>                         delete_image_endpoint = (
>                             f"{QUAY_API_URL}/repository/{repository}/tag/{image}"
>                         )
>                         response = session.delete(delete_image_endpoint)
>                         response.raise_for_status()
> 
> 
>     def process_repositories(repositories, session, dry_run=False):
>         global PROCESSED_REPOS
> 
>         for repo in repositories:
>             repository = f"{repo['namespace']}/{repo['name']}"
> 
>             PROCESSED_REPOS += 1
>             LOGGER.info("Processing repository %s: %s", PROCESSED_REPOS, repository)
> 
>             repository_endpoint = f"{QUAY_API_URL}/repository/{repository}"
>             response = session.get(repository_endpoint)
>             response.raise_for_status()
>             repository_json = response.json()
> 
>             images = repository_json.get("tags")
>             if images:
>                 remove_images(images, session, repository, dry_run=dry_run)
552,553c501,523
<         for image_repos in fetch_image_repos(token, args.namespace):
<             process_repositories(image_repos, token, dry_run=args.dry_run)
---
>         session = requests.Session()
>         session.headers = {"Authorization": f"Bearer {token}"}
>         session.params = {"namespace": args.namespace}
>         repositories_endpoint = f"{QUAY_API_URL}/repository"
> 
>         response = session.get(repositories_endpoint)
>         response.raise_for_status()
>         resp_json = response.json()
> 
>         repositories = resp_json.get("repositories")
>         next_page = resp_json.get("next_page")
> 
>         if repositories:
>             process_repositories(repositories, session, dry_run=args.dry_run)
> 
>         while next_page:
>             response = session.get(repositories_endpoint, params={"next_page": next_page})
>             response.raise_for_status()
>             resp_json = response.json()
> 
>             repositories = resp_json.get("repositories")
>             next_page = resp_json.get("next_page")
>             process_repositories(repositories, session, dry_run=args.dry_run)
565a536
>   requirements.txt: requests
568c539
<   name: image-controller-image-pruner-configmap-5848ggd264
---
>   name: image-controller-image-pruner-configmap-8d96cbt85m
640c611
<         image: quay.io/redhat-appstudio/image-controller:889c0b1d674feb10123817a4270d0b4cfe39636e
---
>         image: quay.io/redhat-appstudio/image-controller:73747651941a35a4f4e1047688f0ca3487893eee
709a681,682
>   annotations:
>     ignore-check.kube-linter.io/no-read-only-root-fs: image pruner writes to disk
722c695,696
<             - python /image-pruner/prune_images.py --namespace $(NAMESPACE)
---
>             - pip install -r /image-pruner/requirements.txt && python /image-pruner/prune_images.py
>               --namespace $(NAMESPACE)
744,745d717
<             securityContext:
<               readOnlyRootFilesystem: true
754c726
<               name: image-controller-image-pruner-configmap-5848ggd264
---
>               name: image-controller-image-pruner-configmap-8d96cbt85m
781,799d752
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: image-controller-controller-manager-metrics-monitor
<   namespace: image-controller
< spec:
<   endpoints:
<   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
<h3>3: Development changes from 6e0a01f5 to cd9c293d on Fri Jan 12 17:46:22 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index 91b827ad..aa682463 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/kustomization.yaml b/components/image-controller/staging/kustomization.yaml
index 1bc970e2..4f16f731 100644
--- a/components/image-controller/staging/kustomization.yaml
+++ b/components/image-controller/staging/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=73747651941a35a4f4e1047688f0ca3487893eee
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=889c0b1d674feb10123817a4270d0b4cfe39636e
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 73747651941a35a4f4e1047688f0ca3487893eee
+  newTag: 889c0b1d674feb10123817a4270d0b4cfe39636e
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (209 lines)</summary>  

``` 
./commit-6e0a01f5/development/components/image-controller/development/kustomize.out.yaml
443,445d442
<     import itertools
<     import json
<     import logging
446a444
>     import logging
448,453c446
< 
<     from collections.abc import Iterator
<     from http.client import HTTPResponse
<     from typing import Any, Dict, List
<     from urllib.parse import urlencode
<     from urllib.request import Request, urlopen
---
>     import requests
461,462c454
<     processed_repos_counter = itertools.count()
< 
---
>     PROCESSED_REPOS = 0
464d455
<     ImageRepo = Dict[str, Any]
466,496c457,463
< 
<     def get_quay_repo(quay_token: str, namespace: str, name: str) -> ImageRepo:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}"
<         request = Request(api_url, headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         with urlopen(request) as resp:
<             if resp.status != 200:
<                 raise RuntimeError(resp.reason)
<             return json.loads(resp.read())
< 
< 
<     def delete_image_tag(quay_token: str, namespace: str, name: str, tag: str) -> None:
<         api_url = f"{QUAY_API_URL}/repository/{namespace}/{name}/tag/{tag}"
<         request = Request(api_url, method="DELETE", headers={
<             "Authorization": f"Bearer {quay_token}",
<         })
<         resp: HTTPResponse
<         with urlopen(request) as resp:
<             if resp.status != 200 and resp.status != 204:
<                 raise RuntimeError(resp.reason)
< 
< 
<     def remove_tags(tags: Dict[str, Any], quay_token: str, namespace: str, name: str, dry_run: bool = False) -> None:
<         image_digests = [image["manifest_digest"] for image in tags.values()]
<         tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att)$")
<         for tag in tags:
<             # attestation or sbom image
<             if (match := tag_regex.match(tag)) is not None:
<                 if f"sha256:{match.group(1)}" not in image_digests:
---
>     def remove_images(images, session, repository, dry_run=False):
>         image_digests = [image["manifest_digest"] for image in images.values()]
>         for image in images:
>             # attribute or sbom image
>             if image.endswith(".att") or image.endswith(".sbom"):
>                 sha = re.search("sha256-(.*)(.sbom|.att)", image).group(1)
>                 if f"sha256:{sha}" not in image_digests:
498c465
<                         LOGGER.info("Image %s from %s/%s should be removed", tag, namespace, name)
---
>                         LOGGER.info("Image %s from %s should be removed", image, repository)
500,542c467,491
<                         LOGGER.info("Removing image %s from %s/%s", tag, namespace, name)
<                         delete_image_tag(quay_token, namespace, name, tag)
<             else:
<                 LOGGER.debug("%s is not an image with suffix .att or .sbom", tag)
< 
< 
<     def process_repositories(repos: List[ImageRepo], quay_token: str, dry_run: bool = False) -> None:
<         for repo in repos:
<             namespace = repo["namespace"]
<             name = repo["name"]
<             LOGGER.info("Processing repository %s: %s/%s", next(processed_repos_counter), namespace, name)
<             repo_info = get_quay_repo(quay_token, namespace, name)
<             if (tags := repo_info.get("tags")) is not None:
<                 remove_tags(tags, quay_token, namespace, name, dry_run=dry_run)
< 
< 
<     def fetch_image_repos(access_token: str, namespace: str) -> Iterator[List[ImageRepo]]:
<         next_page = None
<         resp: HTTPResponse
<         while True:
<             query_args = {"namespace": namespace}
<             if next_page is not None:
<                 query_args["next_page"] = next_page
< 
<             api_url = f"{QUAY_API_URL}/repository?{urlencode(query_args)}"
<             request = Request(api_url, headers={
<                 "Authorization": f"Bearer {access_token}",
<             })
< 
<             with urlopen(request) as resp:
<                 if resp.status != 200:
<                     raise RuntimeError(resp.reason)
<                 json_data = json.loads(resp.read())
< 
<             repos = json_data.get("repositories", [])
<             if not repos:
<                 LOGGER.debug("No image repository is found.")
<                 break
< 
<             yield repos
< 
<             if (next_page := json_data.get("next_page", None)) is None:
<                 break
---
>                         LOGGER.info("Removing image %s from %s", image, repository)
>                         delete_image_endpoint = (
>                             f"{QUAY_API_URL}/repository/{repository}/tag/{image}"
>                         )
>                         response = session.delete(delete_image_endpoint)
>                         response.raise_for_status()
> 
> 
>     def process_repositories(repositories, session, dry_run=False):
>         global PROCESSED_REPOS
> 
>         for repo in repositories:
>             repository = f"{repo['namespace']}/{repo['name']}"
> 
>             PROCESSED_REPOS += 1
>             LOGGER.info("Processing repository %s: %s", PROCESSED_REPOS, repository)
> 
>             repository_endpoint = f"{QUAY_API_URL}/repository/{repository}"
>             response = session.get(repository_endpoint)
>             response.raise_for_status()
>             repository_json = response.json()
> 
>             images = repository_json.get("tags")
>             if images:
>                 remove_images(images, session, repository, dry_run=dry_run)
552,553c501,523
<         for image_repos in fetch_image_repos(token, args.namespace):
<             process_repositories(image_repos, token, dry_run=args.dry_run)
---
>         session = requests.Session()
>         session.headers = {"Authorization": f"Bearer {token}"}
>         session.params = {"namespace": args.namespace}
>         repositories_endpoint = f"{QUAY_API_URL}/repository"
> 
>         response = session.get(repositories_endpoint)
>         response.raise_for_status()
>         resp_json = response.json()
> 
>         repositories = resp_json.get("repositories")
>         next_page = resp_json.get("next_page")
> 
>         if repositories:
>             process_repositories(repositories, session, dry_run=args.dry_run)
> 
>         while next_page:
>             response = session.get(repositories_endpoint, params={"next_page": next_page})
>             response.raise_for_status()
>             resp_json = response.json()
> 
>             repositories = resp_json.get("repositories")
>             next_page = resp_json.get("next_page")
>             process_repositories(repositories, session, dry_run=args.dry_run)
565a536
>   requirements.txt: requests
568c539
<   name: image-controller-image-pruner-configmap-5848ggd264
---
>   name: image-controller-image-pruner-configmap-8d96cbt85m
641c612
<         image: quay.io/redhat-appstudio/image-controller:889c0b1d674feb10123817a4270d0b4cfe39636e
---
>         image: quay.io/redhat-appstudio/image-controller:73747651941a35a4f4e1047688f0ca3487893eee
710a682,683
>   annotations:
>     ignore-check.kube-linter.io/no-read-only-root-fs: image pruner writes to disk
723c696,697
<             - python /image-pruner/prune_images.py --namespace $(NAMESPACE)
---
>             - pip install -r /image-pruner/requirements.txt && python /image-pruner/prune_images.py
>               --namespace $(NAMESPACE)
745,746d718
<             securityContext:
<               readOnlyRootFilesystem: true
755c727
<               name: image-controller-image-pruner-configmap-5848ggd264
---
>               name: image-controller-image-pruner-configmap-8d96cbt85m
761,779d732
< ---
< apiVersion: monitoring.coreos.com/v1
< kind: ServiceMonitor
< metadata:
<   labels:
<     control-plane: controller-manager
<   name: image-controller-controller-manager-metrics-monitor
<   namespace: image-controller
< spec:
<   endpoints:
<   - bearerTokenFile: /var/run/secrets/kubernetes.io/serviceaccount/token
<     path: /metrics
<     port: https
<     scheme: https
<     tlsConfig:
<       insecureSkipVerify: true
<   selector:
<     matchLabels:
<       control-plane: controller-manager 
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
<h3>4: Production changes from c65bfded to 6e0a01f5 on Fri Jan 12 17:46:15 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a00fff83..a6abf9b3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -16,7 +16,3 @@ configMapGenerator:
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
       - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
-images:
-  - name: quay.io/redhat-appstudio/enterprise-contract-controller
-    newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 4ed0cb3ca999a444536d7fffd0825c9bb3eca993 
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
<h3>4: Staging changes from c65bfded to 6e0a01f5 on Fri Jan 12 17:46:15 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a00fff83..a6abf9b3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -16,7 +16,3 @@ configMapGenerator:
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
       - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
-images:
-  - name: quay.io/redhat-appstudio/enterprise-contract-controller
-    newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 4ed0cb3ca999a444536d7fffd0825c9bb3eca993 
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
<h3>4: Development changes from c65bfded to 6e0a01f5 on Fri Jan 12 17:46:15 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a00fff83..a6abf9b3 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -16,7 +16,3 @@ configMapGenerator:
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
       - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml
-images:
-  - name: quay.io/redhat-appstudio/enterprise-contract-controller
-    newName: quay.io/redhat-appstudio/enterprise-contract-controller
-    newTag: 4ed0cb3ca999a444536d7fffd0825c9bb3eca993 
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
