# kustomize changes tracked by commits 
### This file generated at Wed Oct 23 20:06:59 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5e0efd89 to 50c1c175 on Wed Oct 23 18:21:30 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b16e7399..356184cb 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service
  
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 5e0efd89 to 50c1c175 on Wed Oct 23 18:21:30 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b16e7399..356184cb 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-5e0efd89/staging/components/release/staging/kustomize.out.yaml
2072c2072
<         image: quay.io/konflux-ci/release-service:69ae8399bf3b5961b672a5962a7d806376b7296f
---
>         image: quay.io/konflux-ci/release-service:e091a3b077f7b1743c17869a043b8fd8856c6112 
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
<h3>1: Development changes from 5e0efd89 to 50c1c175 on Wed Oct 23 18:21:30 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index b16e7399..356184cb 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -3,7 +3,7 @@ kind: Kustomization
 resources:
   - ../base
   - ../base/monitor/staging
-  - https://github.com/konflux-ci/release-service/config/default?ref=e091a3b077f7b1743c17869a043b8fd8856c6112
+  - https://github.com/konflux-ci/release-service/config/default?ref=69ae8399bf3b5961b672a5962a7d806376b7296f
 
 components:
   - ../k-components/manager-resources-patch
@@ -11,7 +11,7 @@ components:
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: e091a3b077f7b1743c17869a043b8fd8856c6112
+    newTag: 69ae8399bf3b5961b672a5962a7d806376b7296f
 
 namespace: release-service
  
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
<h3>2: Production changes from c2a3f868 to 5e0efd89 on Wed Oct 23 17:58:57 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index dc8c1b53..a076c6b0 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,11 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        cpu: "1"
                         memory: 16Gi
                       requests:
-                        cpu: 100m
-                        memory: 100Mi
+                        cpu: "1"
+                        memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 145db9c3..ab9c276f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 135182e1..59cbbc74 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 86ebf7f1..33d28743 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0df0c5fc..76fd52ea 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-c2a3f868/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
./commit-c2a3f868/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
./commit-c2a3f868/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi
./commit-c2a3f868/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2074,2075d2073
<                       memory: 16Gi
<                     requests:
2077a2076,2078
>                     requests:
>                       cpu: 100m
>                       memory: 100Mi 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from c2a3f868 to 5e0efd89 on Wed Oct 23 17:58:57 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index dc8c1b53..a076c6b0 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,11 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        cpu: "1"
                         memory: 16Gi
                       requests:
-                        cpu: 100m
-                        memory: 100Mi
+                        cpu: "1"
+                        memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 145db9c3..ab9c276f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 135182e1..59cbbc74 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 86ebf7f1..33d28743 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0df0c5fc..76fd52ea 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template: 
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
<h3>2: Development changes from c2a3f868 to 5e0efd89 on Wed Oct 23 17:58:57 2024 </h3>  
 
