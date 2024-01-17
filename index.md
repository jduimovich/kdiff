# kustomize changes tracked by commits 
### This file generated at Wed Jan 17 04:02:07 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 982f174f to e3fe5ace on Tue Jan 16 22:17:44 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/gitops-repo-pruner/OWNERS b/components/gitops-repo-pruner/OWNERS
deleted file mode 100644
index c3e0bd87..00000000
--- a/components/gitops-repo-pruner/OWNERS
+++ /dev/null
@@ -1,16 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- johnmcollier
-- yangcao77
-- maysunfaisal
-- kim-tsao
-- elsony
-
-reviewers:
-- johnmcollier
-- yangcao77
-- maysunfaisal
-- kim-tsao
-- elsony
-
diff --git a/components/gitops-repo-pruner/kustomization.yaml b/components/gitops-repo-pruner/kustomization.yaml
deleted file mode 100644
index 14f2a158..00000000
--- a/components/gitops-repo-pruner/kustomization.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-982f174f/production/components: gitops-repo-pruner 
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
<h3>1: Staging changes from 982f174f to e3fe5ace on Tue Jan 16 22:17:44 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/gitops-repo-pruner/OWNERS b/components/gitops-repo-pruner/OWNERS
deleted file mode 100644
index c3e0bd87..00000000
--- a/components/gitops-repo-pruner/OWNERS
+++ /dev/null
@@ -1,16 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- johnmcollier
-- yangcao77
-- maysunfaisal
-- kim-tsao
-- elsony
-
-reviewers:
-- johnmcollier
-- yangcao77
-- maysunfaisal
-- kim-tsao
-- elsony
-
diff --git a/components/gitops-repo-pruner/kustomization.yaml b/components/gitops-repo-pruner/kustomization.yaml
deleted file mode 100644
index 14f2a158..00000000
--- a/components/gitops-repo-pruner/kustomization.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-982f174f/staging/components: gitops-repo-pruner 
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
<h3>1: Development changes from 982f174f to e3fe5ace on Tue Jan 16 22:17:44 2024 </h3>  
 
<details> 
<summary>Git Diff (32 lines)</summary>  

``` 
diff --git a/components/gitops-repo-pruner/OWNERS b/components/gitops-repo-pruner/OWNERS
deleted file mode 100644
index c3e0bd87..00000000
--- a/components/gitops-repo-pruner/OWNERS
+++ /dev/null
@@ -1,16 +0,0 @@
-# See the OWNERS docs: https://go.k8s.io/owners
-
-approvers:
-- johnmcollier
-- yangcao77
-- maysunfaisal
-- kim-tsao
-- elsony
-
-reviewers:
-- johnmcollier
-- yangcao77
-- maysunfaisal
-- kim-tsao
-- elsony
-
diff --git a/components/gitops-repo-pruner/kustomization.yaml b/components/gitops-repo-pruner/kustomization.yaml
deleted file mode 100644
index 14f2a158..00000000
--- a/components/gitops-repo-pruner/kustomization.yaml
+++ /dev/null
@@ -1,3 +0,0 @@
-
-apiVersion: kustomize.config.k8s.io/v1beta1
-kind: Kustomization
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (1 lines)</summary>  

``` 
./commit-982f174f/development/components: gitops-repo-pruner 
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
<h3>2: Production changes from 8aab0f77 to 982f174f on Tue Jan 16 18:10:14 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-exporter-mem.yaml b/components/pipeline-service/production/base/bump-exporter-mem.yaml
new file mode 100644
index 00000000..7cf19058
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-exporter-mem.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/limits/memory
+  value: "1Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 176de5dc..e8516f8d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
   #     kind: Deployment
   #     name: pipeline-metrics-exporter
   #     namespace: openshift-pipelines
+  - path: bump-exporter-mem.yaml
+    target:
+      kind: Deployment
+      name: pipeline-metrics-exporter
+      namespace: openshift-pipelines
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 27226da5..7a22fccc 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1207,7 +1207,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1Gi
           requests:
             cpu: 250m
             memory: 128Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e3ced1cc..d7d3e3ed 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1207,7 +1207,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1Gi
           requests:
             cpu: 250m
             memory: 128Mi 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-8aab0f77/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1210c1210
