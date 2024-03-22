# kustomize changes tracked by commits 
### This file generated at Fri Mar 22 04:02:02 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 49c7b6c7 to 36e5171b on Thu Mar 21 18:36:36 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6356d57b..7a51611a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index f3202865..0c7bc8e0 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 09de34ce..38a870ac 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-49c7b6c7/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1488c1488
<   replicas: 1
---
>   replicas: 2
./commit-49c7b6c7/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1488c1488
<   replicas: 1
---
>   replicas: 2
./commit-49c7b6c7/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1488c1488
<   replicas: 1
---
>   replicas: 2 
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
<h3>1: Staging changes from 49c7b6c7 to 36e5171b on Thu Mar 21 18:36:36 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6356d57b..7a51611a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index f3202865..0c7bc8e0 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 09de34ce..38a870ac 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher 
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
<h3>1: Development changes from 49c7b6c7 to 36e5171b on Thu Mar 21 18:36:36 2024 </h3>  
 
<details> 
<summary>Git Diff (51 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
index bcd64c5f..dd1942ff 100644
--- a/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
+++ b/components/pipeline-service/production/base/bump-results-watcher-replicas.yaml
@@ -1,4 +1,4 @@
 - op: replace
   path: /spec/replicas
   # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
+  value: 1
\ No newline at end of file
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 6356d57b..7a51611a 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index f3202865..0c7bc8e0 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 09de34ce..38a870ac 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1485,7 +1485,7 @@ metadata:
   name: tekton-results-watcher
   namespace: tekton-results
 spec:
-  replicas: 2
+  replicas: 1
   selector:
     matchLabels:
       app.kubernetes.io/name: tekton-results-watcher 
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
<h3>2: Production changes from e07712cb to 49c7b6c7 on Thu Mar 21 16:31:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 25ded31e..b6d765ac 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e07712cb/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
684c684
<         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213
---
>         image: quay.io/redhat-appstudio/build-service:29b09e5d8350f75c92d5796fbbf62647fe28610b 
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
<h3>2: Staging changes from e07712cb to 49c7b6c7 on Thu Mar 21 16:31:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 25ded31e..b6d765ac 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from e07712cb to 49c7b6c7 on Thu Mar 21 16:31:58 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/build-service/production/base/kustomization.yaml b/components/build-service/production/base/kustomization.yaml
index 25ded31e..b6d765ac 100644
--- a/components/build-service/production/base/kustomization.yaml
+++ b/components/build-service/production/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from f502561d to e07712cb on Thu Mar 21 14:47:37 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 945c417d..50ac1661 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9751e5af..1d3f5405 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from f502561d to e07712cb on Thu Mar 21 14:47:37 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 945c417d..50ac1661 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9751e5af..1d3f5405 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-f502561d/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
684c684
<         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213
---
>         image: quay.io/redhat-appstudio/build-service:29b09e5d8350f75c92d5796fbbf62647fe28610b
701c701
<             memory: 512Mi
---
>             memory: 256Mi 
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
<h3>3: Development changes from f502561d to e07712cb on Thu Mar 21 14:47:37 2024 </h3>  
 
<details> 
<summary>Git Diff (43 lines)</summary>  

``` 
diff --git a/components/build-service/development/kustomization.yaml b/components/build-service/development/kustomization.yaml
index 945c417d..50ac1661 100644
--- a/components/build-service/development/kustomization.yaml
+++ b/components/build-service/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/build-service/staging/base/kustomization.yaml b/components/build-service/staging/base/kustomization.yaml
index 9751e5af..1d3f5405 100644
--- a/components/build-service/staging/base/kustomization.yaml
+++ b/components/build-service/staging/base/kustomization.yaml
@@ -3,14 +3,14 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/build-service/config/default?ref=29b09e5d8350f75c92d5796fbbf62647fe28610b
+- https://github.com/redhat-appstudio/build-service/config/default?ref=d4d87709db08aaaa6913df1321e792e0d23b2213
 
 namespace: build-service
 
 images:
 - name: quay.io/redhat-appstudio/build-service
   newName: quay.io/redhat-appstudio/build-service
-  newTag: 29b09e5d8350f75c92d5796fbbf62647fe28610b
+  newTag: d4d87709db08aaaa6913df1321e792e0d23b2213
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
\ No newline at end of file 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-f502561d/development/components/build-service/development/kustomize.out.yaml
689c689
<         image: quay.io/redhat-appstudio/build-service:d4d87709db08aaaa6913df1321e792e0d23b2213
---
>         image: quay.io/redhat-appstudio/build-service:29b09e5d8350f75c92d5796fbbf62647fe28610b
706c706
<             memory: 512Mi
---
>             memory: 256Mi 
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
<h3>4: Production changes from c96989f2 to f502561d on Thu Mar 21 12:44:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 7094d370..38fba437 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
+  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (189 lines)</summary>  

``` 
./commit-c96989f2/production/components/image-controller/production/kustomize.out.yaml
462,464d461
<     import itertools
<     import json
<     import logging
465a463
>     import logging
467,472c465
< 
<     from collections.abc import Iterator
<     from http.client import HTTPResponse
<     from typing import Any, Dict, List
<     from urllib.parse import urlencode
<     from urllib.request import Request, urlopen
---
>     import requests
480,481c473
<     processed_repos_counter = itertools.count()
< 
---
>     PROCESSED_REPOS = 0
483d474
<     ImageRepo = Dict[str, Any]
485,515c476,482
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
<         tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src)$")
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
517c484
<                         LOGGER.info("Image %s from %s/%s should be removed", tag, namespace, name)
---
>                         LOGGER.info("Image %s from %s should be removed", image, repository)
519,561c486,510
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
571,572c520,542
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
584a555
>   requirements.txt: requests
587c558
<   name: image-controller-image-pruner-configmap-h7dftck666
---
>   name: image-controller-image-pruner-configmap-8d96cbt85m
668c639
<         image: quay.io/redhat-appstudio/image-controller:143d709ff49d94e2b7f489da2fdb9708d38f466c
---
>         image: quay.io/redhat-appstudio/image-controller:88e3b1cede3a4cb6871b75d92bd4da408122d991
737a709,710
>   annotations:
>     ignore-check.kube-linter.io/no-read-only-root-fs: image pruner writes to disk
750c723,724
<             - python /image-pruner/prune_images.py --namespace $(NAMESPACE)
---
>             - pip install -r /image-pruner/requirements.txt && python /image-pruner/prune_images.py
>               --namespace $(NAMESPACE)
772,773d745
<             securityContext:
<               readOnlyRootFilesystem: true
782c754
<               name: image-controller-image-pruner-configmap-h7dftck666
---
>               name: image-controller-image-pruner-configmap-8d96cbt85m 
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
<h3>4: Staging changes from c96989f2 to f502561d on Thu Mar 21 12:44:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 7094d370..38fba437 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
+  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from c96989f2 to f502561d on Thu Mar 21 12:44:07 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/kustomization.yaml b/components/image-controller/production/kustomization.yaml
index 7094d370..38fba437 100644
--- a/components/image-controller/production/kustomization.yaml
+++ b/components/image-controller/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=88e3b1cede3a4cb6871b75d92bd4da408122d991
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 88e3b1cede3a4cb6871b75d92bd4da408122d991
+  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
 
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
```
 
</details> 
<br> 


</div>