<details> 
<summary>Git Diff (90 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index dc8c1b53..a076c6b0 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,11 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        cpu: "1"
                         memory: 16Gi
                       requests:
-                        cpu: 100m
-                        memory: 100Mi
+                        cpu: "1"
+                        memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 145db9c3..ab9c276f 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 135182e1..59cbbc74 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 86ebf7f1..33d28743 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 0df0c5fc..76fd52ea 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,11 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      cpu: "1"
                       memory: 16Gi
                     requests:
-                      cpu: 100m
-                      memory: 100Mi
+                      cpu: "1"
+                      memory: 16Gi
         tekton-pipelines-webhook:
           spec:
             template: 
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
<h3>3: Production changes from cac6945d to c2a3f868 on Wed Oct 23 13:48:15 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 9a87dd83..43034497 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 34622a4c..e2ae9fdd 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 31eab4f7..a4580512 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (306 lines)</summary>  

``` 
./commit-cac6945d/production/components/multi-platform-controller/production/kustomize.out.yaml
19c19
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
45c45,46
<   name: multi-platform-controller-manager-role
---
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: multi-platform-controller
129,148d129
< kind: ClusterRole
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
182,197c163
<   name: multi-platform-controller-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-manager-role
< subjects:
< - kind: ServiceAccount
<   name: multi-platform-controller-controller-manager
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-rolebinding
---
>   name: multi-platform-controller
201c167
<   name: multi-platform-controller-proxy-role
---
>   name: multi-platform-controller
204c170
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
698,714d663
<     control-plane: controller-manager
<   name: multi-platform-controller-controller-manager-metrics-service
<   namespace: multi-platform-controller
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     app: multi-platform-controller
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: multi-platform-controller
722a672,675
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
771,797c724,726
<         - --http2-disable
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=0
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
---
>         - --v=4
>         - --zap-log-level=4
>         - --zap-devel=true
803c732
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:09ca43a7a0415feb6ff29fa2278f2d2f34374bac
805,811c734
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
---
>         name: multi-platform-controller
813,821c736,737
<         - containerPort: 8081
<           name: probes
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
---
>         - containerPort: 8080
>           name: http-metrics
830,833d745
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
837c749
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: multi-platform-controller
862c774
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:09ca43a7a0415feb6ff29fa2278f2d2f34374bac
./commit-cac6945d/production/components/multi-platform-controller/production/stone-prd-m01/kustomize.out.yaml
19c19
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
45c45,46
<   name: multi-platform-controller-manager-role
---
>     rbac.authorization.k8s.io/aggregate-to-edit: "true"
>   name: multi-platform-controller
129,148d129
< kind: ClusterRole
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-role
< rules:
< - apiGroups:
<   - authentication.k8s.io
<   resources:
<   - tokenreviews
<   verbs:
<   - create
< - apiGroups:
<   - authorization.k8s.io
<   resources:
<   - subjectaccessreviews
<   verbs:
<   - create
< ---
< apiVersion: rbac.authorization.k8s.io/v1
182,197c163
<   name: multi-platform-controller-manager-rolebinding
< roleRef:
<   apiGroup: rbac.authorization.k8s.io
<   kind: ClusterRole
<   name: multi-platform-controller-manager-role
< subjects:
< - kind: ServiceAccount
<   name: multi-platform-controller-controller-manager
<   namespace: multi-platform-controller
< ---
< apiVersion: rbac.authorization.k8s.io/v1
< kind: ClusterRoleBinding
< metadata:
<   labels:
<     app: multi-platform-controller
<   name: multi-platform-controller-proxy-rolebinding
---
>   name: multi-platform-controller
201c167
<   name: multi-platform-controller-proxy-role
---
>   name: multi-platform-controller
204c170
<   name: multi-platform-controller-controller-manager
---
>   name: multi-platform-controller
698,714d663
<     control-plane: controller-manager
<   name: multi-platform-controller-controller-manager-metrics-service
<   namespace: multi-platform-controller
< spec:
<   ports:
<   - name: https
<     port: 8443
<     protocol: TCP
<     targetPort: https
<   selector:
<     app: multi-platform-controller
< ---
< apiVersion: v1
< kind: Service
< metadata:
<   labels:
<     app: multi-platform-controller
722a672,675
>   - name: http-metrics
>     port: 8080
>     protocol: TCP
>     targetPort: 8080
771,797c724,726
<         - --http2-disable
<         - --secure-listen-address=0.0.0.0:8443
<         - --upstream=http://127.0.0.1:8080/
<         - --logtostderr=true
<         - --v=0
<         image: gcr.io/kubebuilder/kube-rbac-proxy:v0.15.0
<         name: kube-rbac-proxy
<         ports:
<         - containerPort: 8443
<           name: https
<           protocol: TCP
<         resources:
<           limits:
<             cpu: 500m
<             memory: 128Mi
<           requests:
<             cpu: 5m
<             memory: 64Mi
<         securityContext:
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
<           readOnlyRootFilesystem: true
<       - args:
<         - --health-probe-bind-address=:8081
<         - --metrics-bind-address=127.0.0.1:8080
---
>         - --v=4
>         - --zap-log-level=4
>         - --zap-devel=true
803c732
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:09ca43a7a0415feb6ff29fa2278f2d2f34374bac
805,811c734
<         livenessProbe:
<           httpGet:
<             path: /healthz
<             port: 8081
<           initialDelaySeconds: 15
<           periodSeconds: 20
<         name: manager
---
>         name: multi-platform-controller
813,821c736,737
<         - containerPort: 8081
<           name: probes
<           protocol: TCP
<         readinessProbe:
<           httpGet:
<             path: /readyz
<             port: 8081
<           initialDelaySeconds: 5
<           periodSeconds: 10
---
>         - containerPort: 8080
>           name: http-metrics
830,833d745
<           allowPrivilegeEscalation: false
<           capabilities:
<             drop:
<             - ALL
837c749
<       serviceAccountName: multi-platform-controller-controller-manager
---
>       serviceAccountName: multi-platform-controller
862c774
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:09ca43a7a0415feb6ff29fa2278f2d2f34374bac 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from cac6945d to c2a3f868 on Wed Oct 23 13:48:15 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 9a87dd83..43034497 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 34622a4c..e2ae9fdd 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 31eab4f7..a4580512 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
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
<h3>3: Development changes from cac6945d to c2a3f868 on Wed Oct 23 13:48:15 2024 </h3>  
 
<details> 
<summary>Git Diff (70 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 9a87dd83..43034497 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/kustomization.yaml b/components/multi-platform-controller/production/kustomization.yaml
index 34622a4c..e2ae9fdd 100644
--- a/components/multi-platform-controller/production/kustomization.yaml
+++ b/components/multi-platform-controller/production/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
diff --git a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
index 31eab4f7..a4580512 100644
--- a/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
+++ b/components/multi-platform-controller/production/stone-prd-m01/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - ../../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 - ../common
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 09ca43a7a0415feb6ff29fa2278f2d2f34374bac
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
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
<h3>4: Production changes from 9d8ae45c to cac6945d on Wed Oct 23 09:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index f7743e19..e992e806 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 9d8ae45c to cac6945d on Wed Oct 23 09:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index f7743e19..e992e806 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9d8ae45c/staging/components/multi-platform-controller/staging/kustomize.out.yaml
673c673
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:3f3a1153714eb51194d89f4eeb20224d96521574
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3f3a1153714eb51194d89f4eeb20224d96521574 
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
<h3>4: Development changes from 9d8ae45c to cac6945d on Wed Oct 23 09:20:47 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index f7743e19..e992e806 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=3f3a1153714eb51194d89f4eeb20224d96521574
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=3f3a1153714eb51194d89f4eeb20224d96521574
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: 3f3a1153714eb51194d89f4eeb20224d96521574
+  newTag: d434a8d31cd32012fd54515a66ba4694352f9668 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-9d8ae45c/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller:3f3a1153714eb51194d89f4eeb20224d96521574
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:d434a8d31cd32012fd54515a66ba4694352f9668
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:3f3a1153714eb51194d89f4eeb20224d96521574 
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
