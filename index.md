# kustomize changes tracked by commits 
### This file generated at Thu Aug 22 12:06:04 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from d1786b18 to 77fcb1cd on Thu Aug 22 11:09:52 2024 </h3>  
 
<details> 
<summary>Git Diff (123 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 236815bb..1db56665 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1707,6 +1707,7 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 4bf404bb..b1168be6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1523,6 +1523,7 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f0509b27..aae4fd24 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f48ac479..37a7b041 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index ace41725..f326a39d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec: 
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
<h3>1: Staging changes from d1786b18 to 77fcb1cd on Thu Aug 22 11:09:52 2024 </h3>  
 
<details> 
<summary>Git Diff (123 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 236815bb..1db56665 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1707,6 +1707,7 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 4bf404bb..b1168be6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1523,6 +1523,7 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f0509b27..aae4fd24 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f48ac479..37a7b041 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index ace41725..f326a39d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-d1786b18/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1993d1992
<             default-timeout-minutes: "120"
./commit-d1786b18/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1993d1992
<             default-timeout-minutes: "120"
./commit-d1786b18/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1993d1992
<             default-timeout-minutes: "120" 
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
<h3>1: Development changes from d1786b18 to 77fcb1cd on Thu Aug 22 11:09:52 2024 </h3>  
 
<details> 
<summary>Git Diff (123 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/main-pipeline-service-configuration.yaml b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
index 236815bb..1db56665 100644
--- a/components/pipeline-service/development/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/development/main-pipeline-service-configuration.yaml
@@ -1707,6 +1707,7 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 4bf404bb..b1168be6 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -1523,6 +1523,7 @@ spec:
                 requests:
                   memory: "256Mi"
                   cpu: "100m"
+            default-timeout-minutes: "120"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index f0509b27..aae4fd24 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f48ac479..37a7b041 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index ace41725..f326a39d 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1983,6 +1983,14 @@ spec:
     enable-tekton-oci-bundles: true
     options:
       configMaps:
+        config-defaults:
+          data:
+            default-container-resource-requirements: |
+              default:
+                requests:
+                  memory: "256Mi"
+                  cpu: "100m"
+            default-timeout-minutes: "120"
         config-logging:
           data:
             loglevel.controller: info
@@ -2012,13 +2020,6 @@ spec:
                   "callerEncoder": ""
                 }
               }
-        config-defaults:
-          data:
-            default-container-resource-requirements: |
-              default:
-                requests:
-                  memory: "256Mi"
-                  cpu: "100m"
       deployments:
         tekton-operator-proxy-webhook:
           spec: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-d1786b18/development/components/pipeline-service/development/kustomize.out.yaml
2061d2060
<             default-timeout-minutes: "120" 
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
<h3>2: Production changes from 6c598876 to d1786b18 on Thu Aug 22 10:06:48 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 077c8906..069de7d4 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,9 +32,10 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux/s390x,\
     linux-root/arm64,\
-    linux-root/amd64\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x\
     "
   instance-tag: rhtap-prod
 
@@ -351,6 +352,7 @@ data:
     
     --//--
 
+  ## IBM s390x with 2CPU 8GiB RAM ####
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
@@ -364,6 +366,21 @@ data:
   dynamic.linux-s390x.max-instances: "20"
   dynamic.linux-s390x.private-ip: "true"
 
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "20"
+  dynamic.linux-large-s390x.private-ip: "true"
+
+
   # dynamic.linux-ppc64le.type: ibmp
   # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
@@ -377,6 +394,7 @@ data:
   # dynamic.linux-ppc64le.memory: "2"
   # dynamic.linux-ppc64le.max-instances: "2"
 
+  ## IBM ppc64le with 2CPU 8GiB RAM
   host.power-rhtap-prod-1.address: "10.130.75.23"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
@@ -425,6 +443,20 @@ data:
   host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
   host.power-rhtap-prod-8.concurrency: "1"
 
+  ## IBM ppc64le with 4CPU 16GiB RAM
+  host.power-konflux-prod-large-1.address: "10.130.74.202"
+  host.power-konflux-prod-large-1.platform: "linux/ppc64le"
+  host.power-konflux-prod-large-1.user: "root"
+  host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
+  host.power-konflux-prod-large-1.concurrency: "1"
+
+  host.power-konflux-prod-large-2.address: "10.130.75.232"
+  host.power-konflux-prod-large-2.platform: "linux/ppc64le"
+  host.power-konflux-prod-large-2.user: "root"
+  host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
+  host.power-konflux-prod-large-2.concurrency: "1"
+
+  #IBM GPU Node
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
   host.ibm-gpu-amd64.user: "root" 
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
<h3>2: Staging changes from 6c598876 to d1786b18 on Thu Aug 22 10:06:48 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 077c8906..069de7d4 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,9 +32,10 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux/s390x,\
     linux-root/arm64,\
-    linux-root/amd64\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x\
     "
   instance-tag: rhtap-prod
 
@@ -351,6 +352,7 @@ data:
     
     --//--
 
+  ## IBM s390x with 2CPU 8GiB RAM ####
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
@@ -364,6 +366,21 @@ data:
   dynamic.linux-s390x.max-instances: "20"
   dynamic.linux-s390x.private-ip: "true"
 
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "20"
+  dynamic.linux-large-s390x.private-ip: "true"
+
+
   # dynamic.linux-ppc64le.type: ibmp
   # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
@@ -377,6 +394,7 @@ data:
   # dynamic.linux-ppc64le.memory: "2"
   # dynamic.linux-ppc64le.max-instances: "2"
 
+  ## IBM ppc64le with 2CPU 8GiB RAM
   host.power-rhtap-prod-1.address: "10.130.75.23"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
@@ -425,6 +443,20 @@ data:
   host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
   host.power-rhtap-prod-8.concurrency: "1"
 
+  ## IBM ppc64le with 4CPU 16GiB RAM
+  host.power-konflux-prod-large-1.address: "10.130.74.202"
+  host.power-konflux-prod-large-1.platform: "linux/ppc64le"
+  host.power-konflux-prod-large-1.user: "root"
+  host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
+  host.power-konflux-prod-large-1.concurrency: "1"
+
+  host.power-konflux-prod-large-2.address: "10.130.75.232"
+  host.power-konflux-prod-large-2.platform: "linux/ppc64le"
+  host.power-konflux-prod-large-2.user: "root"
+  host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
+  host.power-konflux-prod-large-2.concurrency: "1"
+
+  #IBM GPU Node
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
   host.ibm-gpu-amd64.user: "root" 
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
<h3>2: Development changes from 6c598876 to d1786b18 on Thu Aug 22 10:06:48 2024 </h3>  
 
<details> 
<summary>Git Diff (76 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/host-config.yaml b/components/multi-platform-controller/production-downstream/host-config.yaml
index 077c8906..069de7d4 100644
--- a/components/multi-platform-controller/production-downstream/host-config.yaml
+++ b/components/multi-platform-controller/production-downstream/host-config.yaml
@@ -32,9 +32,10 @@ data:
     linux-c4xlarge/arm64,\
     linux-c8xlarge/amd64,\
     linux-c8xlarge/arm64,\
-    linux/s390x,\
     linux-root/arm64,\
-    linux-root/amd64\
+    linux-root/amd64,\
+    linux/s390x,\
+    linux-large/s390x\
     "
   instance-tag: rhtap-prod
 
@@ -351,6 +352,7 @@ data:
     
     --//--
 
+  ## IBM s390x with 2CPU 8GiB RAM ####
   dynamic.linux-s390x.type: ibmz
   dynamic.linux-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
   dynamic.linux-s390x.secret: "internal-prod-ibm-api-key"
@@ -364,6 +366,21 @@ data:
   dynamic.linux-s390x.max-instances: "20"
   dynamic.linux-s390x.private-ip: "true"
 
+  ## IBM s390x with 4CPU 16GiB RAM ####
+  dynamic.linux-large-s390x.type: ibmz
+  dynamic.linux-large-s390x.ssh-secret: "internal-prod-ibm-ssh-key"
+  dynamic.linux-large-s390x.secret: "internal-prod-ibm-api-key"
+  dynamic.linux-large-s390x.vpc: "konflux-internal-prod-us-east-1"
+  dynamic.linux-large-s390x.key: "internal-prod-key"
+  dynamic.linux-large-s390x.subnet: "internal-a"
+  dynamic.linux-large-s390x.image-id: "r014-23be9e67-4ab2-4dc9-9a51-d56efb06943d"
+  dynamic.linux-large-s390x.region: "us-east-1"
+  dynamic.linux-large-s390x.url: "https://us-east.iaas.cloud.ibm.com/v1"
+  dynamic.linux-large-s390x.profile: "bz2-4x16"
+  dynamic.linux-large-s390x.max-instances: "20"
+  dynamic.linux-large-s390x.private-ip: "true"
+
+
   # dynamic.linux-ppc64le.type: ibmp
   # dynamic.linux-ppc64le.ssh-secret: "internal-prod-ibm-ssh-key"
   # dynamic.linux-ppc64le.secret: "internal-prod-ibm-api-key"
@@ -377,6 +394,7 @@ data:
   # dynamic.linux-ppc64le.memory: "2"
   # dynamic.linux-ppc64le.max-instances: "2"
 
+  ## IBM ppc64le with 2CPU 8GiB RAM
   host.power-rhtap-prod-1.address: "10.130.75.23"
   host.power-rhtap-prod-1.platform: "linux/ppc64le"
   host.power-rhtap-prod-1.user: "root"
@@ -425,6 +443,20 @@ data:
   host.power-rhtap-prod-8.secret: "internal-prod-ibm-ssh-key"
   host.power-rhtap-prod-8.concurrency: "1"
 
+  ## IBM ppc64le with 4CPU 16GiB RAM
+  host.power-konflux-prod-large-1.address: "10.130.74.202"
+  host.power-konflux-prod-large-1.platform: "linux/ppc64le"
+  host.power-konflux-prod-large-1.user: "root"
+  host.power-konflux-prod-large-1.secret: "internal-prod-ibm-ssh-key"
+  host.power-konflux-prod-large-1.concurrency: "1"
+
+  host.power-konflux-prod-large-2.address: "10.130.75.232"
+  host.power-konflux-prod-large-2.platform: "linux/ppc64le"
+  host.power-konflux-prod-large-2.user: "root"
+  host.power-konflux-prod-large-2.secret: "internal-prod-ibm-ssh-key"
+  host.power-konflux-prod-large-2.concurrency: "1"
+
+  #IBM GPU Node
   host.ibm-gpu-amd64.address: "10.130.81.14"
   host.ibm-gpu-amd64.platform: "linux-ibm-gpu/amd64"
   host.ibm-gpu-amd64.user: "root" 
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
<h3>3: Production changes from 954d7887 to 6c598876 on Thu Aug 22 06:51:21 2024 </h3>  
 
<details> 
<summary>Git Diff (888 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
new file mode 100644
index 00000000..d178ed04
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
@@ -0,0 +1,25 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  data:
+    - secretKey: "cosign.pub"
+      remoteRef:
+        key: ""  # will be added by the overlays
+        property: "cosign.pub"  # IMPORTANT: without specifying the public key as a property, the whole information from the vault key (including the private key) will be included!
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
index d68c0f31..14ff4b1c 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - chains-signing-secrets.yaml
+  - chains-public-key.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 148eb6c7..4bf404bb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,15 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -77,27 +68,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -481,23 +451,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1395,77 +1348,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c26d1220..f0509b27 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 336d1757..79354316 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..57c6ad22
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78178749..f48ac479 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..caf2f13c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c4a65ded..ace41725 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..2d701bae
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
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
<h3>3: Staging changes from 954d7887 to 6c598876 on Thu Aug 22 06:51:21 2024 </h3>  
 
<details> 
<summary>Git Diff (888 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
new file mode 100644
index 00000000..d178ed04
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
@@ -0,0 +1,25 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  data:
+    - secretKey: "cosign.pub"
+      remoteRef:
+        key: ""  # will be added by the overlays
+        property: "cosign.pub"  # IMPORTANT: without specifying the public key as a property, the whole information from the vault key (including the private key) will be included!
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
index d68c0f31..14ff4b1c 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - chains-signing-secrets.yaml
+  - chains-public-key.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 148eb6c7..4bf404bb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,15 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -77,27 +68,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -481,23 +451,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1395,77 +1348,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c26d1220..f0509b27 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 336d1757..79354316 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..57c6ad22
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78178749..f48ac479 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..caf2f13c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c4a65ded..ace41725 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..2d701bae
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (450 lines)</summary>  

``` 
./commit-954d7887/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
32a33,41
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
88a98,118
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - create
>   - get
>   - update
>   - patch
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
578a609,625
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: chains-secret-admin
> subjects:
> - kind: ServiceAccount
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1726a1774,1844
> apiVersion: batch/v1
> kind: Job
> metadata:
>   annotations:
>     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   name: tekton-chains-signing-secret
>   namespace: openshift-pipelines
> spec:
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       containers:
>       - command:
>         - /bin/bash
>         - -c
>         - |
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           namespace="openshift-pipelines"
>           secret="signing-secrets"
> 
>           cd /tmp
> 
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
>             echo "Signing secret exists and is non-empty."
>           else
>             # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
>             kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
> 
>             # To make this run conveniently without user input let's create a random password
>             RANDOM_PASS=$( openssl rand -base64 30 )
> 
>             # Generate the key pair secret directly in the cluster.
>             # The secret should be created as immutable.
>             echo "Generating k8s secret/$secret in $namespace with key-pair"
>             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
>           fi
> 
>           echo "Generating/updating the secret with the public key"
>           kubectl create secret generic public-key \
>             --namespace "$namespace" \
>             --from-literal=cosign.pub="$(
>               cosign public-key --key "k8s://$namespace/$secret"
>             )" \
>             --dry-run=client \
>             -o yaml | kubectl apply -f -
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
>         imagePullPolicy: Always
>         name: chains-secret-generation
>         resources:
>           limits:
>             cpu: 100m
>             memory: 250Mi
>           requests:
>             cpu: 10m
>             memory: 10Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>       dnsPolicy: ClusterFirst
>       restartPolicy: OnFailure
>       serviceAccount: chains-secrets-admin
>       serviceAccountName: chains-secrets-admin
>       terminationGracePeriodSeconds: 30
> ---
1747,1772d1864
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-public-key
<   namespace: openshift-pipelines
< spec:
<   data:
<   - remoteRef:
<       key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
<       property: cosign.pub
<     secretKey: cosign.pub
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Orphan
<     name: public-key
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-954d7887/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
32a33,41
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
88a98,118
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - create
>   - get
>   - update
>   - patch
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
578a609,625
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: chains-secret-admin
> subjects:
> - kind: ServiceAccount
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1726a1774,1844
> apiVersion: batch/v1
> kind: Job
> metadata:
>   annotations:
>     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   name: tekton-chains-signing-secret
>   namespace: openshift-pipelines
> spec:
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       containers:
>       - command:
>         - /bin/bash
>         - -c
>         - |
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           namespace="openshift-pipelines"
>           secret="signing-secrets"
> 
>           cd /tmp
> 
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
>             echo "Signing secret exists and is non-empty."
>           else
>             # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
>             kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
> 
>             # To make this run conveniently without user input let's create a random password
>             RANDOM_PASS=$( openssl rand -base64 30 )
> 
>             # Generate the key pair secret directly in the cluster.
>             # The secret should be created as immutable.
>             echo "Generating k8s secret/$secret in $namespace with key-pair"
>             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
>           fi
> 
>           echo "Generating/updating the secret with the public key"
>           kubectl create secret generic public-key \
>             --namespace "$namespace" \
>             --from-literal=cosign.pub="$(
>               cosign public-key --key "k8s://$namespace/$secret"
>             )" \
>             --dry-run=client \
>             -o yaml | kubectl apply -f -
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
>         imagePullPolicy: Always
>         name: chains-secret-generation
>         resources:
>           limits:
>             cpu: 100m
>             memory: 250Mi
>           requests:
>             cpu: 10m
>             memory: 10Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>       dnsPolicy: ClusterFirst
>       restartPolicy: OnFailure
>       serviceAccount: chains-secrets-admin
>       serviceAccountName: chains-secrets-admin
>       terminationGracePeriodSeconds: 30
> ---
1747,1772d1864
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-public-key
<   namespace: openshift-pipelines
< spec:
<   data:
<   - remoteRef:
<       key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
<       property: cosign.pub
<     secretKey: cosign.pub
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Orphan
<     name: public-key
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false
./commit-954d7887/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
32a33,41
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: v1
> kind: ServiceAccount
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
88a98,118
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> rules:
> - apiGroups:
>   - ""
>   resources:
>   - secrets
>   verbs:
>   - list
>   - create
>   - get
>   - update
>   - patch
>   - delete
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: Role
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
578a609,625
>     argocd.argoproj.io/sync-wave: "0"
>   name: chains-secret-admin
>   namespace: openshift-pipelines
> roleRef:
>   apiGroup: rbac.authorization.k8s.io
>   kind: Role
>   name: chains-secret-admin
> subjects:
> - kind: ServiceAccount
>   name: chains-secrets-admin
>   namespace: openshift-pipelines
> ---
> apiVersion: rbac.authorization.k8s.io/v1
> kind: RoleBinding
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
1726a1774,1844
> apiVersion: batch/v1
> kind: Job
> metadata:
>   annotations:
>     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "1"
>   name: tekton-chains-signing-secret
>   namespace: openshift-pipelines
> spec:
>   template:
>     metadata:
>       annotations:
>         argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     spec:
>       containers:
>       - command:
>         - /bin/bash
>         - -c
>         - |
>           set -o errexit
>           set -o nounset
>           set -o pipefail
> 
>           namespace="openshift-pipelines"
>           secret="signing-secrets"
> 
>           cd /tmp
> 
>           if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
>             echo "Signing secret exists and is non-empty."
>           else
>             # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
>             kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
> 
>             # To make this run conveniently without user input let's create a random password
>             RANDOM_PASS=$( openssl rand -base64 30 )
> 
>             # Generate the key pair secret directly in the cluster.
>             # The secret should be created as immutable.
>             echo "Generating k8s secret/$secret in $namespace with key-pair"
>             env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
>           fi
> 
>           echo "Generating/updating the secret with the public key"
>           kubectl create secret generic public-key \
>             --namespace "$namespace" \
>             --from-literal=cosign.pub="$(
>               cosign public-key --key "k8s://$namespace/$secret"
>             )" \
>             --dry-run=client \
>             -o yaml | kubectl apply -f -
>         image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
>         imagePullPolicy: Always
>         name: chains-secret-generation
>         resources:
>           limits:
>             cpu: 100m
>             memory: 250Mi
>           requests:
>             cpu: 10m
>             memory: 10Mi
>         securityContext:
>           readOnlyRootFilesystem: true
>           runAsNonRoot: true
>       dnsPolicy: ClusterFirst
>       restartPolicy: OnFailure
>       serviceAccount: chains-secrets-admin
>       serviceAccountName: chains-secrets-admin
>       terminationGracePeriodSeconds: 30
> ---
1747,1772d1864
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
<   name: tekton-chains-public-key
<   namespace: openshift-pipelines
< spec:
<   data:
<   - remoteRef:
<       key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
<       property: cosign.pub
<     secretKey: cosign.pub
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Orphan
<     name: public-key
<     template:
<       metadata:
<         annotations:
<           argocd.argoproj.io/sync-options: Prune=false 
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
<h3>3: Development changes from 954d7887 to 6c598876 on Thu Aug 22 06:51:21 2024 </h3>  
 
<details> 
<summary>Git Diff (888 lines)</summary>  

``` 
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
new file mode 100644
index 00000000..d178ed04
--- /dev/null
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/chains-public-key.yaml
@@ -0,0 +1,25 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  data:
+    - secretKey: "cosign.pub"
+      remoteRef:
+        key: ""  # will be added by the overlays
+        property: "cosign.pub"  # IMPORTANT: without specifying the public key as a property, the whole information from the vault key (including the private key) will be included!
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
diff --git a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
index d68c0f31..14ff4b1c 100644
--- a/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
+++ b/components/pipeline-service/base/external-secrets/openshift-pipelines/kustomization.yaml
@@ -2,3 +2,4 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - chains-signing-secrets.yaml
+  - chains-public-key.yaml
diff --git a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
index d9ce3673..05561ee5 100644
--- a/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/resources/kustomization.yaml
@@ -21,3 +21,12 @@ patches:
       group: external-secrets.io
       version: v1beta1
       kind: ExternalSecret
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
index 336d1757..c7375acc 100644
--- a/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/resources/kustomization.yaml
@@ -31,3 +31,12 @@ patches:
     target:
       kind: TektonConfig
       name: config
+  - target:
+      kind: ExternalSecret
+      name: tekton-chains-public-key
+    patch: |
+      $patch: delete
+      apiVersion: external-secrets.io/v1beta1
+      kind: ExternalSecret
+      metadata:
+        name: tekton-chains-public-key
diff --git a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
index 148eb6c7..4bf404bb 100644
--- a/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/staging/base/main-pipeline-service-configuration.yaml
@@ -20,15 +20,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -77,27 +68,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -481,23 +451,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1395,77 +1348,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index c26d1220..f0509b27 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
index 336d1757..79354316 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..57c6ad22
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-p01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 78178749..f48ac479 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..caf2f13c
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-m01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-m01/chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index c4a65ded..ace41725 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -27,15 +27,6 @@ metadata:
 ---
 apiVersion: v1
 kind: ServiceAccount
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: v1
-kind: ServiceAccount
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -92,27 +83,6 @@ metadata:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: Role
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-rules:
-- apiGroups:
-  - ""
-  resources:
-  - secrets
-  verbs:
-  - list
-  - create
-  - get
-  - update
-  - patch
-  - delete
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: Role
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -603,23 +573,6 @@ rules:
 ---
 apiVersion: rbac.authorization.k8s.io/v1
 kind: RoleBinding
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
-  name: chains-secret-admin
-  namespace: openshift-pipelines
-roleRef:
-  apiGroup: rbac.authorization.k8s.io
-  kind: Role
-  name: chains-secret-admin
-subjects:
-- kind: ServiceAccount
-  name: chains-secrets-admin
-  namespace: openshift-pipelines
----
-apiVersion: rbac.authorization.k8s.io/v1
-kind: RoleBinding
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1771,77 +1724,6 @@ spec:
           serviceAccountName: pac-secret-manager
   schedule: '*/10 * * * *'
 ---
-apiVersion: batch/v1
-kind: Job
-metadata:
-  annotations:
-    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "1"
-  name: tekton-chains-signing-secret
-  namespace: openshift-pipelines
-spec:
-  template:
-    metadata:
-      annotations:
-        argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    spec:
-      containers:
-      - command:
-        - /bin/bash
-        - -c
-        - |
-          set -o errexit
-          set -o nounset
-          set -o pipefail
-
-          namespace="openshift-pipelines"
-          secret="signing-secrets"
-
-          cd /tmp
-
-          if [ "$(kubectl get secret "$secret" -n "$namespace" -o jsonpath='{.data}' --ignore-not-found --allow-missing-template-keys)" != "" ]; then
-            echo "Signing secret exists and is non-empty."
-          else
-            # Delete secret/signing-secrets if already exists since by default cosign creates immutable secrets
-            kubectl delete secrets "$secret" -n "$namespace" --ignore-not-found=true
-
-            # To make this run conveniently without user input let's create a random password
-            RANDOM_PASS=$( openssl rand -base64 30 )
-
-            # Generate the key pair secret directly in the cluster.
-            # The secret should be created as immutable.
-            echo "Generating k8s secret/$secret in $namespace with key-pair"
-            env COSIGN_PASSWORD=$RANDOM_PASS cosign generate-key-pair "k8s://$namespace/$secret"
-          fi
-
-          echo "Generating/updating the secret with the public key"
-          kubectl create secret generic public-key \
-            --namespace "$namespace" \
-            --from-literal=cosign.pub="$(
-              cosign public-key --key "k8s://$namespace/$secret"
-            )" \
-            --dry-run=client \
-            -o yaml | kubectl apply -f -
-        image: quay.io/konflux-ci/appstudio-utils:ab6b0b8e40e440158e7288c73aff1cf83a2cc8a9@sha256:24179f0efd06c65d16868c2d7eb82573cce8e43533de6cea14fec3b7446e0b14
-        imagePullPolicy: Always
-        name: chains-secret-generation
-        resources:
-          limits:
-            cpu: 100m
-            memory: 250Mi
-          requests:
-            cpu: 10m
-            memory: 10Mi
-        securityContext:
-          readOnlyRootFilesystem: true
-          runAsNonRoot: true
-      dnsPolicy: ClusterFirst
-      restartPolicy: OnFailure
-      serviceAccount: chains-secrets-admin
-      serviceAccountName: chains-secrets-admin
-      terminationGracePeriodSeconds: 30
----
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
@@ -1865,6 +1747,32 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-public-key
+  namespace: openshift-pipelines
+spec:
+  data:
+  - remoteRef:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+      property: cosign.pub
+    secretKey: cosign.pub
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Orphan
+    name: public-key
+    template:
+      metadata:
+        annotations:
+          argocd.argoproj.io/sync-options: Prune=false
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
index d9ce3673..2bd243ef 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/kustomization.yaml
@@ -3,6 +3,12 @@ kind: Kustomization
 resources:
   - ../../base
 patches:
+  - path: tekton-chains-public-key-path.yaml
+    target:
+      name: tekton-chains-public-key
+      group: external-secrets.io
+      version: v1beta1
+      kind: ExternalSecret
   - path: tekton-chains-signing-secret-path.yaml
     target:
       name: tekton-chains-signing-secret
diff --git a/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
new file mode 100644
index 00000000..2d701bae
--- /dev/null
+++ b/components/pipeline-service/staging/stone-stg-rh01/resources/tekton-chains-public-key-path.yaml
@@ -0,0 +1,4 @@
+---
+- op: add
+  path: /spec/data/0/remoteRef/key
+  value: staging/pipeline-service/stone-stage-rh01/chains-signing-secret 
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
<h3>4: Production changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
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
<h3>4: Staging changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
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
<h3>4: Development changes from 83305652 to 954d7887 on Wed Aug 21 22:06:18 2024 </h3>  
 
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
