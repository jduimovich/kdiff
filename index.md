# kustomize changes tracked by commits 
### This file generated at Tue Apr 23 00:06:01 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a240a0d2 to 18b55966 on Mon Apr 22 19:50:35 2024 </h3>  
 
<details> 
<summary>Git Diff (67 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-exporter-mem.yaml b/components/pipeline-service/production/base/bump-exporter-mem.yaml
index ed264e35..dc0051e2 100644
--- a/components/pipeline-service/production/base/bump-exporter-mem.yaml
+++ b/components/pipeline-service/production/base/bump-exporter-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/0/resources/limits/memory
-  value: "3Gi"
+  value: "6Gi"
 - op: replace
   path: /spec/template/spec/containers/0/resources/requests/memory
-  value: "3Gi"
\ No newline at end of file
+  value: "6Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f66cf17f..62e8dde3 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index dfbac287..e1f3da19 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index f91d6585..b9808689 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (27 lines)</summary>  

``` 
./commit-a240a0d2/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1215c1215
<             memory: 6Gi
---
>             memory: 3Gi
1218c1218
<             memory: 6Gi
---
>             memory: 3Gi
./commit-a240a0d2/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1215c1215
<             memory: 6Gi
---
>             memory: 3Gi
1218c1218
<             memory: 6Gi
---
>             memory: 3Gi
./commit-a240a0d2/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1215c1215
<             memory: 6Gi
---
>             memory: 3Gi
1218c1218
<             memory: 6Gi
---
>             memory: 3Gi 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from a240a0d2 to 18b55966 on Mon Apr 22 19:50:35 2024 </h3>  
 
<details> 
<summary>Git Diff (67 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-exporter-mem.yaml b/components/pipeline-service/production/base/bump-exporter-mem.yaml
index ed264e35..dc0051e2 100644
--- a/components/pipeline-service/production/base/bump-exporter-mem.yaml
+++ b/components/pipeline-service/production/base/bump-exporter-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/0/resources/limits/memory
-  value: "3Gi"
+  value: "6Gi"
 - op: replace
   path: /spec/template/spec/containers/0/resources/requests/memory
-  value: "3Gi"
\ No newline at end of file
+  value: "6Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f66cf17f..62e8dde3 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index dfbac287..e1f3da19 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index f91d6585..b9808689 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true 
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
<h3>1: Development changes from a240a0d2 to 18b55966 on Mon Apr 22 19:50:35 2024 </h3>  
 
<details> 
<summary>Git Diff (67 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-exporter-mem.yaml b/components/pipeline-service/production/base/bump-exporter-mem.yaml
index ed264e35..dc0051e2 100644
--- a/components/pipeline-service/production/base/bump-exporter-mem.yaml
+++ b/components/pipeline-service/production/base/bump-exporter-mem.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/template/spec/containers/0/resources/limits/memory
-  value: "3Gi"
+  value: "6Gi"
 - op: replace
   path: /spec/template/spec/containers/0/resources/requests/memory
-  value: "3Gi"
\ No newline at end of file
+  value: "6Gi"
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f66cf17f..62e8dde3 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index dfbac287..e1f3da19 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index f91d6585..b9808689 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1212,10 +1212,10 @@ spec:
         resources:
           limits:
             cpu: 500m
-            memory: 3Gi
+            memory: 6Gi
           requests:
             cpu: 250m
-            memory: 3Gi
+            memory: 6Gi
         securityContext:
           readOnlyRootFilesystem: true
           runAsNonRoot: true 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from a0b10700 to a240a0d2 on Mon Apr 22 17:42:59 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 45b526fb..39373245 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=857aab5f1a0fe256fa28e351de06d2fa64c33947
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=857aab5f1a0fe256fa28e351de06d2fa64c33947
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 857aab5f1a0fe256fa28e351de06d2fa64c33947
+  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 857aab5f1a0fe256fa28e351de06d2fa64c33947
+  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-a0b10700/production/components/multi-platform-controller/production/kustomize.out.yaml
257c257
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:be9772a90f09736c7aef521d53c1eeb82aa671f7
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:857aab5f1a0fe256fa28e351de06d2fa64c33947
299c299
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:be9772a90f09736c7aef521d53c1eeb82aa671f7
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:857aab5f1a0fe256fa28e351de06d2fa64c33947
525d524
<       sudo restorecon -FRvv /home/$USERNAME/.ssh 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from a0b10700 to a240a0d2 on Mon Apr 22 17:42:59 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 45b526fb..39373245 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=857aab5f1a0fe256fa28e351de06d2fa64c33947
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=857aab5f1a0fe256fa28e351de06d2fa64c33947
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 857aab5f1a0fe256fa28e351de06d2fa64c33947
+  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 857aab5f1a0fe256fa28e351de06d2fa64c33947
+  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-a0b10700/staging/components/multi-platform-controller/staging/kustomize.out.yaml
247c247
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:be9772a90f09736c7aef521d53c1eeb82aa671f7
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:857aab5f1a0fe256fa28e351de06d2fa64c33947
289c289
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:be9772a90f09736c7aef521d53c1eeb82aa671f7
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:857aab5f1a0fe256fa28e351de06d2fa64c33947
469d468
<       sudo restorecon -FRvv /home/$USERNAME/.ssh 
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
<h3>2: Development changes from a0b10700 to a240a0d2 on Mon Apr 22 17:42:59 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index 45b526fb..39373245 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -3,17 +3,17 @@ kind: Kustomization
 
 resources:
 - allow-argocd-to-manage.yaml
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=857aab5f1a0fe256fa28e351de06d2fa64c33947
-- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=857aab5f1a0fe256fa28e351de06d2fa64c33947
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/operator?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
+- https://github.com/redhat-appstudio/multi-platform-controller/deploy/otp?ref=be9772a90f09736c7aef521d53c1eeb82aa671f7
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller
-  newTag: 857aab5f1a0fe256fa28e351de06d2fa64c33947
+  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
 - name: multi-platform-otp-server
   newName: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service
-  newTag: 857aab5f1a0fe256fa28e351de06d2fa64c33947
+  newTag: be9772a90f09736c7aef521d53c1eeb82aa671f7
 
 namespace: multi-platform-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (11 lines)</summary>  

``` 
./commit-a0b10700/development/components/multi-platform-controller/development/kustomize.out.yaml
209c209
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:be9772a90f09736c7aef521d53c1eeb82aa671f7
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-arch-controller:857aab5f1a0fe256fa28e351de06d2fa64c33947
251c251
<         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:be9772a90f09736c7aef521d53c1eeb82aa671f7
---
>         image: quay.io/redhat-user-workloads/rhtap-build-tenant/multi-arch-controller/multi-platform-controller-otp-service:857aab5f1a0fe256fa28e351de06d2fa64c33947
362d361
<       sudo restorecon -FRvv /home/$USERNAME/.ssh 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from fc458e47 to a0b10700 on Mon Apr 22 16:02:57 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index e762cd1c..46ddc25e 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
+    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
index f198b1fa..b9a0a0b8 100644
--- a/components/quality-dashboard/base/dex/kustomization.yaml
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0b072313be6e68ea933f0189242f966f0a42a807
+- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 8c921cfb..946770e9 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -7,4 +7,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
+    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from fc458e47 to a0b10700 on Mon Apr 22 16:02:57 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index e762cd1c..46ddc25e 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
+    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
index f198b1fa..b9a0a0b8 100644
--- a/components/quality-dashboard/base/dex/kustomization.yaml
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0b072313be6e68ea933f0189242f966f0a42a807
+- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 8c921cfb..946770e9 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -7,4 +7,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
+    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fc458e47/staging/components/quality-dashboard/staging/kustomize.out.yaml
182c182
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:0909a2826e9d66cdf42b35ef8069f8ce1216859a
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
307c307
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:0909a2826e9d66cdf42b35ef8069f8ce1216859a
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9 
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
<h3>3: Development changes from fc458e47 to a0b10700 on Mon Apr 22 16:02:57 2024 </h3>  
 
<details> 
<summary>Git Diff (50 lines)</summary>  

``` 
diff --git a/components/quality-dashboard/base/backend/kustomization.yaml b/components/quality-dashboard/base/backend/kustomization.yaml
index e762cd1c..46ddc25e 100644
--- a/components/quality-dashboard/base/backend/kustomization.yaml
+++ b/components/quality-dashboard/base/backend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+- https://github.com/redhat-appstudio/quality-dashboard/backend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -8,4 +8,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-backend
     newName: quay.io/redhat-appstudio/quality-dashboard-backend
-    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
+    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file
diff --git a/components/quality-dashboard/base/dex/kustomization.yaml b/components/quality-dashboard/base/dex/kustomization.yaml
index f198b1fa..b9a0a0b8 100644
--- a/components/quality-dashboard/base/dex/kustomization.yaml
+++ b/components/quality-dashboard/base/dex/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0b072313be6e68ea933f0189242f966f0a42a807
+- https://github.com/redhat-appstudio/quality-dashboard/dex/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
\ No newline at end of file
diff --git a/components/quality-dashboard/base/frontend/kustomization.yaml b/components/quality-dashboard/base/frontend/kustomization.yaml
index 8c921cfb..946770e9 100644
--- a/components/quality-dashboard/base/frontend/kustomization.yaml
+++ b/components/quality-dashboard/base/frontend/kustomization.yaml
@@ -1,5 +1,5 @@
 resources:
-- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
+- https://github.com/redhat-appstudio/quality-dashboard/frontend/deploy/base?ref=0909a2826e9d66cdf42b35ef8069f8ce1216859a
 
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
@@ -7,4 +7,4 @@ kind: Kustomization
 images:
   - name: quay.io/redhat-appstudio/quality-dashboard-frontend
     newName: quay.io/redhat-appstudio/quality-dashboard-frontend
-    newTag: e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
\ No newline at end of file
+    newTag: 0909a2826e9d66cdf42b35ef8069f8ce1216859a
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-fc458e47/development/components/quality-dashboard/development/kustomize.out.yaml
151c151
<         image: quay.io/redhat-appstudio/quality-dashboard-backend:0909a2826e9d66cdf42b35ef8069f8ce1216859a
---
>         image: quay.io/redhat-appstudio/quality-dashboard-backend:e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9
276c276
<         image: quay.io/redhat-appstudio/quality-dashboard-frontend:0909a2826e9d66cdf42b35ef8069f8ce1216859a
---
>         image: quay.io/redhat-appstudio/quality-dashboard-frontend:e82bf3ad53b9a75af8acad6f3dd17f9dd5d860a9 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from d4354855 to fc458e47 on Mon Apr 22 15:18:19 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 36456382..0076bab6 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from d4354855 to fc458e47 on Mon Apr 22 15:18:19 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 36456382..0076bab6 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16 
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
<h3>4: Development changes from d4354855 to fc458e47 on Mon Apr 22 15:18:19 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
index 36456382..0076bab6 100644
--- a/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/integration/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=c0eece85870ab816ab3637ca4d08b3dae76ad556
+  - https://github.com/redhat-appstudio/integration-service/config/grafana/?ref=91fb6c73fd6e988c12bd2b50fb05d0d353db1a16 
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
```
 
</details> 
<br> 


</div>
