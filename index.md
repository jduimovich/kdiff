# kustomize changes tracked by commits 
### This file generated at Tue Jan 23 12:05:10 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 63f74424 to c1a8bbb1 on Tue Jan 23 11:23:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 189a395b..50c60d57 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -4,12 +4,9 @@ metadata:
   name: tekton-ci-maintainers
   namespace: tekton-ci
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: psturc
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jinqi7
+    name: Build team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-63f74424/production/components/tekton-ci/production/kustomize.out.yaml
33,34c33,37
<   kind: Group
<   name: Build team
---
>   kind: User
>   name: psturc
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jinqi7 
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
<h3>1: Staging changes from 63f74424 to c1a8bbb1 on Tue Jan 23 11:23:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 189a395b..50c60d57 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -4,12 +4,9 @@ metadata:
   name: tekton-ci-maintainers
   namespace: tekton-ci
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: psturc
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jinqi7
+    name: Build team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-63f74424/staging/components/tekton-ci/staging/kustomize.out.yaml
33,34c33,37
<   kind: Group
<   name: Build team
---
>   kind: User
>   name: psturc
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: jinqi7 
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
<h3>1: Development changes from 63f74424 to c1a8bbb1 on Tue Jan 23 11:23:38 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
index 189a395b..50c60d57 100644
--- a/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
+++ b/components/tekton-ci/base/tekton-ci-maintainers-rb.yaml
@@ -4,12 +4,9 @@ metadata:
   name: tekton-ci-maintainers
   namespace: tekton-ci
 subjects:
-  - kind: User
+  - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: psturc
-  - kind: User
-    apiGroup: rbac.authorization.k8s.io
-    name: jinqi7
+    name: Build team
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole 
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
<h3>2: Production changes from f7e24241 to 63f74424 on Tue Jan 23 10:03:53 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
index 14d8b7da..3614bf97 100644
--- a/.tekton/build-service-prod-overlay-update.yaml
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -4,7 +4,7 @@ metadata:
   name: build-service-prod-overlay-update
   namespace: rhtap-promotion-staging
   annotations:
-     pipelinesascode.tekton.dev/on-cel-expression: |
+    pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
@@ -26,5 +26,3 @@ spec:
               sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/monitoring/grafana/base/dashboards/build-service/kustomization.yaml
         taskRef:
           name: promote-component
-        
-
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index 07eb7eb5..b38e36ee 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -4,7 +4,7 @@ metadata:
   name: image-controller-prod-overlay-update
   namespace: rhtap-promotion-staging
   annotations:
-     pipelinesascode.tekton.dev/on-cel-expression: |
+    pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
@@ -25,5 +25,3 @@ spec:
               sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
         taskRef:
           name: promote-component
-        
- 
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
<h3>2: Staging changes from f7e24241 to 63f74424 on Tue Jan 23 10:03:53 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
index 14d8b7da..3614bf97 100644
--- a/.tekton/build-service-prod-overlay-update.yaml
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -4,7 +4,7 @@ metadata:
   name: build-service-prod-overlay-update
   namespace: rhtap-promotion-staging
   annotations:
-     pipelinesascode.tekton.dev/on-cel-expression: |
+    pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
@@ -26,5 +26,3 @@ spec:
               sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/monitoring/grafana/base/dashboards/build-service/kustomization.yaml
         taskRef:
           name: promote-component
-        
-
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index 07eb7eb5..b38e36ee 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -4,7 +4,7 @@ metadata:
   name: image-controller-prod-overlay-update
   namespace: rhtap-promotion-staging
   annotations:
-     pipelinesascode.tekton.dev/on-cel-expression: |
+    pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
@@ -25,5 +25,3 @@ spec:
               sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
         taskRef:
           name: promote-component
-        
- 
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
<h3>2: Development changes from f7e24241 to 63f74424 on Tue Jan 23 10:03:53 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/.tekton/build-service-prod-overlay-update.yaml b/.tekton/build-service-prod-overlay-update.yaml
index 14d8b7da..3614bf97 100644
--- a/.tekton/build-service-prod-overlay-update.yaml
+++ b/.tekton/build-service-prod-overlay-update.yaml
@@ -4,7 +4,7 @@ metadata:
   name: build-service-prod-overlay-update
   namespace: rhtap-promotion-staging
   annotations:
-     pipelinesascode.tekton.dev/on-cel-expression: |
+    pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/build-service/staging/base/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
@@ -26,5 +26,3 @@ spec:
               sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/monitoring/grafana/base/dashboards/build-service/kustomization.yaml
         taskRef:
           name: promote-component
