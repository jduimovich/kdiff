# kustomize changes tracked by commits 
### This file generated at Wed Oct 30 08:06:59 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from a09736cd to cb940490 on Tue Oct 29 13:57:18 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index c0c71ceb..03d6dc4a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,10 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        memory: 4Gi
+                        memory: 8Gi
                       requests:
                         cpu: "500m"
-                        memory: 4Gi
+                        memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index fece808e..d1a078af 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 805a44df..62246760 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c6b56dd6..eed46379 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index b55878d2..cb948f2c 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (44 lines)</summary>  

``` 
./commit-a09736cd/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2072c2072
<                       memory: 8Gi
---
>                       memory: 4Gi
2075c2075
<                       memory: 8Gi
---
>                       memory: 4Gi
2152d2151
<           remember-ok-to-test: "false"
./commit-a09736cd/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2072c2072
<                       memory: 8Gi
---
>                       memory: 4Gi
2075c2075
<                       memory: 8Gi
---
>                       memory: 4Gi
2152d2151
<           remember-ok-to-test: "false"
./commit-a09736cd/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2072c2072
<                       memory: 8Gi
---
>                       memory: 4Gi
2075c2075
<                       memory: 8Gi
---
>                       memory: 4Gi
2152d2151
<           remember-ok-to-test: "false"
./commit-a09736cd/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2072c2072
<                       memory: 8Gi
---
>                       memory: 4Gi
2075c2075
<                       memory: 8Gi
---
>                       memory: 4Gi
2152d2151
<           remember-ok-to-test: "false" 
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
<h3>1: Staging changes from a09736cd to cb940490 on Tue Oct 29 13:57:18 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index c0c71ceb..03d6dc4a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,10 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        memory: 4Gi
+                        memory: 8Gi
                       requests:
                         cpu: "500m"
-                        memory: 4Gi
+                        memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index fece808e..d1a078af 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 805a44df..62246760 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c6b56dd6..eed46379 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index b55878d2..cb948f2c 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false 
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
<h3>1: Development changes from a09736cd to cb940490 on Tue Oct 29 13:57:18 2024 </h3>  
 
<details> 
<summary>Git Diff (117 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
index c0c71ceb..03d6dc4a 100644
--- a/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
+++ b/components/pipeline-service/production/base/main-pipeline-service-configuration.yaml
@@ -1548,10 +1548,10 @@ spec:
                   - name: controller
                     resources:
                       limits:
-                        memory: 4Gi
+                        memory: 8Gi
                       requests:
                         cpu: "500m"
-                        memory: 4Gi
+                        memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index fece808e..d1a078af 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 805a44df..62246760 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://console.redhat.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index c6b56dd6..eed46379 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p01.wcfb.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index b55878d2..cb948f2c 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2071,10 +2071,10 @@ spec:
                 - name: controller
                   resources:
                     limits:
-                      memory: 4Gi
+                      memory: 8Gi
                     requests:
                       cpu: 500m
-                      memory: 4Gi
+                      memory: 8Gi
         tekton-pipelines-webhook:
           spec:
             template:
@@ -2151,6 +2151,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-prod-p02.hjvn.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: false 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from b40a64db to a09736cd on Mon Oct 28 16:06:44 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 43034497..8668d223 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
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
<h3>2: Staging changes from b40a64db to a09736cd on Mon Oct 28 16:06:44 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 43034497..8668d223 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
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
<h3>2: Development changes from b40a64db to a09736cd on Mon Oct 28 16:06:44 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/production-downstream/kustomization.yaml b/components/multi-platform-controller/production-downstream/kustomization.yaml
index 43034497..8668d223 100644
--- a/components/multi-platform-controller/production-downstream/kustomization.yaml
+++ b/components/multi-platform-controller/production-downstream/kustomization.yaml
@@ -5,15 +5,15 @@ namespace: multi-platform-controller
 
 resources:
 - ../base/common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=d434a8d31cd32012fd54515a66ba4694352f9668
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=d434a8d31cd32012fd54515a66ba4694352f9668
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - host-config.yaml
 - external-secrets.yaml
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: d434a8d31cd32012fd54515a66ba4694352f9668
+  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from fc944d8a to b40a64db on Mon Oct 28 15:06:15 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 12be3807..afcf7bac 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-fc944d8a/production/components/image-controller/production/stone-prd-rh01/kustomize.out.yaml
991c991
<         image: quay.io/konflux-ci/image-controller:49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
---
>         image: quay.io/konflux-ci/image-controller:3c98f2d567f39fc7f0cb21e209969f5966d0028f 
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
<h3>3: Staging changes from fc944d8a to b40a64db on Mon Oct 28 15:06:15 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 12be3807..afcf7bac 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from fc944d8a to b40a64db on Mon Oct 28 15:06:15 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/image-controller/production/base/kustomization.yaml b/components/image-controller/production/base/kustomization.yaml
index 12be3807..afcf7bac 100644
--- a/components/image-controller/production/base/kustomization.yaml
+++ b/components/image-controller/production/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/konflux-ci/image-controller/config/default?ref=3c98f2d567f39fc7f0cb21e209969f5966d0028f
+- https://github.com/konflux-ci/image-controller/config/default?ref=49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
 images:
 - name: quay.io/konflux-ci/image-controller
   newName: quay.io/konflux-ci/image-controller
-  newTag: 3c98f2d567f39fc7f0cb21e209969f5966d0028f
+  newTag: 49175eaec2a2a7fcdc6ca1ada62bc96a9755fd12
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 842a71a3 to fc944d8a on Mon Oct 28 13:21:43 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b4f84a55..8ba94b0f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d 
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
<h3>4: Staging changes from 842a71a3 to fc944d8a on Mon Oct 28 13:21:43 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b4f84a55..8ba94b0f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-842a71a3/staging/components/multi-platform-controller/staging/kustomize.out.yaml
673c673
<         image: quay.io/konflux-ci/multi-platform-controller:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
732c732
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3 
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
<h3>4: Development changes from 842a71a3 to fc944d8a on Mon Oct 28 13:21:43 2024 </h3>  
 
<details> 
<summary>Git Diff (23 lines)</summary>  

``` 
diff --git a/components/multi-platform-controller/base/kustomization.yaml b/components/multi-platform-controller/base/kustomization.yaml
index b4f84a55..8ba94b0f 100644
--- a/components/multi-platform-controller/base/kustomization.yaml
+++ b/components/multi-platform-controller/base/kustomization.yaml
@@ -5,14 +5,14 @@ namespace: multi-platform-controller
 
 resources:
 - common
-- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
-- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=bc75e2dbe34b240d6527aa6363f810096ab36eb3
+- https://github.com/konflux-ci/multi-platform-controller/deploy/operator?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
+- https://github.com/konflux-ci/multi-platform-controller/deploy/otp?ref=23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 
 
 images:
 - name: multi-platform-controller
   newName: quay.io/konflux-ci/multi-platform-controller
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
 - name: multi-platform-otp-server
   newName: quay.io/konflux-ci/multi-platform-controller-otp-service
-  newTag: bc75e2dbe34b240d6527aa6363f810096ab36eb3
+  newTag: 23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-842a71a3/development/components/multi-platform-controller/development/kustomize.out.yaml
340c340
<         image: quay.io/konflux-ci/multi-platform-controller:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller:bc75e2dbe34b240d6527aa6363f810096ab36eb3
399c399
<         image: quay.io/konflux-ci/multi-platform-controller-otp-service:23ed285a0ad7efa9cd5e30c1d89ecbe5b2793a6d
---
>         image: quay.io/konflux-ci/multi-platform-controller-otp-service:bc75e2dbe34b240d6527aa6363f810096ab36eb3 
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
```
 
</details> 
<br> 


</div>
