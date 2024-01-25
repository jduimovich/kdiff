# kustomize changes tracked by commits 
### This file generated at Thu Jan 25 08:04:50 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from eaf411b5 to 44fb4cae on Thu Jan 25 06:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (265 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 3e2e469b..9b439b81 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -87,7 +87,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
index a9b04357..8a97a035 100644
--- a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
@@ -8,7 +8,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index ef701b44..032b03cb 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -9,7 +9,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/testing/rbac.yaml b/components/pipeline-service/base/testing/rbac.yaml
index ce5b840e..ccdf6322 100644
--- a/components/pipeline-service/base/testing/rbac.yaml
+++ b/components/pipeline-service/base/testing/rbac.yaml
@@ -29,7 +29,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 08631788..f4684e15 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 24be2b08..de5c012b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aadeafa8..a25eba6d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 38fa5b22..2cd4a696 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0081246e..4fd7a7a3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
index 2b309b89..a387417b 100644
--- a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
+++ b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   kind: ClusterRole
   name: view 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (39 lines)</summary>  

``` 
./commit-eaf411b5/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/production/components/sprayproxy/production/kustomize.out.yaml
70c70
<   name: konflux-pipeline-service
---
>   name: Pipeline Service 
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
<h3>1: Staging changes from eaf411b5 to 44fb4cae on Thu Jan 25 06:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (265 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 3e2e469b..9b439b81 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -87,7 +87,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
index a9b04357..8a97a035 100644
--- a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
@@ -8,7 +8,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index ef701b44..032b03cb 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -9,7 +9,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/testing/rbac.yaml b/components/pipeline-service/base/testing/rbac.yaml
index ce5b840e..ccdf6322 100644
--- a/components/pipeline-service/base/testing/rbac.yaml
+++ b/components/pipeline-service/base/testing/rbac.yaml
@@ -29,7 +29,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 08631788..f4684e15 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 24be2b08..de5c012b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aadeafa8..a25eba6d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 38fa5b22..2cd4a696 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0081246e..4fd7a7a3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
index 2b309b89..a387417b 100644
--- a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
+++ b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   kind: ClusterRole
   name: view 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (56 lines)</summary>  

``` 
./commit-eaf411b5/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
588c588
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
621c621
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
637c637
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
767c767
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
./commit-eaf411b5/staging/components/sprayproxy/staging/kustomize.out.yaml
70c70
<   name: konflux-pipeline-service
---
>   name: Pipeline Service 
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
<h3>1: Development changes from eaf411b5 to 44fb4cae on Thu Jan 25 06:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (265 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
index 3e2e469b..9b439b81 100644
--- a/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/cluster-role/pipeline-service-sre.yaml
@@ -87,7 +87,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
index a9b04357..8a97a035 100644
--- a/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/openshift-pipelines/pipeline-service-sre.yaml
@@ -8,7 +8,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
index ef701b44..032b03cb 100644
--- a/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
+++ b/components/pipeline-service/base/rbac/tekton-results/pipeline-service-sre.yaml
@@ -9,7 +9,7 @@ metadata:
 subjects:
   - apiGroup: rbac.authorization.k8s.io
     kind: Group
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/base/testing/rbac.yaml b/components/pipeline-service/base/testing/rbac.yaml
index ce5b840e..ccdf6322 100644
--- a/components/pipeline-service/base/testing/rbac.yaml
+++ b/components/pipeline-service/base/testing/rbac.yaml
@@ -29,7 +29,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   apiGroup: rbac.authorization.k8s.io
   kind: ClusterRole
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 08631788..f4684e15 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 24be2b08..de5c012b 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index aadeafa8..a25eba6d 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 38fa5b22..2cd4a696 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 0081246e..4fd7a7a3 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -585,7 +585,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -618,7 +618,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -634,7 +634,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
@@ -764,7 +764,7 @@ roleRef:
 subjects:
 - apiGroup: rbac.authorization.k8s.io
   kind: Group
-  name: Pipeline Service
+  name: konflux-pipeline-service
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: ClusterRoleBinding
diff --git a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
index 2b309b89..a387417b 100644
--- a/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
+++ b/components/sprayproxy/base/rbac/pipeline-service-sre.yaml
@@ -7,7 +7,7 @@ metadata:
 subjects:
   - kind: Group
     apiGroup: rbac.authorization.k8s.io
-    name: Pipeline Service
+    name: konflux-pipeline-service
 roleRef:
   kind: ClusterRole
   name: view 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-eaf411b5/development/components/pipeline-service/development/kustomize.out.yaml
605c605
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
638c638
<   name: konflux-pipeline-service
---
>   name: Pipeline Service
768c768
<   name: konflux-pipeline-service
---
>   name: Pipeline Service 
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
<h3>2: Production changes from 105b02a9 to eaf411b5 on Thu Jan 25 05:55:18 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 424b4f26..27bb5cb0 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -2,4 +2,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - ./results-cluster-viewer.yaml
diff --git a/components/authentication/staging/results-cluster-viewer.yaml b/components/authentication/staging/results-cluster-viewer.yaml
deleted file mode 100644
index 6f28405b..00000000
--- a/components/authentication/staging/results-cluster-viewer.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-rules:
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: results-cluster-viewer
-subjects:
-  - kind: User
-    name: gabemontero
-    apiGroup: rbac.authorization.k8s.io
-  - kind: User
-    name: sayan-biswas
-    apiGroup: rbac.authorization.k8s.io 
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
<h3>2: Staging changes from 105b02a9 to eaf411b5 on Thu Jan 25 05:55:18 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 424b4f26..27bb5cb0 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -2,4 +2,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - ./results-cluster-viewer.yaml
diff --git a/components/authentication/staging/results-cluster-viewer.yaml b/components/authentication/staging/results-cluster-viewer.yaml
deleted file mode 100644
index 6f28405b..00000000
--- a/components/authentication/staging/results-cluster-viewer.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-rules:
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: results-cluster-viewer
-subjects:
-  - kind: User
-    name: gabemontero
-    apiGroup: rbac.authorization.k8s.io
-  - kind: User
-    name: sayan-biswas
-    apiGroup: rbac.authorization.k8s.io 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (34 lines)</summary>  

``` 
./commit-105b02a9/staging/components/authentication/staging/kustomize.out.yaml
406a407,421
>   name: results-cluster-viewer
> rules:
> - apiGroups:
>   - results.tekton.dev
>   resources:
>   - results
>   - records
>   - logs
>   verbs:
>   - get
>   - list
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRole
> metadata:
572a588,603
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: ClusterRoleBinding
> metadata:
>   name: results-cluster-viewer
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: ClusterRole
>   name: results-cluster-viewer
> subjects:
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: gabemontero
> - apiGroup: rbac.authorization.k8s.io
>   kind: User
>   name: sayan-biswas 
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
<h3>2: Development changes from 105b02a9 to eaf411b5 on Thu Jan 25 05:55:18 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/kustomization.yaml
index 424b4f26..27bb5cb0 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/kustomization.yaml
@@ -2,4 +2,3 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - ./results-cluster-viewer.yaml
diff --git a/components/authentication/staging/results-cluster-viewer.yaml b/components/authentication/staging/results-cluster-viewer.yaml
deleted file mode 100644
index 6f28405b..00000000
--- a/components/authentication/staging/results-cluster-viewer.yaml
+++ /dev/null
@@ -1,30 +0,0 @@
-kind: ClusterRole
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-rules:
-  - apiGroups:
-      - results.tekton.dev
-    resources:
-      - results
-      - records
-      - logs
-    verbs:
-      - get
-      - list
----
-kind: ClusterRoleBinding
-apiVersion: rbac.authorization.k8s.io/v1
-metadata:
-  name: results-cluster-viewer
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: ClusterRole
-  name: results-cluster-viewer
-subjects:
-  - kind: User
-    name: gabemontero
-    apiGroup: rbac.authorization.k8s.io
-  - kind: User
-    name: sayan-biswas
-    apiGroup: rbac.authorization.k8s.io 
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
<h3>3: Production changes from 81ecb471 to 105b02a9 on Wed Jan 24 23:05:32 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index 4d67684a..a68b1c45 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index cc94de3b..5b9cf788 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
 patches:
   - path: auto-assign-role-patch.yaml
     target:
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3 
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
<h3>3: Staging changes from 81ecb471 to 105b02a9 on Wed Jan 24 23:05:32 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index 4d67684a..a68b1c45 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index cc94de3b..5b9cf788 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
 patches:
   - path: auto-assign-role-patch.yaml
     target:
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3 
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
<h3>3: Development changes from 81ecb471 to 105b02a9 on Wed Jan 24 23:05:32 2024 </h3>  
 
<details> 
<summary>Git Diff (55 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/kustomization.yaml b/components/monitoring/grafana/base/kustomization.yaml
index 4d67684a..a68b1c45 100644
--- a/components/monitoring/grafana/base/kustomization.yaml
+++ b/components/monitoring/grafana/base/kustomization.yaml
@@ -5,4 +5,3 @@ resources:
 - grafana-app.yaml
 - dashboards
 - https://github.com/redhat-appstudio/o11y/config/probes/monitoring/grafana/base?ref=ff478366bb92b0a9d7e4eb1625194e0cce138185
-- https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/development/kustomization.yaml b/components/monitoring/grafana/development/kustomization.yaml
index cc94de3b..5b9cf788 100644
--- a/components/monitoring/grafana/development/kustomization.yaml
+++ b/components/monitoring/grafana/development/kustomization.yaml
@@ -2,6 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
 patches:
   - path: auto-assign-role-patch.yaml
     target:
diff --git a/components/monitoring/grafana/production/kustomization.yaml b/components/monitoring/grafana/production/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/production/kustomization.yaml
+++ b/components/monitoring/grafana/production/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3
diff --git a/components/monitoring/grafana/staging/kustomization.yaml b/components/monitoring/grafana/staging/kustomization.yaml
index 27bb5cb0..afc8ae34 100644
--- a/components/monitoring/grafana/staging/kustomization.yaml
+++ b/components/monitoring/grafana/staging/kustomization.yaml
@@ -2,3 +2,9 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
+  - https://github.com/redhat-appstudio/o11y/config/exporters/monitoring/grafana/base?ref=8fe41bdea2c5d2616421b69e0bfa4544707828e3
+
+images:
+- name: quay.io/redhat-appstudio/o11y
+  newName: quay.io/redhat-appstudio/o11y
+  newTag: 8fe41bdea2c5d2616421b69e0bfa4544707828e3 
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
<h3>4: Production changes from b5699b23 to 81ecb471 on Wed Jan 24 20:45:16 2024 </h3>  
 
<details> 
<summary>Git Diff (202 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index a83c38fd..ff2bf202 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4"
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index edd6042d..99848b7b 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,49 +66,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-ppc64le-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-ppc64le-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-s390x-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index ab5ac9b6..4f3f4e11 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,38 +30,15 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  # host.ppc1.address: "150.240.147.198"
-  # host.ppc1.platform: "linux/ppc64le"
-  # host.ppc1.user: "root"
-  # host.ppc1.secret: "ibm-ssh-key"
-  # host.ppc1.concurrency: "4"
-
-  # host.ibmz1.address: "169.63.177.141"
-  # host.ibmz1.platform: "linux/s390x"
-  # host.ibmz1.user: "root"
-  # host.ibmz1.secret: "ibm-ssh-key"
-  # host.ibmz1.concurrency: "4"
-
-  host.power-rhtap-prod-1.address: "52.117.38.109"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
-
-  host.power-rhtap-prod-2.address: "52.117.38.109"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.ppc1.address: "150.240.147.198"
+  host.ppc1.platform: "linux/ppc64le"
+  host.ppc1.user: "root"
+  host.ppc1.secret: "ibm-ssh-key"
+  host.ppc1.concurrency: "4"
+
+  host.ibmz1.address: "169.63.177.141"
+  host.ibmz1.platform: "linux/s390x"
+  host.ibmz1.user: "root"
+  host.ibmz1.secret: "ibm-ssh-key"
+
+  host.ibmz1.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-b5699b23/production/components/multi-platform-controller/production/kustomize.out.yaml
155c155
<   host.power-rhtap-prod-1.address: 52.117.38.109
---
>   host.power-rhtap-prod-1.address: 150.240.147.196
158c158
<   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
---
>   host.power-rhtap-prod-1.secret: ibm-ssh-key
160c160
<   host.power-rhtap-prod-2.address: 52.117.38.109
---
>   host.power-rhtap-prod-2.address: 150.240.147.194
163c163
<   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
---
>   host.power-rhtap-prod-2.secret: ibm-ssh-key
165c165
<   host.sysz-rhtap-prod-1.address: 169.63.184.30
---
>   host.sysz-rhtap-prod-1.address: 169.59.160.96
168c168
<   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
---
>   host.sysz-rhtap-prod-1.secret: ibm-ssh-key
170c170
<   host.sysz-rhtap-prod-2.address: 169.59.164.141
---
>   host.sysz-rhtap-prod-2.address: 169.63.178.13
173c173
<   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
---
>   host.sysz-rhtap-prod-2.secret: ibm-ssh-key
339,384d338
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-ppc64le-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-ppc64le-ssh-key
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     build.appstudio.redhat.com/multi-platform-secret: "true"
<   name: ibm-production-s390x-ssh-key
<   namespace: multi-platform-controller
< spec:
<   dataFrom:
<   - extract:
<       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
<   refreshInterval: 1h
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: ibm-production-s390x-ssh-key 
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
<h3>4: Staging changes from b5699b23 to 81ecb471 on Wed Jan 24 20:45:16 2024 </h3>  
 
<details> 
<summary>Git Diff (202 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index a83c38fd..ff2bf202 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4"
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index edd6042d..99848b7b 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,49 +66,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-ppc64le-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-ppc64le-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-s390x-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index ab5ac9b6..4f3f4e11 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,38 +30,15 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  # host.ppc1.address: "150.240.147.198"
-  # host.ppc1.platform: "linux/ppc64le"
-  # host.ppc1.user: "root"
-  # host.ppc1.secret: "ibm-ssh-key"
-  # host.ppc1.concurrency: "4"
-
-  # host.ibmz1.address: "169.63.177.141"
-  # host.ibmz1.platform: "linux/s390x"
-  # host.ibmz1.user: "root"
-  # host.ibmz1.secret: "ibm-ssh-key"
-  # host.ibmz1.concurrency: "4"
-
-  host.power-rhtap-prod-1.address: "52.117.38.109"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
-
-  host.power-rhtap-prod-2.address: "52.117.38.109"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.ppc1.address: "150.240.147.198"
+  host.ppc1.platform: "linux/ppc64le"
+  host.ppc1.user: "root"
+  host.ppc1.secret: "ibm-ssh-key"
+  host.ppc1.concurrency: "4"
+
+  host.ibmz1.address: "169.63.177.141"
+  host.ibmz1.platform: "linux/s390x"
+  host.ibmz1.user: "root"
+  host.ibmz1.secret: "ibm-ssh-key"
+
+  host.ibmz1.concurrency: "4" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (80 lines)</summary>  

``` 
./commit-b5699b23/staging/components/multi-platform-controller/staging/kustomize.out.yaml
155,164c155,174
<   host.ibmz1.address: 169.63.177.141
<   host.ibmz1.concurrency: "4"
<   host.ibmz1.platform: linux/s390x
<   host.ibmz1.secret: ibm-ssh-key
<   host.ibmz1.user: root
<   host.ppc1.address: 150.240.147.198
<   host.ppc1.concurrency: "4"
<   host.ppc1.platform: linux/ppc64le
<   host.ppc1.secret: ibm-ssh-key
<   host.ppc1.user: root
---
>   host.power-rhtap-prod-1.address: 52.117.38.109
>   host.power-rhtap-prod-1.concurrency: "4"
>   host.power-rhtap-prod-1.platform: linux/ppc64le
>   host.power-rhtap-prod-1.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-1.user: root
>   host.power-rhtap-prod-2.address: 52.117.38.109
>   host.power-rhtap-prod-2.concurrency: "4"
>   host.power-rhtap-prod-2.platform: linux/ppc64le
>   host.power-rhtap-prod-2.secret: ibm-production-ppc64le-ssh-key
>   host.power-rhtap-prod-2.user: root
>   host.sysz-rhtap-prod-1.address: 169.63.184.30
>   host.sysz-rhtap-prod-1.concurrency: "4"
>   host.sysz-rhtap-prod-1.platform: linux/s390x
>   host.sysz-rhtap-prod-1.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-1.user: root
>   host.sysz-rhtap-prod-2.address: 169.59.164.141
>   host.sysz-rhtap-prod-2.concurrency: "4"
>   host.sysz-rhtap-prod-2.platform: linux/s390x
>   host.sysz-rhtap-prod-2.secret: ibm-production-s390x-ssh-key
>   host.sysz-rhtap-prod-2.user: root
328a339,384
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: ibm-production-ppc64le-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: ibm-production-ppc64le-ssh-key
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   labels:
>     build.appstudio.redhat.com/multi-platform-secret: "true"
>   name: ibm-production-s390x-ssh-key
>   namespace: multi-platform-controller
> spec:
>   dataFrom:
>   - extract:
>       key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
>   refreshInterval: 1h
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: ibm-production-s390x-ssh-key 
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
<h3>4: Development changes from b5699b23 to 81ecb471 on Wed Jan 24 20:45:16 2024 </h3>  
 
<details> 
<summary>Git Diff (202 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production/external-secrets.yaml b/components/multi-platform-controller/production/external-secrets.yaml
index a83c38fd..ff2bf202 100644
--- a/components/multi-platform-controller/production/external-secrets.yaml
+++ b/components/multi-platform-controller/production/external-secrets.yaml
@@ -66,3 +66,49 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-ppc64le-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-ppc64le-ssh-key
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: ibm-production-s390x-ssh-key
+  namespace: multi-platform-controller
+  labels:
+    build.appstudio.redhat.com/multi-platform-secret: "true"
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/production/host-config.yaml b/components/multi-platform-controller/production/host-config.yaml
index feb47537..01b88791 100644
--- a/components/multi-platform-controller/production/host-config.yaml
+++ b/components/multi-platform-controller/production/host-config.yaml
@@ -30,26 +30,26 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  host.power-rhtap-prod-1.address: "150.240.147.196"
+  host.power-rhtap-prod-1.address: "52.117.38.109"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-1.concurrency: "4"
 
-  host.power-rhtap-prod-2.address: "150.240.147.194"
+  host.power-rhtap-prod-2.address: "52.117.38.109"
   host.power-rhtap-prod-2.platform: "linux/ppc64le"
   host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
   host.power-rhtap-prod-2.concurrency: "4"
 
-  host.sysz-rhtap-prod-1.address: "169.59.160.96"
+  host.sysz-rhtap-prod-1.address: "169.63.184.30"
   host.sysz-rhtap-prod-1.platform: "linux/s390x"
   host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-1.concurrency: "4"
 
-  host.sysz-rhtap-prod-2.address: "169.63.178.13"
+  host.sysz-rhtap-prod-2.address: "169.59.164.141"
   host.sysz-rhtap-prod-2.platform: "linux/s390x"
   host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-ssh-key"
+  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
   host.sysz-rhtap-prod-2.concurrency: "4"
diff --git a/components/multi-platform-controller/staging/external-secrets.yaml b/components/multi-platform-controller/staging/external-secrets.yaml
index edd6042d..99848b7b 100644
--- a/components/multi-platform-controller/staging/external-secrets.yaml
+++ b/components/multi-platform-controller/staging/external-secrets.yaml
@@ -66,49 +66,3 @@ spec:
     creationPolicy: Owner
     deletionPolicy: Delete
     name: aws-account
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-ppc64le-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-ppc64le-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-ppc64le-ssh-key
----
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  name: ibm-production-s390x-ssh-key
-  namespace: multi-platform-controller
-  labels:
-    build.appstudio.redhat.com/multi-platform-secret: "true"
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-spec:
-  dataFrom:
-    - extract:
-        key: production/build/multi-platform-controller/ibm-production-s390x-ssh-key
-  refreshInterval: 1h
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: ibm-production-s390x-ssh-key
diff --git a/components/multi-platform-controller/staging/host-config.yaml b/components/multi-platform-controller/staging/host-config.yaml
index ab5ac9b6..4f3f4e11 100644
--- a/components/multi-platform-controller/staging/host-config.yaml
+++ b/components/multi-platform-controller/staging/host-config.yaml
@@ -30,38 +30,15 @@ data:
   dynamic.linux-amd64.security-group: "launch-wizard-1"
   dynamic.linux-amd64.max-instances: "10"
 
-  # host.ppc1.address: "150.240.147.198"
-  # host.ppc1.platform: "linux/ppc64le"
-  # host.ppc1.user: "root"
-  # host.ppc1.secret: "ibm-ssh-key"
-  # host.ppc1.concurrency: "4"
-
-  # host.ibmz1.address: "169.63.177.141"
-  # host.ibmz1.platform: "linux/s390x"
-  # host.ibmz1.user: "root"
-  # host.ibmz1.secret: "ibm-ssh-key"
-  # host.ibmz1.concurrency: "4"
-
-  host.power-rhtap-prod-1.address: "52.117.38.109"
-  host.power-rhtap-prod-1.platform: "linux/ppc64le"
-  host.power-rhtap-prod-1.user: "root"
-  host.power-rhtap-prod-1.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-1.concurrency: "4"
-
-  host.power-rhtap-prod-2.address: "52.117.38.109"
-  host.power-rhtap-prod-2.platform: "linux/ppc64le"
-  host.power-rhtap-prod-2.user: "root"
-  host.power-rhtap-prod-2.secret: "ibm-production-ppc64le-ssh-key"
-  host.power-rhtap-prod-2.concurrency: "4"
-
-  host.sysz-rhtap-prod-1.address: "169.63.184.30"
-  host.sysz-rhtap-prod-1.platform: "linux/s390x"
-  host.sysz-rhtap-prod-1.user: "root"
-  host.sysz-rhtap-prod-1.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-1.concurrency: "4"
-
-  host.sysz-rhtap-prod-2.address: "169.59.164.141"
-  host.sysz-rhtap-prod-2.platform: "linux/s390x"
-  host.sysz-rhtap-prod-2.user: "root"
-  host.sysz-rhtap-prod-2.secret: "ibm-production-s390x-ssh-key"
-  host.sysz-rhtap-prod-2.concurrency: "4"
+  host.ppc1.address: "150.240.147.198"
+  host.ppc1.platform: "linux/ppc64le"
+  host.ppc1.user: "root"
+  host.ppc1.secret: "ibm-ssh-key"
+  host.ppc1.concurrency: "4"
+
+  host.ibmz1.address: "169.63.177.141"
+  host.ibmz1.platform: "linux/s390x"
+  host.ibmz1.user: "root"
+  host.ibmz1.secret: "ibm-ssh-key"
+
+  host.ibmz1.concurrency: "4" 
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
