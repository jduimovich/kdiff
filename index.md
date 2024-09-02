# kustomize changes tracked by commits 
### This file generated at Mon Sep  2 08:04:35 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from e290c8ba to 24306a65 on Mon Sep 2 07:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (209 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index fcf203a7..324898fa 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1553,6 +1553,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 64d7365a..cb8a5909 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1515,6 +1515,14 @@ spec:
               }
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 61299f62..7d070931 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a14eff49..0f6aea93 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 569e4f30..e1a822f8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 5a72a22c..6d592572 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bdb30b62..f28c27fb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1369,6 +1369,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2066c63..1838de6a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dda1dafe..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,9 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: tekton-config-patch.yaml
-    target:
-      name: config
-      group: operator.tekton.dev
-      version: v1alpha1
-      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
deleted file mode 100644
index 9fd45a9d..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  pipeline:
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 505b1e32..2db58599 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (40 lines)</summary>  

``` 
./commit-e290c8ba/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
1993,2000d1992
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule" 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from e290c8ba to 24306a65 on Mon Sep 2 07:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (209 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index fcf203a7..324898fa 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1553,6 +1553,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 64d7365a..cb8a5909 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1515,6 +1515,14 @@ spec:
               }
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 61299f62..7d070931 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a14eff49..0f6aea93 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 569e4f30..e1a822f8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 5a72a22c..6d592572 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bdb30b62..f28c27fb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1369,6 +1369,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2066c63..1838de6a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dda1dafe..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,9 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: tekton-config-patch.yaml
-    target:
-      name: config
-      group: operator.tekton.dev
-      version: v1alpha1
-      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
deleted file mode 100644
index 9fd45a9d..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  pipeline:
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 505b1e32..2db58599 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (20 lines)</summary>  

``` 
./commit-e290c8ba/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1847,1854d1846
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule"
./commit-e290c8ba/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1847,1854d1846
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from e290c8ba to 24306a65 on Mon Sep 2 07:58:25 2024 </h3>  
 
<details> 
<summary>Git Diff (209 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index fcf203a7..324898fa 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1553,6 +1553,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index 64d7365a..cb8a5909 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1515,6 +1515,14 @@ spec:
               }
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"    
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 61299f62..7d070931 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index a14eff49..0f6aea93 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index 569e4f30..e1a822f8 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 5a72a22c..6d592572 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -1990,6 +1990,14 @@ spec:
       configMaps:
         config-defaults:
           data:
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index bdb30b62..f28c27fb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1369,6 +1369,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index e2066c63..1838de6a 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data:
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index dda1dafe..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -27,9 +27,3 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
-  - path: tekton-config-patch.yaml
-    target:
-      name: config
-      group: operator.tekton.dev
-      version: v1alpha1
-      kind: TektonConfig
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
deleted file mode 100644
index 9fd45a9d..00000000
--- a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-config-patch.yaml
+++ /dev/null
@@ -1,18 +0,0 @@
-apiVersion: operator.tekton.dev/v1alpha1
-kind: TektonConfig
-metadata:
-  name: config
-spec:
-  pipeline:
-    options:
-      configMaps:
-        config-defaults:
-          data:
-            default-pod-template: |
-              nodeSelector:
-                konflux-ci.dev/workload: konflux-tenants
-              tolerations:
-                - key: konflux-ci.dev/workload
-                  operator: "Equal"
-                  value: "konflux-tenants"
-                  effect: "NoSchedule"
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 505b1e32..2db58599 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1844,6 +1844,14 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-pod-template: |
+              nodeSelector:
+                konflux-ci.dev/workload: konflux-tenants
+              tolerations:
+                - key: konflux-ci.dev/workload
+                  operator: "Equal"
+                  value: "konflux-tenants"
+                  effect: "NoSchedule"
             default-timeout-minutes: "120"
         config-logging:
           data: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-e290c8ba/development/components/pipeline-service/development/kustomize.out.yaml
1915,1922d1914
<             default-pod-template: |
<               nodeSelector:
<                 konflux-ci.dev/workload: konflux-tenants
<               tolerations:
<                 - key: konflux-ci.dev/workload
<                   operator: "Equal"
<                   value: "konflux-tenants"
<                   effect: "NoSchedule" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 10c00192 to e290c8ba on Mon Sep 2 03:49:02 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index f81e2ddb..b097e035 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:333b7ba" 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (10 lines)</summary>  

