# kustomize changes tracked by commits 
### This file generated at Sun Feb 11 16:02:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 37fce0df to d2ea3f21 on Fri Feb 9 23:21:16 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 4fa6fbac..9eb60fa4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 971ebbbf..058458de 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d8b7e68a..fea3c640 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 37fce0df to d2ea3f21 on Fri Feb 9 23:21:16 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 4fa6fbac..9eb60fa4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 971ebbbf..058458de 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d8b7e68a..fea3c640 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets 
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
<h3>1: Development changes from 37fce0df to d2ea3f21 on Fri Feb 9 23:21:16 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 4fa6fbac..9eb60fa4 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 971ebbbf..058458de 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index d8b7e68a..fea3c640 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets 
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
<h3>2: Production changes from 8f29459e to 37fce0df on Fri Feb 9 22:31:46 2024 </h3>  
 
<details> 
<summary>Git Diff (157 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 04a535fe..a0341f2f 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -30,4 +30,20 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 738fdf4c..afcf485b 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -30,4 +30,20 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a3e41525..2a17e6bc 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4bc5f8e..a1946e03 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9c61a8d2..46c37d98 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 8f29459e to 37fce0df on Fri Feb 9 22:31:46 2024 </h3>  
 
<details> 
<summary>Git Diff (157 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 04a535fe..a0341f2f 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -30,4 +30,20 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 738fdf4c..afcf485b 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -30,4 +30,20 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a3e41525..2a17e6bc 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4bc5f8e..a1946e03 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9c61a8d2..46c37d98 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (51 lines)</summary>  

``` 
./commit-8f29459e/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1900c1900
<             replicas: 2
---
>             replicas: 1
1920c1920
<             replicas: 2
---
>             replicas: 1
1937c1937
<                 replicas: 2
---
>                 replicas: 1
1940c1940
<                 replicas: 2
---
>                 replicas: 1
./commit-8f29459e/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1900c1900
<             replicas: 2
---
>             replicas: 1
1920c1920
<             replicas: 2
---
>             replicas: 1
1937c1937
<                 replicas: 2
---
>                 replicas: 1
1940c1940
<                 replicas: 2
---
>                 replicas: 1
./commit-8f29459e/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1900c1900
<             replicas: 2
---
>             replicas: 1
1920c1920
<             replicas: 2
---
>             replicas: 1
1937c1937
<                 replicas: 2
---
>                 replicas: 1
1940c1940
<                 replicas: 2
---
>                 replicas: 1 
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
<h3>2: Development changes from 8f29459e to 37fce0df on Fri Feb 9 22:31:46 2024 </h3>  
 
<details> 
<summary>Git Diff (157 lines)</summary>  

``` 
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index 04a535fe..a0341f2f 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -30,4 +30,20 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index 738fdf4c..afcf485b 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -30,4 +30,20 @@
 - op: replace
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-watcher/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
+  # default pipeline-service setting is 1
+  value: 2
+- op: replace
+  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
+  # default pipeline-service setting is 1
   value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a3e41525..2a17e6bc 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f4bc5f8e..a1946e03 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 9c61a8d2..46c37d98 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1897,7 +1897,7 @@ spec:
       deployments:
         tekton-chains-controller:
           spec:
-            replicas: 1
+            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1917,7 +1917,7 @@ spec:
             replicas: 2
         tekton-pipelines-remote-resolvers:
           spec:
-            replicas: 1
+            replicas: 2
       disabled: false
     performance:
       buckets: 4
@@ -1934,10 +1934,10 @@ spec:
           deployments:
             pipelines-as-code-watcher:
               spec:
-                replicas: 1
+                replicas: 2
             pipelines-as-code-webhook:
               spec:
-                replicas: 1
+                replicas: 2
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-8f29459e/development/components/pipeline-service/development/kustomize.out.yaml
2011c2011
<             replicas: 2
---
>             replicas: 1
2031c2031
<             replicas: 2
---
>             replicas: 1
2048c2048
<                 replicas: 2
---
>                 replicas: 1
2051c2051
<                 replicas: 2
---
>                 replicas: 1 
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
<h3>3: Production changes from bfaf3972 to 8f29459e on Fri Feb 9 21:23:02 2024 </h3>  
 
<details> 
<summary>Git Diff (182 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index dfbe5695..4fa6fbac 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d74623c2eda1231d11f66289c43c9e0f29819332
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index a017368c..971ebbbf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d74623c2eda1231d11f66289c43c9e0f29819332
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c2b8a4f5..d8b7e68a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a04f1c23..a3e41525 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d6e7b9da..f4bc5f8e 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e2e4b72f..9c61a8d2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from bfaf3972 to 8f29459e on Fri Feb 9 21:23:02 2024 </h3>  
 
<details> 
<summary>Git Diff (182 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index dfbe5695..4fa6fbac 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d74623c2eda1231d11f66289c43c9e0f29819332
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index a017368c..971ebbbf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d74623c2eda1231d11f66289c43c9e0f29819332
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c2b8a4f5..d8b7e68a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a04f1c23..a3e41525 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d6e7b9da..f4bc5f8e 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e2e4b72f..9c61a8d2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-bfaf3972/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1619d1618
<     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
1896,1900d1894
<     options:
<       deployments:
<         tekton-chains-controller:
<           spec:
<             replicas: 1
1918c1912
<         tekton-pipelines-remote-resolvers:
---
>         tekton-pipelines-webhook:
1933,1940d1926
<         options:
<           deployments:
<             pipelines-as-code-watcher:
<               spec:
<                 replicas: 1
<             pipelines-as-code-webhook:
<               spec:
<                 replicas: 1
./commit-bfaf3972/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1619d1618
<     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
1896,1900d1894
<     options:
<       deployments:
<         tekton-chains-controller:
<           spec:
<             replicas: 1
1918c1912
<         tekton-pipelines-remote-resolvers:
---
>         tekton-pipelines-webhook:
1933,1940d1926
<         options:
<           deployments:
<             pipelines-as-code-watcher:
<               spec:
<                 replicas: 1
<             pipelines-as-code-webhook:
<               spec:
<                 replicas: 1
./commit-bfaf3972/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1619d1618
<     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
1896,1900d1894
<     options:
<       deployments:
<         tekton-chains-controller:
<           spec:
<             replicas: 1
1918c1912
<         tekton-pipelines-remote-resolvers:
---
>         tekton-pipelines-webhook:
1933,1940d1926
<         options:
<           deployments:
<             pipelines-as-code-watcher:
<               spec:
<                 replicas: 1
<             pipelines-as-code-webhook:
<               spec:
<                 replicas: 1 
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
<h3>3: Development changes from bfaf3972 to 8f29459e on Fri Feb 9 21:23:02 2024 </h3>  
 
<details> 
<summary>Git Diff (182 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index dfbe5695..4fa6fbac 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=d74623c2eda1231d11f66289c43c9e0f29819332
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index a017368c..971ebbbf 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=d74623c2eda1231d11f66289c43c9e0f29819332
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index c2b8a4f5..d8b7e68a 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=37dd9bab130381ec03995c34f76514b86c810315
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=d74623c2eda1231d11f66289c43c9e0f29819332
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index a04f1c23..a3e41525 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging Internal
           custom-console-name: Konflux Staging Internal
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index d6e7b9da..f4bc5f8e 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index e2e4b72f..9c61a8d2 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1616,6 +1616,7 @@ apiVersion: batch/v1
 kind: Job
 metadata:
   annotations:
+    argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "1"
   name: tekton-chains-signing-secret
@@ -1892,6 +1893,11 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
+    options:
+      deployments:
+        tekton-chains-controller:
+          spec:
+            replicas: 1
     transparency.enabled: "false"
   params:
   - name: createRbacResource
@@ -1909,7 +1915,7 @@ spec:
         tekton-operator-proxy-webhook:
           spec:
             replicas: 2
-        tekton-pipelines-webhook:
+        tekton-pipelines-remote-resolvers:
           spec:
             replicas: 1
       disabled: false
@@ -1924,6 +1930,14 @@ spec:
     openshift:
       pipelinesAsCode:
         enable: true
+        options:
+          deployments:
+            pipelines-as-code-watcher:
+              spec:
+                replicas: 1
+            pipelines-as-code-webhook:
+              spec:
+                replicas: 1
         settings:
           application-name: Konflux Staging
           custom-console-name: Konflux Staging 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (22 lines)</summary>  

``` 
./commit-bfaf3972/development/components/pipeline-service/development/kustomize.out.yaml
1758d1757
<     argocd.argoproj.io/hook-delete-policy: BeforeHookCreation
2007,2011d2005
<     options:
<       deployments:
<         tekton-chains-controller:
<           spec:
<             replicas: 1
2029c2023
<         tekton-pipelines-remote-resolvers:
---
>         tekton-pipelines-webhook:
2044,2051d2037
<         options:
<           deployments:
<             pipelines-as-code-watcher:
<               spec:
<                 replicas: 1
<             pipelines-as-code-webhook:
<               spec:
<                 replicas: 1 
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
<h3>4: Production changes from cb0c690d to bfaf3972 on Fri Feb 9 20:09:01 2024 </h3>  
 
<details> 
<summary>Git Diff (189 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
index 122e7ba0..de39ec17 100644
--- a/components/pipeline-service/staging/base/chains-signing-secrets.yaml
+++ b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
@@ -2,6 +2,7 @@ apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
   name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "-1"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 42abe032..a04f1c23 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index fa5cc8aa..d6e7b9da 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7a724d24..e2e4b72f 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from cb0c690d to bfaf3972 on Fri Feb 9 20:09:01 2024 </h3>  
 
<details> 
<summary>Git Diff (189 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
index 122e7ba0..de39ec17 100644
--- a/components/pipeline-service/staging/base/chains-signing-secrets.yaml
+++ b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
@@ -2,6 +2,7 @@ apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
   name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "-1"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 42abe032..a04f1c23 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index fa5cc8aa..d6e7b9da 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7a724d24..e2e4b72f 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (132 lines)</summary>  

``` 
./commit-cb0c690d/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1720,1740d1719
<   name: tekton-chains-signing-secret
<   namespace: openshift-pipelines
< spec:
<   dataFrom:
<   - extract:
<       key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
1782a1762,1781
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: tekton-chains-signing-secret
> spec:
>   dataFrom:
>   - extract:
>       key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
>   refreshInterval: 5m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: signing-secrets-vault
./commit-cb0c690d/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1720,1740d1719
<   name: tekton-chains-signing-secret
<   namespace: openshift-pipelines
< spec:
<   dataFrom:
<   - extract:
<       key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
1782a1762,1781
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: tekton-chains-signing-secret
> spec:
>   dataFrom:
>   - extract:
>       key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
>   refreshInterval: 5m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: signing-secrets-vault
./commit-cb0c690d/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1720,1740d1719
<   name: tekton-chains-signing-secret
<   namespace: openshift-pipelines
< spec:
<   dataFrom:
<   - extract:
<       key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
<   refreshInterval: 5m
<   secretStoreRef:
<     kind: ClusterSecretStore
<     name: appsre-stonesoup-vault
<   target:
<     creationPolicy: Owner
<     deletionPolicy: Delete
<     name: signing-secrets-vault
< ---
< apiVersion: external-secrets.io/v1beta1
< kind: ExternalSecret
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
1782a1762,1781
> ---
> apiVersion: external-secrets.io/v1beta1
> kind: ExternalSecret
> metadata:
>   annotations:
>     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
>     argocd.argoproj.io/sync-wave: "-1"
>   name: tekton-chains-signing-secret
> spec:
>   dataFrom:
>   - extract:
>       key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
>   refreshInterval: 5m
>   secretStoreRef:
>     kind: ClusterSecretStore
>     name: appsre-stonesoup-vault
>   target:
>     creationPolicy: Owner
>     deletionPolicy: Delete
>     name: signing-secrets-vault 
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
<h3>4: Development changes from cb0c690d to bfaf3972 on Fri Feb 9 20:09:01 2024 </h3>  
 
<details> 
<summary>Git Diff (189 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/base/chains-signing-secrets.yaml b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
index 122e7ba0..de39ec17 100644
--- a/components/pipeline-service/staging/base/chains-signing-secrets.yaml
+++ b/components/pipeline-service/staging/base/chains-signing-secrets.yaml
@@ -2,6 +2,7 @@ apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
 metadata:
   name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
     argocd.argoproj.io/sync-wave: "-1"
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 42abe032..a04f1c23 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-p01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index fa5cc8aa..d6e7b9da 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-m01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata:
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 7a724d24..e2e4b72f 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1713,6 +1713,27 @@ spec:
 ---
 apiVersion: external-secrets.io/v1beta1
 kind: ExternalSecret
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  name: tekton-chains-signing-secret
+  namespace: openshift-pipelines
+spec:
+  dataFrom:
+  - extract:
+      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
+  refreshInterval: 5m
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: signing-secrets-vault
+---
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -1760,26 +1781,6 @@ spec:
         bucket: '{{ .bucket }}'
         endpoint: https://{{ .endpoint }}
 ---
-apiVersion: external-secrets.io/v1beta1
-kind: ExternalSecret
-metadata:
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "-1"
-  name: tekton-chains-signing-secret
-spec:
-  dataFrom:
-  - extract:
-      key: staging/pipeline-service/stone-stage-rh01/chains-signing-secret
-  refreshInterval: 5m
-  secretStoreRef:
-    kind: ClusterSecretStore
-    name: appsre-stonesoup-vault
-  target:
-    creationPolicy: Owner
-    deletionPolicy: Delete
-    name: signing-secrets-vault
----
 apiVersion: monitoring.coreos.com/v1
 kind: ServiceMonitor
 metadata: 
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
