# kustomize changes tracked by commits 
### This file generated at Tue Aug  6 12:09:20 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 7d06474e to 50266d7d on Tue Aug 6 11:27:28 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5436cd5f..5a15e4ed 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -21,6 +21,9 @@ images:
     newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
+  # temp bump of exporter only until OCP/openshift-pipelines upgrade is sorted out
+  - name: quay.io/konflux-ci/pipeline-service-exporter
+    newTag: 9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
 
 patches:
   # - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 56cb5b72..f24cec2b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ad33c75b..3e4ede61 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 581644d7..cc5eead9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0a860a11..aa027af3 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-7d06474e/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
./commit-7d06474e/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
./commit-7d06474e/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
./commit-7d06474e/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1390c1390
<         image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
---
>         image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e 
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
<h3>1: Staging changes from 7d06474e to 50266d7d on Tue Aug 6 11:27:28 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5436cd5f..5a15e4ed 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -21,6 +21,9 @@ images:
     newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
+  # temp bump of exporter only until OCP/openshift-pipelines upgrade is sorted out
+  - name: quay.io/konflux-ci/pipeline-service-exporter
+    newTag: 9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
 
 patches:
   # - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 56cb5b72..f24cec2b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ad33c75b..3e4ede61 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 581644d7..cc5eead9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0a860a11..aa027af3 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 7d06474e to 50266d7d on Tue Aug 6 11:27:28 2024 </h3>  
 