<             memory: 1Gi
---
>             memory: 512Mi
./commit-8aab0f77/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1210c1210
<             memory: 1Gi
---
>             memory: 512Mi 
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
<h3>2: Staging changes from 8aab0f77 to 982f174f on Tue Jan 16 18:10:14 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-exporter-mem.yaml b/components/pipeline-service/production/base/bump-exporter-mem.yaml
new file mode 100644
index 00000000..7cf19058
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-exporter-mem.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/limits/memory
+  value: "1Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 176de5dc..e8516f8d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
   #     kind: Deployment
   #     name: pipeline-metrics-exporter
   #     namespace: openshift-pipelines
+  - path: bump-exporter-mem.yaml
+    target:
+      kind: Deployment
+      name: pipeline-metrics-exporter
+      namespace: openshift-pipelines
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 27226da5..7a22fccc 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1207,7 +1207,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1Gi
           requests:
             cpu: 250m
             memory: 128Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e3ced1cc..d7d3e3ed 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1207,7 +1207,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1Gi
           requests:
             cpu: 250m
             memory: 128Mi 
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
<h3>2: Development changes from 8aab0f77 to 982f174f on Tue Jan 16 18:10:14 2024 </h3>  
 
<details> 
<summary>Git Diff (53 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-exporter-mem.yaml b/components/pipeline-service/production/base/bump-exporter-mem.yaml
new file mode 100644
index 00000000..7cf19058
--- /dev/null
+++ b/components/pipeline-service/production/base/bump-exporter-mem.yaml
@@ -0,0 +1,4 @@
+---
+- op: replace
+  path: /spec/template/spec/containers/0/resources/limits/memory
+  value: "1Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 176de5dc..e8516f8d 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -20,6 +20,11 @@ patches:
   #     kind: Deployment
   #     name: pipeline-metrics-exporter
   #     namespace: openshift-pipelines
+  - path: bump-exporter-mem.yaml
+    target:
+      kind: Deployment
+      name: pipeline-metrics-exporter
+      namespace: openshift-pipelines
   - path: update-tekton-config-pac.yaml
     target:
       kind: TektonConfig
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 27226da5..7a22fccc 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1207,7 +1207,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1Gi
           requests:
             cpu: 250m
             memory: 128Mi
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index e3ced1cc..d7d3e3ed 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1207,7 +1207,7 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 512Mi
+            memory: 1Gi
           requests:
             cpu: 250m
             memory: 128Mi 
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
<h3>3: Production changes from 97ca3637 to 8aab0f77 on Tue Jan 16 17:18:13 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/greedy-pruner.yaml b/components/pipeline-service/staging/base/greedy-pruner.yaml
deleted file mode 100644
index 802c8c85..00000000
--- a/components/pipeline-service/staging/base/greedy-pruner.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/pruner/keep
-  value: 2
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3b42d3de..86268c09 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,10 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: greedy-pruner.yaml
-    target:
-      kind: TektonConfig
-      name: config
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index acd04240..eca8b475 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 6af9cb18..50cf8d99 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9de100b3..2bdc53b0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
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
<h3>3: Staging changes from 97ca3637 to 8aab0f77 on Tue Jan 16 17:18:13 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/greedy-pruner.yaml b/components/pipeline-service/staging/base/greedy-pruner.yaml
deleted file mode 100644
index 802c8c85..00000000
--- a/components/pipeline-service/staging/base/greedy-pruner.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/pruner/keep
-  value: 2
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3b42d3de..86268c09 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,10 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: greedy-pruner.yaml
-    target:
-      kind: TektonConfig
-      name: config
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index acd04240..eca8b475 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 6af9cb18..50cf8d99 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9de100b3..2bdc53b0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-97ca3637/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1894a1895
>     keep: 2
./commit-97ca3637/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1894a1895
>     keep: 2
./commit-97ca3637/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1894a1895
>     keep: 2 
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
<h3>3: Development changes from 97ca3637 to 8aab0f77 on Tue Jan 16 17:18:13 2024 </h3>  
 
<details> 
<summary>Git Diff (61 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/greedy-pruner.yaml b/components/pipeline-service/staging/base/greedy-pruner.yaml
deleted file mode 100644
index 802c8c85..00000000
--- a/components/pipeline-service/staging/base/greedy-pruner.yaml
+++ /dev/null
@@ -1,4 +0,0 @@
----
-- op: replace
-  path: /spec/pruner/keep
-  value: 2
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 3b42d3de..86268c09 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -15,10 +15,6 @@ resources:
   - ../../base/rbac
 
 patches:
-  - path: greedy-pruner.yaml
-    target:
-      kind: TektonConfig
-      name: config
   - path: metrics-exporter-trace.yaml
     target:
       kind: Deployment
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index acd04240..eca8b475 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 6af9cb18..50cf8d99 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9de100b3..2bdc53b0 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1892,7 +1892,6 @@ spec:
   profile: all
   pruner:
     disabled: true
-    keep: 2
   targetNamespace: openshift-pipelines
 ---
 apiVersion: operators.coreos.com/v1alpha1 
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
<h3>4: Production changes from 07dfa001 to 97ca3637 on Tue Jan 16 17:18:07 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 57d8ed54..2046bd85 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,4 +110,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a6abf9b3..46945111 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ed0cb3ca999a444536d7fffd0825c9bb3eca993
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
+      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (129 lines)</summary>  

``` 
./commit-07dfa001/production/components/enterprise-contract/kustomize.out.yaml
25,29c25,27
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
32,37c30,32
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
50,52c45,46
<                     description: |-
<                       Collections set of predefined rules.  DEPRECATED: Collections can be listed in include
<                       with the "@" prefix.
---
>                     description: 'Collections set of predefined rules.  DEPRECATED:
>                       Collections can be listed in include with the "@" prefix.'
58,60c52,53
<                     description: |-
<                       Exclude set of policy exclusions that, in case of failure, do not block
<                       the success of the outcome.
---
>                     description: Exclude set of policy exclusions that, in case of
>                       failure, do not block the success of the outcome.
66,68c59,60
<                     description: |-
<                       Include set of policy inclusions that are added to the policy evaluation.
<                       These override excluded rules.
---
>                     description: Include set of policy inclusions that are added to
>                       the policy evaluation. These override excluded rules.
86,88c78,79
<                     description: |-
<                       IssuerRegExp is a regular expression to match the URL of the certificate OIDC issuer for
<                       keyless verification.
---
>                     description: IssuerRegExp is a regular expression to match the
>                       URL of the certificate OIDC issuer for keyless verification.
95,97c86,87
<                     description: |-
<                       SubjectRegExp is a regular expression to match the URL of the certificate identity for
<                       keyless verification.
---
>                     description: SubjectRegExp is a regular expression to match the
>                       URL of the certificate identity for keyless verification.
118,120c108,109
<                       description: |-
<                         Config specifies which policy rules are included, or excluded, from the
<                         provided policy source urls.
---
>                       description: Config specifies which policy rules are included,
>                         or excluded, from the provided policy source urls.
123,125c112,113
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
---
>                           description: Exclude is a set of policy exclusions that,
>                             in case of failure, do not block the success of the outcome.
131,133c119,121
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
---
>                           description: Include is a set of policy inclusions that
>                             are added to the policy evaluation. These take precedence
>                             over policy exclusions.
159,161c147,148
<                       description: |-
<                         Specifies volatile configuration that can include or exclude policy rules
<                         based on effective time.
---
>                       description: Specifies volatile configuration that can include
>                         or exclude policy rules based on effective time.
164,166c151,152
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
---
>                           description: Exclude is a set of policy exclusions that,
>                             in case of failure, do not block the success of the outcome.
187,189c173,175
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
---
>                           description: Include is a set of policy inclusions that
>                             are added to the policy evaluation. These take precedence
>                             over policy exclusions.
376c362
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
378c364
<   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
---
>   verify_ec_task_git_revision: 2f65d22d006597d65f16318c821ad7d9ad7f9d96
611c597
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
635c621
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
659c645
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
686c672
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
712c698
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8 
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
<h3>4: Staging changes from 07dfa001 to 97ca3637 on Tue Jan 16 17:18:07 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 57d8ed54..2046bd85 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,4 +110,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a6abf9b3..46945111 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ed0cb3ca999a444536d7fffd0825c9bb3eca993
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
+      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (129 lines)</summary>  

``` 
./commit-07dfa001/staging/components/enterprise-contract/kustomize.out.yaml
25,29c25,27
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
32,37c30,32
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
50,52c45,46
<                     description: |-
<                       Collections set of predefined rules.  DEPRECATED: Collections can be listed in include
<                       with the "@" prefix.
---
>                     description: 'Collections set of predefined rules.  DEPRECATED:
>                       Collections can be listed in include with the "@" prefix.'
58,60c52,53
<                     description: |-
<                       Exclude set of policy exclusions that, in case of failure, do not block
<                       the success of the outcome.
---
>                     description: Exclude set of policy exclusions that, in case of
>                       failure, do not block the success of the outcome.
66,68c59,60
<                     description: |-
<                       Include set of policy inclusions that are added to the policy evaluation.
<                       These override excluded rules.
---
>                     description: Include set of policy inclusions that are added to
>                       the policy evaluation. These override excluded rules.
86,88c78,79
<                     description: |-
<                       IssuerRegExp is a regular expression to match the URL of the certificate OIDC issuer for
<                       keyless verification.
---
>                     description: IssuerRegExp is a regular expression to match the
>                       URL of the certificate OIDC issuer for keyless verification.
95,97c86,87
<                     description: |-
<                       SubjectRegExp is a regular expression to match the URL of the certificate identity for
<                       keyless verification.
---
>                     description: SubjectRegExp is a regular expression to match the
>                       URL of the certificate identity for keyless verification.
118,120c108,109
<                       description: |-
<                         Config specifies which policy rules are included, or excluded, from the
<                         provided policy source urls.
---
>                       description: Config specifies which policy rules are included,
>                         or excluded, from the provided policy source urls.
123,125c112,113
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
---
>                           description: Exclude is a set of policy exclusions that,
>                             in case of failure, do not block the success of the outcome.
131,133c119,121
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
---
>                           description: Include is a set of policy inclusions that
>                             are added to the policy evaluation. These take precedence
>                             over policy exclusions.
159,161c147,148
<                       description: |-
<                         Specifies volatile configuration that can include or exclude policy rules
<                         based on effective time.
---
>                       description: Specifies volatile configuration that can include
>                         or exclude policy rules based on effective time.
164,166c151,152
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
---
>                           description: Exclude is a set of policy exclusions that,
>                             in case of failure, do not block the success of the outcome.
187,189c173,175
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
---
>                           description: Include is a set of policy inclusions that
>                             are added to the policy evaluation. These take precedence
>                             over policy exclusions.
376c362
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
378c364
<   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
---
>   verify_ec_task_git_revision: 2f65d22d006597d65f16318c821ad7d9ad7f9d96
611c597
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
635c621
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
659c645
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
686c672
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
712c698
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8 
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
<h3>4: Development changes from 07dfa001 to 97ca3637 on Tue Jan 16 17:18:07 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 57d8ed54..2046bd85 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -44,7 +44,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -88,7 +88,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -110,4 +110,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index a6abf9b3..46945111 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=4ed0cb3ca999a444536d7fffd0825c9bb3eca993
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=1dc52afca1dbaead3e70a43ea122c2289ca95966
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -12,7 +12,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=2f65d22d006597d65f16318c821ad7d9ad7f9d96
+      - verify_ec_task_git_revision=499ef12d7cd9c229a9ade87403bd67c095ad69d9
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (129 lines)</summary>  

``` 
./commit-07dfa001/development/components/enterprise-contract/kustomize.out.yaml
25,29c25,27
<             description: |-
<               APIVersion defines the versioned schema of this representation of an object.
<               Servers should convert recognized schemas to the latest internal value, and
<               may reject unrecognized values.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
---
>             description: 'APIVersion defines the versioned schema of this representation
>               of an object. Servers should convert recognized schemas to the latest
>               internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources'
32,37c30,32
<             description: |-
<               Kind is a string value representing the REST resource this object represents.
<               Servers may infer this from the endpoint the client submits requests to.
<               Cannot be updated.
<               In CamelCase.
<               More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
---
>             description: 'Kind is a string value representing the REST resource this
>               object represents. Servers may infer this from the endpoint the client
>               submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds'
50,52c45,46
<                     description: |-
<                       Collections set of predefined rules.  DEPRECATED: Collections can be listed in include
<                       with the "@" prefix.
---
>                     description: 'Collections set of predefined rules.  DEPRECATED:
>                       Collections can be listed in include with the "@" prefix.'
58,60c52,53
<                     description: |-
<                       Exclude set of policy exclusions that, in case of failure, do not block
<                       the success of the outcome.
---
>                     description: Exclude set of policy exclusions that, in case of
>                       failure, do not block the success of the outcome.
66,68c59,60
<                     description: |-
<                       Include set of policy inclusions that are added to the policy evaluation.
<                       These override excluded rules.
---
>                     description: Include set of policy inclusions that are added to
>                       the policy evaluation. These override excluded rules.
86,88c78,79
<                     description: |-
<                       IssuerRegExp is a regular expression to match the URL of the certificate OIDC issuer for
<                       keyless verification.
---
>                     description: IssuerRegExp is a regular expression to match the
>                       URL of the certificate OIDC issuer for keyless verification.
95,97c86,87
<                     description: |-
<                       SubjectRegExp is a regular expression to match the URL of the certificate identity for
<                       keyless verification.
---
>                     description: SubjectRegExp is a regular expression to match the
>                       URL of the certificate identity for keyless verification.
118,120c108,109
<                       description: |-
<                         Config specifies which policy rules are included, or excluded, from the
<                         provided policy source urls.
---
>                       description: Config specifies which policy rules are included,
>                         or excluded, from the provided policy source urls.
123,125c112,113
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
---
>                           description: Exclude is a set of policy exclusions that,
>                             in case of failure, do not block the success of the outcome.
131,133c119,121
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
---
>                           description: Include is a set of policy inclusions that
>                             are added to the policy evaluation. These take precedence
>                             over policy exclusions.
159,161c147,148
<                       description: |-
<                         Specifies volatile configuration that can include or exclude policy rules
<                         based on effective time.
---
>                       description: Specifies volatile configuration that can include
>                         or exclude policy rules based on effective time.
164,166c151,152
<                           description: |-
<                             Exclude is a set of policy exclusions that, in case of failure, do not block
<                             the success of the outcome.
---
>                           description: Exclude is a set of policy exclusions that,
>                             in case of failure, do not block the success of the outcome.
187,189c173,175
<                           description: |-
<                             Include is a set of policy inclusions that are added to the policy evaluation.
<                             These take precedence over policy exclusions.
---
>                           description: Include is a set of policy inclusions that
>                             are added to the policy evaluation. These take precedence
>                             over policy exclusions.
376c362
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:499ef12d7cd9c229a9ade87403bd67c095ad69d9@sha256:778bd7a74a2909e608cd28f15f81078534e86ff99561a0b8fd2fdf01465de153
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:2f65d22d006597d65f16318c821ad7d9ad7f9d96@sha256:962693658bc1ab9e2efd726d34704ffd9ec0951d500f6be78a7bb1d7b3f88c81
378c364
<   verify_ec_task_git_revision: 499ef12d7cd9c229a9ade87403bd67c095ad69d9
---
>   verify_ec_task_git_revision: 2f65d22d006597d65f16318c821ad7d9ad7f9d96
611c597
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
635c621
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
659c645
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
686c672
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8
712c698
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-0d277bf@sha256:4a78622534901a4563cf5e52a79ca259ce7b6f571ccd0cc201876131742d6ce2
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-a35a607@sha256:e587432bf1ade7bfa1dd88a0472ca502929be9de2ff943518ac250bb699848a8 
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