-        
-
diff --git a/.tekton/image-controller-prod-overlay-update.yaml b/.tekton/image-controller-prod-overlay-update.yaml
index 07eb7eb5..b38e36ee 100644
--- a/.tekton/image-controller-prod-overlay-update.yaml
+++ b/.tekton/image-controller-prod-overlay-update.yaml
@@ -4,7 +4,7 @@ metadata:
   name: image-controller-prod-overlay-update
   namespace: rhtap-promotion-staging
   annotations:
-     pipelinesascode.tekton.dev/on-cel-expression: |
+    pipelinesascode.tekton.dev/on-cel-expression: |
       event == "push" && target_branch == "main" && "components/image-controller/staging/kustomization.yaml".pathChanged()
     pipelinesascode.tekton.dev/max-keep-runs: "5"
     pipelinesascode.tekton.dev/task: "[.tekton/tasks/promote-component.yaml]"
@@ -25,5 +25,3 @@ spec:
               sed -i "s/$OLD_PROD_SHA/$STAGE_SHA/g" components/image-controller/production/kustomization.yaml
         taskRef:
           name: promote-component
-        
- 
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
<h3>3: Production changes from a4c52d69 to f7e24241 on Tue Jan 23 08:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1b041153..b9ccca7c 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
+- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: bbec36bdeeb982960017fae072fa9e978014c080
+  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 73c40457..bc9ef4d8 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
+- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: bbec36bdeeb982960017fae072fa9e978014c080
+  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
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
<h3>3: Staging changes from a4c52d69 to f7e24241 on Tue Jan 23 08:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1b041153..b9ccca7c 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
+- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: bbec36bdeeb982960017fae072fa9e978014c080
+  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 73c40457..bc9ef4d8 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
+- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: bbec36bdeeb982960017fae072fa9e978014c080
+  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a4c52d69/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
746c746
<         image: quay.io/redhat-appstudio/build-service:118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
---
>         image: quay.io/redhat-appstudio/build-service:bbec36bdeeb982960017fae072fa9e978014c080 
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
<h3>3: Development changes from a4c52d69 to f7e24241 on Tue Jan 23 08:38:11 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 1b041153..b9ccca7c 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
+- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: bbec36bdeeb982960017fae072fa9e978014c080
+  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 73c40457..bc9ef4d8 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=bbec36bdeeb982960017fae072fa9e978014c080
+- https://github.com/redhat-appstudio/build-service/config/default?ref=118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: bbec36bdeeb982960017fae072fa9e978014c080
+  newTag: 118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-a4c52d69/development/components/build-service/development/kustomize.out.yaml
753c753
<         image: quay.io/redhat-appstudio/build-service:118aeb4f8c1c9b187140d8dc17a8beeb4eab2581
---
>         image: quay.io/redhat-appstudio/build-service:bbec36bdeeb982960017fae072fa9e978014c080 
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
<h3>4: Production changes from b4c68568 to a4c52d69 on Mon Jan 22 17:07:02 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
index aa354cf5..2c86d554 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
index cd699274..7670f5a7 100644
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5c98dce1..38fa5b22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
index 87a0e75e..be62b7c8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
index 43f9044f..c2731fbd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 095d015d..0081246e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
index aba262a3..265ff842 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
index 3f69d937..da0494f6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
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
<h3>4: Staging changes from b4c68568 to a4c52d69 on Mon Jan 22 17:07:02 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
index aa354cf5..2c86d554 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
index cd699274..7670f5a7 100644
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5c98dce1..38fa5b22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
index 87a0e75e..be62b7c8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
index 43f9044f..c2731fbd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 095d015d..0081246e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
index aba262a3..265ff842 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
index 3f69d937..da0494f6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (28 lines)</summary>  

``` 
./commit-b4c68568/staging/components/gitops/staging/stone-stg-m01/kustomize.out.yaml
3372c3372
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
./commit-b4c68568/staging/components/gitops/staging/stone-stg-rh01/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
./commit-b4c68568/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1714c1714
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
1735c1735
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
./commit-b4c68568/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1714c1714
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
1735c1735
<       key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
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
<h3>4: Development changes from b4c68568 to a4c52d69 on Mon Jan 22 17:07:02 2024 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
index aa354cf5..2c86d554 100644
--- a/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-m01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-gitopsvc-rds
diff --git a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
index cd699274..7670f5a7 100644
--- a/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stg-rh01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 5c98dce1..38fa5b22 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
index 87a0e75e..be62b7c8 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
index 43f9044f..c2731fbd 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/multi-tenant-stg-plnsvc-s3
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 095d015d..0081246e 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1711,7 +1711,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1732,7 +1732,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
index aba262a3..265ff842 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-staging-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
index 3f69d937..da0494f6 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stonesoup-infra-stage/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres07ue1/stonesoup-infra-stage/redhat-stg-plnsvc-s3 
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
