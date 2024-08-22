# kustomize changes tracked by commits 
### This file generated at Thu Aug 22 04:02:46 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index 2d4700a6..dedfeb67 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.prod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions:
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index d2bc15bb..f467fc17 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.preprod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions: 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index 2d4700a6..dedfeb67 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.prod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions:
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index d2bc15bb..f467fc17 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.preprod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
<details> 
<summary>Git Diff (26 lines)</summary>  

``` 
diff --git a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
index 2d4700a6..dedfeb67 100644
--- a/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/production/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.prod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions:
diff --git a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
index d2bc15bb..f467fc17 100644
--- a/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
+++ b/components/tracing/otel-collector/staging/otel-collector-helm-values.yaml
@@ -1,7 +1,7 @@
 config:
   exporters:
     otlphttp:
-      endpoint: https://api.honeycomb.io:443
+      endpoint: https://honeycomb-refinery.apps.ext.spoke.preprod.us-east-1.aws.paas.redhat.com:443
       headers:
         "x-honeycomb-team": ${HONEYCOMB_API_TOKEN}
   extensions: 
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
<h3>2: Production changes from 14627864 to 83305652 on Wed Aug 21 20:10:07 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 5e9777d1..9b3ea7f6 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: a40a953
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c  
+    newTag: e3decf1   
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 0947b2f9..6db18ad3 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: 94f3475
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 3fcdfde
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-14627864/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
596c596
<         image: quay.io/cloudservices/chrome-service:6f08f67
---
>         image: quay.io/cloudservices/chrome-service:f3c8aa9
./commit-14627864/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
596c596
<         image: quay.io/cloudservices/chrome-service:6f08f67
---
>         image: quay.io/cloudservices/chrome-service:f3c8aa9 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 14627864 to 83305652 on Wed Aug 21 20:10:07 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 5e9777d1..9b3ea7f6 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: a40a953
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c  
+    newTag: e3decf1   
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 0947b2f9..6db18ad3 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: 94f3475
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 3fcdfde
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-14627864/staging/components/ui/staging/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:94f3475
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
596c596
<         image: quay.io/cloudservices/chrome-service:3fcdfde
---
>         image: quay.io/cloudservices/chrome-service:f3c8aa9 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 14627864 to 83305652 on Wed Aug 21 20:10:07 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 5e9777d1..9b3ea7f6 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: a40a953
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c  
+    newTag: e3decf1   
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index ab0f325c..6f890575 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: d76ce23
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 6f08f67
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 0947b2f9..6db18ad3 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: ed81ae1
+    newTag: 94f3475
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: f3c8aa9
+    newTag: 3fcdfde
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 3300e6c
+    newTag: 65c4e3e
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-14627864/development/components/ui/development/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:e3decf1
---
>       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c 
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
<h3>3: Production changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (26 lines)</summary>  

``` 
./commit-a2c134e6/production/components/ui/production/stone-prod-p01/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:6f08f67
./commit-a2c134e6/production/components/ui/production/stone-prod-p02/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:d76ce23
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:6f08f67 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-a2c134e6/staging/components/ui/staging/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:94f3475
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:65c4e3e
596c596
<         image: quay.io/cloudservices/chrome-service:f3c8aa9
---
>         image: quay.io/cloudservices/chrome-service:3fcdfde 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from a2c134e6 to 14627864 on Wed Aug 21 19:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (103 lines)</summary>  

``` 
diff --git a/components/ui/development/kustomization.yaml b/components/ui/development/kustomization.yaml
index 9b3ea7f6..5e9777d1 100644
--- a/components/ui/development/kustomization.yaml
+++ b/components/ui/development/kustomization.yaml
@@ -7,7 +7,7 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: a40a953
+    newTag: ed81ae1
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -15,7 +15,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: e3decf1   
+    newTag: 3300e6c  
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p01/kustomization.yaml b/components/ui/production/stone-prod-p01/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p01/kustomization.yaml
+++ b/components/ui/production/stone-prod-p01/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/production/stone-prod-p02/kustomization.yaml b/components/ui/production/stone-prod-p02/kustomization.yaml
index 6f890575..ab0f325c 100644
--- a/components/ui/production/stone-prod-p02/kustomization.yaml
+++ b/components/ui/production/stone-prod-p02/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: d76ce23
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 6f08f67
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules
diff --git a/components/ui/staging/kustomization.yaml b/components/ui/staging/kustomization.yaml
index 6db18ad3..0947b2f9 100644
--- a/components/ui/staging/kustomization.yaml
+++ b/components/ui/staging/kustomization.yaml
@@ -7,11 +7,11 @@ images:
   # chrome frontend
   - name: quay.io/cloudservices/insights-chrome-frontend
     newName: quay.io/cloudservices/insights-chrome-frontend
-    newTag: 94f3475
+    newTag: ed81ae1
   # chrome service
   - name: quay.io/cloudservices/chrome-service
     newName: quay.io/cloudservices/chrome-service
-    newTag: 3fcdfde
+    newTag: f3c8aa9
   # hac
   - name: quay.io/cloudservices/hac-core-frontend
     newName: quay.io/cloudservices/hac-core-frontend
@@ -19,7 +19,7 @@ images:
   # hac-dev
   - name: quay.io/cloudservices/hac-dev-frontend
     newName: quay.io/cloudservices/hac-dev-frontend
-    newTag: 65c4e3e
+    newTag: 3300e6c
 
 configMapGenerator:
   - name: fed-modules 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-a2c134e6/development/components/ui/development/kustomize.out.yaml
255c255
<       - image: quay.io/cloudservices/insights-chrome-frontend:ed81ae1
---
>       - image: quay.io/cloudservices/insights-chrome-frontend:a40a953
445c445
<       - image: quay.io/cloudservices/hac-dev-frontend:3300e6c
---
>       - image: quay.io/cloudservices/hac-dev-frontend:e3decf1 
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
<h3>4: Production changes from a99fdeb5 to a2c134e6 on Wed Aug 21 18:01:24 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ecdde719..48bba71a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -13,3 +13,5 @@ data:
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
     - name: docker-build-oci-ta
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
+    - name: docker-build-multi-platform-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (8 lines)</summary>  

``` 
./commit-a99fdeb5/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759
./commit-a99fdeb5/production/components/build-service/production/stone-prod-p02/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from a99fdeb5 to a2c134e6 on Wed Aug 21 18:01:24 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ecdde719..48bba71a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -13,3 +13,5 @@ data:
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
     - name: docker-build-oci-ta
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
+    - name: docker-build-multi-platform-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-a99fdeb5/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from a99fdeb5 to a2c134e6 on Wed Aug 21 18:01:24 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
index ecdde719..48bba71a 100644
--- a/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
+++ b/components/build-service/base/build-pipeline-config/build-pipeline-config.yaml
@@ -13,3 +13,5 @@ data:
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
     - name: docker-build-oci-ta
       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-oci-ta:4bb57bb518b2a5473574cfdc292a32eb2c18c1b7
+    - name: docker-build-multi-platform-oci-ta
+      bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-a99fdeb5/development/components/build-service/development/kustomize.out.yaml
444,445d443
<     - name: docker-build-multi-platform-oci-ta
<       bundle: quay.io/konflux-ci/tekton-catalog/pipeline-docker-build-multi-platform-oci-ta:37d628c611de158165fd13c0f8b98e2361003759 
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