<details> 
<summary>Git Diff (66 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/kustomization.yaml b/components/pipeline-service/production/base/kustomization.yaml
index 5436cd5f..5a15e4ed 100644
--- a/components/pipeline-service/production/base/kustomization.yaml
+++ b/components/pipeline-service/production/base/kustomization.yaml
@@ -21,6 +21,9 @@ images:
     newTag: bae7851ff584423503af324200f52cd28ca99116
   - name: quay.io/redhat-appstudio/tekton-results-watcher
     newTag: bae7851ff584423503af324200f52cd28ca99116
+  # temp bump of exporter only until OCP/openshift-pipelines upgrade is sorted out
+  - name: quay.io/konflux-ci/pipeline-service-exporter
+    newTag: 9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
 
 patches:
   # - path: scale-down-exporter.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 56cb5b72..f24cec2b 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index ad33c75b..3e4ede61 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 581644d7..cc5eead9 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0a860a11..aa027af3 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1387,7 +1387,7 @@ spec:
       - args:
         - -pprof-address
         - "6060"
-        image: quay.io/konflux-ci/pipeline-service-exporter:95fe19bf616c628e6e8f30487113b61861569a6e
+        image: quay.io/konflux-ci/pipeline-service-exporter:9d2439c8a77d2ce0527cc5aea3fc6561b7671b48
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
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
<h3>2: Production changes from 97de5d9b to 7d06474e on Tue Aug 6 10:57:11 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 7fab188e..8e6e63f3 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5298616e..69d5fe2c 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+- https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+  newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
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
<h3>2: Staging changes from 97de5d9b to 7d06474e on Tue Aug 6 10:57:11 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 7fab188e..8e6e63f3 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5298616e..69d5fe2c 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+- https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+  newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (64 lines)</summary>  

``` 
./commit-97de5d9b/staging/components/mintmaker/staging/stone-stage-p01/kustomize.out.yaml
417,419c417
<       "ignorePresets": [
<         ":dependencyDashboard"
<       ],
---
>       "ignorePresets": [":dependencyDashboard"],
424,442c422,424
<       "enabledManagers": [
<         "tekton",
<         "dockerfile",
<         "rpm",
<         "git-submodules",
<         "regex",
<         "argocd",
<         "crossplane",
<         "fleet",
<         "flux",
<         "helm-requirements",
<         "helm-values",
<         "helmfile",
<         "helmsman",
<         "helmv3",
<         "jsonnet-bundler",
<         "kubernetes",
<         "kustomize"
<       ],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules", "regex", "argocd", "crossplane",
>                           "fleet", "flux", "helm-requirements", "helm-values", "helmfile", "helmsman", "helmv3",
>                           "jsonnet-bundler", "kubernetes", "kustomize"],
444,450c426,427
<         "fileMatch": [
<           "\\.yaml$",
<           "\\.yml$"
<         ],
<         "includePaths": [
<           ".tekton/**"
<         ],
---
>         "fileMatch": ["\\.yaml$","\\.yml$"],
>         "includePaths": [".tekton/**"],
468,470c445
<             "prBodyDefinitions": {
<               "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}"
<             },
---
>             "prBodyDefinitions": { "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}" },
477,481d451
<       "dockerfile": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
492,494c462
<         "schedule": [
<           "at any time"
<         ]
---
>         "schedule": ["at any time"]
624c592
<         image: quay.io/konflux-ci/mintmaker:bc582566fb7289479284adf75f2c51c0d56b9207
---
>         image: quay.io/konflux-ci/mintmaker:9e7d6a34b6496ea4b90c82b28ace889e1f2fe395 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 97de5d9b to 7d06474e on Tue Aug 6 10:57:11 2024 </h3>  
 
<details> 
<summary>Git Diff (44 lines)</summary>  

``` 
diff --git a/components/mintmaker/development/kustomization.yaml b/components/mintmaker/development/kustomization.yaml
index 7fab188e..8e6e63f3 100644
--- a/components/mintmaker/development/kustomization.yaml
+++ b/components/mintmaker/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/mintmaker/config/default?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
-  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+  - https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+  - https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 images:
   - name: quay.io/konflux-ci/mintmaker
     newName: quay.io/konflux-ci/mintmaker
-    newTag: 9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+    newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
diff --git a/components/mintmaker/staging/base/kustomization.yaml b/components/mintmaker/staging/base/kustomization.yaml
index 5298616e..69d5fe2c 100644
--- a/components/mintmaker/staging/base/kustomization.yaml
+++ b/components/mintmaker/staging/base/kustomization.yaml
@@ -3,15 +3,15 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/mintmaker/config/default?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
-- https://github.com/konflux-ci/mintmaker/config/renovate?ref=9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+- https://github.com/konflux-ci/mintmaker/config/default?ref=bc582566fb7289479284adf75f2c51c0d56b9207
+- https://github.com/konflux-ci/mintmaker/config/renovate?ref=bc582566fb7289479284adf75f2c51c0d56b9207
 
 namespace: mintmaker
 
 images:
 - name: quay.io/konflux-ci/mintmaker
   newName: quay.io/konflux-ci/mintmaker
-  newTag: 9e7d6a34b6496ea4b90c82b28ace889e1f2fe395
+  newTag: bc582566fb7289479284adf75f2c51c0d56b9207
 
 commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (64 lines)</summary>  

``` 
./commit-97de5d9b/development/components/mintmaker/development/kustomize.out.yaml
417,419c417
<       "ignorePresets": [
<         ":dependencyDashboard"
<       ],
---
>       "ignorePresets": [":dependencyDashboard"],
424,442c422,424
<       "enabledManagers": [
<         "tekton",
<         "dockerfile",
<         "rpm",
<         "git-submodules",
<         "regex",
<         "argocd",
<         "crossplane",
<         "fleet",
<         "flux",
<         "helm-requirements",
<         "helm-values",
<         "helmfile",
<         "helmsman",
<         "helmv3",
<         "jsonnet-bundler",
<         "kubernetes",
<         "kustomize"
<       ],
---
>       "enabledManagers": ["tekton", "dockerfile", "rpm", "git-submodules", "regex", "argocd", "crossplane",
>                           "fleet", "flux", "helm-requirements", "helm-values", "helmfile", "helmsman", "helmv3",
>                           "jsonnet-bundler", "kubernetes", "kustomize"],
444,450c426,427
<         "fileMatch": [
<           "\\.yaml$",
<           "\\.yml$"
<         ],
<         "includePaths": [
<           ".tekton/**"
<         ],
---
>         "fileMatch": ["\\.yaml$","\\.yml$"],
>         "includePaths": [".tekton/**"],
468,470c445
<             "prBodyDefinitions": {
<               "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}"
<             },
---
>             "prBodyDefinitions": { "Notes": "{{#if (or (containsString updateType 'minor') (containsString updateType 'major'))}}:warning:[migration](https://github.com/redhat-appstudio/build-definitions/blob/main/task/{{{replace '^quay.io/(redhat-appstudio-tekton-catalog|konflux-ci/tekton-catalog)/task-' '' packageName}}}/{{{newVersion}}}/MIGRATION.md):warning:{{/if}}" },
477,481d451
<       "dockerfile": {
<         "enabled": true,
<         "additionalBranchPrefix": "{{baseBranch}}/",
<         "branchPrefix": "konflux/mintmaker/"
<       },
492,494c462
<         "schedule": [
<           "at any time"
<         ]
---
>         "schedule": ["at any time"]
623c591
<         image: quay.io/konflux-ci/mintmaker:bc582566fb7289479284adf75f2c51c0d56b9207
---
>         image: quay.io/konflux-ci/mintmaker:9e7d6a34b6496ea4b90c82b28ace889e1f2fe395 
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
<h3>3: Production changes from a40fbea2 to 97de5d9b on Tue Aug 6 10:21:25 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/staging/external-secrets.yaml b/components/cluster-as-a-service/staging/external-secrets.yaml
index 0558d18f..b7b1024f 100644
--- a/components/cluster-as-a-service/staging/external-secrets.yaml
+++ b/components/cluster-as-a-service/staging/external-secrets.yaml
@@ -8,13 +8,13 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
+      key: staging/eaas/stage-eaas-serviceaccount
   - extract:
-      key: stonesoup/staging/eaas/konflux-eaas-stage
+      key: staging/eaas/konflux-eaas-stage
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
-    name: appsre-vault
+    name: appsre-stonesoup-vault
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
@@ -37,11 +37,11 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
+      key: staging/eaas/stage-eaas-bucket-s3
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
-    name: appsre-vault
+    name: appsre-stonesoup-vault
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index c9c9158c..26ea9398 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -32,5 +32,3 @@ spec:
         - spi-system
         - remotesecret
         - openshift-adp
-        - clusters
-        - local-cluster 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-a40fbea2/production/components/cluster-secret-store/production/kustomize.out.yaml
67a68,69
>     - clusters
>     - local-cluster 
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
<h3>3: Staging changes from a40fbea2 to 97de5d9b on Tue Aug 6 10:21:25 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/staging/external-secrets.yaml b/components/cluster-as-a-service/staging/external-secrets.yaml
index 0558d18f..b7b1024f 100644
--- a/components/cluster-as-a-service/staging/external-secrets.yaml
+++ b/components/cluster-as-a-service/staging/external-secrets.yaml
@@ -8,13 +8,13 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
+      key: staging/eaas/stage-eaas-serviceaccount
   - extract:
-      key: stonesoup/staging/eaas/konflux-eaas-stage
+      key: staging/eaas/konflux-eaas-stage
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
-    name: appsre-vault
+    name: appsre-stonesoup-vault
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
@@ -37,11 +37,11 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
+      key: staging/eaas/stage-eaas-bucket-s3
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
-    name: appsre-vault
+    name: appsre-stonesoup-vault
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index c9c9158c..26ea9398 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -32,5 +32,3 @@ spec:
         - spi-system
         - remotesecret
         - openshift-adp
-        - clusters
-        - local-cluster 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (25 lines)</summary>  

``` 
./commit-a40fbea2/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
294c294
<       key: staging/eaas/stage-eaas-serviceaccount
---
>       key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
296c296
<       key: staging/eaas/konflux-eaas-stage
---
>       key: stonesoup/staging/eaas/konflux-eaas-stage
300c300
<     name: appsre-stonesoup-vault
---
>     name: appsre-vault
322c322
<       key: staging/eaas/stage-eaas-bucket-s3
---
>       key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
326c326
<     name: appsre-stonesoup-vault
---
>     name: appsre-vault
./commit-a40fbea2/staging/components/cluster-secret-store/staging/kustomize.out.yaml
68a69,70
>     - clusters
>     - local-cluster 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from a40fbea2 to 97de5d9b on Tue Aug 6 10:21:25 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/staging/external-secrets.yaml b/components/cluster-as-a-service/staging/external-secrets.yaml
index 0558d18f..b7b1024f 100644
--- a/components/cluster-as-a-service/staging/external-secrets.yaml
+++ b/components/cluster-as-a-service/staging/external-secrets.yaml
@@ -8,13 +8,13 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
+      key: staging/eaas/stage-eaas-serviceaccount
   - extract:
-      key: stonesoup/staging/eaas/konflux-eaas-stage
+      key: staging/eaas/konflux-eaas-stage
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
-    name: appsre-vault
+    name: appsre-stonesoup-vault
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
@@ -37,11 +37,11 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/appsres09ue1/konflux-stage-eaas01/stage-eaas-serviceaccount
+      key: staging/eaas/stage-eaas-bucket-s3
   refreshInterval: 5m
   secretStoreRef:
     kind: ClusterSecretStore
-    name: appsre-vault
+    name: appsre-stonesoup-vault
   target:
     creationPolicy: Owner
     deletionPolicy: Delete
diff --git a/components/cluster-secret-store/base/appsre-vault-secret-store.yml b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
index c9c9158c..26ea9398 100644
--- a/components/cluster-secret-store/base/appsre-vault-secret-store.yml
+++ b/components/cluster-secret-store/base/appsre-vault-secret-store.yml
@@ -32,5 +32,3 @@ spec:
         - spi-system
         - remotesecret
         - openshift-adp
-        - clusters
-        - local-cluster 
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
<h3>4: Production changes from 7c715ee7 to a40fbea2 on Tue Aug 6 09:42:56 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d239fbe2..5b1ed803 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 6b88256d..b055e605 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
 
 configMapGenerator:
 - name: integration-config 
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
<h3>4: Staging changes from 7c715ee7 to a40fbea2 on Tue Aug 6 09:42:56 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d239fbe2..5b1ed803 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 6b88256d..b055e605 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7c715ee7/staging/components/integration/staging/stone-stage-p01/kustomize.out.yaml
1395c1395
<         image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26
---
>         image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
1486c1486
<             image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26
---
>             image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 7c715ee7 to a40fbea2 on Tue Aug 6 09:42:56 2024 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/integration/development/kustomization.yaml b/components/integration/development/kustomization.yaml
index d239fbe2..5b1ed803 100644
--- a/components/integration/development/kustomization.yaml
+++ b/components/integration/development/kustomization.yaml
@@ -2,13 +2,13 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
 
 configMapGenerator:
 - name: integration-config
diff --git a/components/integration/staging/base/kustomization.yaml b/components/integration/staging/base/kustomization.yaml
index 6b88256d..b055e605 100644
--- a/components/integration/staging/base/kustomization.yaml
+++ b/components/integration/staging/base/kustomization.yaml
@@ -3,13 +3,13 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/integration-service/config/default?ref=695c489487a0acb390f51495927c06126bf55fbb
-- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=695c489487a0acb390f51495927c06126bf55fbb
+- https://github.com/konflux-ci/integration-service/config/default?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
+- https://github.com/konflux-ci/integration-service/config/snapshotgc?ref=f913d46f4edb72d996b5c8b226950a96b148fd26
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 695c489487a0acb390f51495927c06126bf55fbb
+  newTag: f913d46f4edb72d996b5c8b226950a96b148fd26
 
 configMapGenerator:
 - name: integration-config 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-7c715ee7/development/components/integration/development/kustomize.out.yaml
1393c1393
<         image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26
---
>         image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb
1487c1487
<             image: quay.io/redhat-appstudio/integration-service:f913d46f4edb72d996b5c8b226950a96b148fd26
---
>             image: quay.io/redhat-appstudio/integration-service:695c489487a0acb390f51495927c06126bf55fbb 
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