``` 
./commit-10c00192/production/components/mintmaker/production/stone-prod-p01/kustomize.out.yaml
627c627
<           value: quay.io/konflux-ci/mintmaker-renovate-image:333b7ba
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7
./commit-10c00192/production/components/mintmaker/production/stone-prod-p02/kustomize.out.yaml
627c627
<           value: quay.io/konflux-ci/mintmaker-renovate-image:333b7ba
---
>           value: quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 10c00192 to e290c8ba on Mon Sep 2 03:49:02 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index f81e2ddb..b097e035 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:333b7ba" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 10c00192 to e290c8ba on Mon Sep 2 03:49:02 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/mintmaker/production/base/manager_patches.yaml b/components/mintmaker/production/base/manager_patches.yaml
index f81e2ddb..b097e035 100644
--- a/components/mintmaker/production/base/manager_patches.yaml
+++ b/components/mintmaker/production/base/manager_patches.yaml
@@ -17,4 +17,4 @@ spec:
             memory: 256Mi
         env:
         - name: RENOVATE_IMAGE
-          value: "quay.io/konflux-ci/mintmaker-renovate-image:8c1cbf7"
+          value: "quay.io/konflux-ci/mintmaker-renovate-image:333b7ba" 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from 8b941608 to 10c00192 on Sun Sep 1 06:49:32 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 8781e43e..a9dbe730 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=d37a36651f991ecd854d90fd2cfd4375342f1afc
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=aee532b40eea0d5752024510c81d95b96efebdd3 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 8b941608 to 10c00192 on Sun Sep 1 06:49:32 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 8781e43e..a9dbe730 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=d37a36651f991ecd854d90fd2cfd4375342f1afc
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=aee532b40eea0d5752024510c81d95b96efebdd3 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 8b941608 to 10c00192 on Sun Sep 1 06:49:32 2024 </h3>  
 
<details> 
<summary>Git Diff (10 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
index 8781e43e..a9dbe730 100644
--- a/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/performance/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=d37a36651f991ecd854d90fd2cfd4375342f1afc
+  - https://github.com/redhat-appstudio/perfscale/grafana/?ref=aee532b40eea0d5752024510c81d95b96efebdd3 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..5be05762 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,6 +60,9 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
+## Enterprise contract changes
+export EC_DISABLE_DOWNLOAD_SERVICE=
+
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index 8db3077f..4da413a0 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,6 +137,10 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
+if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
+  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\ 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..5be05762 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,6 +60,9 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
+## Enterprise contract changes
+export EC_DISABLE_DOWNLOAD_SERVICE=
+
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index 8db3077f..4da413a0 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,6 +137,10 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
+if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
+  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\ 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 21673ab9 to 8b941608 on Fri Aug 30 20:27:01 2024 </h3>  
 
<details> 
<summary>Git Diff (29 lines)</summary>  

``` 
diff --git a/hack/preview-template.env b/hack/preview-template.env
index f562995e..5be05762 100644
--- a/hack/preview-template.env
+++ b/hack/preview-template.env
@@ -60,6 +60,9 @@ export RELEASE_SERVICE_IMAGE_TAG=
 export RELEASE_SERVICE_PR_OWNER=
 export RELEASE_SERVICE_PR_SHA=
 
+## Enterprise contract changes
+export EC_DISABLE_DOWNLOAD_SERVICE=
+
 ## Application management
 ### Deploy only listed applications
 export DEPLOY_ONLY=""
diff --git a/hack/preview.sh b/hack/preview.sh
index 8db3077f..4da413a0 100755
--- a/hack/preview.sh
+++ b/hack/preview.sh
@@ -137,6 +137,10 @@ if $EAAS; then
     $ROOT/argo-cd-apps/base/local-cluster-secret/all-in-one/kustomization.yaml
 fi
 
+if [ "$EC_DISABLE_DOWNLOAD_SERVICE" = "true" ]; then
+  yq eval 'del(.resources[] | select(. == "download-service.yaml"))' -i  $ROOT/components/enterprise-contract/kustomization.yaml
+fi
+
 # delete argoCD applications which are not in DEPLOY_ONLY env var if it's set
 if [ -n "$DEPLOY_ONLY" ]; then
   APPLICATIONS=$(\ 
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
```
 
</details> 
<br> 


</div>
