# kustomize changes tracked by commits 
### This file generated at Wed Jul 24 20:09:16 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 4da648db to 81fcbfb7 on Wed Jul 24 18:36:53 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 75473277..6b93d20b 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,14 +31,6 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/pruner
-  value:
-    keep: 10
-    keep-since: 60
-    resources:
-      - pipelinerun
-    schedule: "*/15 * * * *"
 - op: add
   path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
   # replicas - default pipeline-service setting is 1
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 26644866..f4903d5d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5e8ad871..6ed9f8ec 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index dd0294f7..bbbadf19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index f492086f..3bfdcd27 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-4da648db/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2165c2165,2169
<     disabled: true
---
>     keep: 10
>     keep-since: 60
>     resources:
>     - pipelinerun
>     schedule: '*/15 * * * *'
./commit-4da648db/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2165c2165,2169
<     disabled: true
---
>     keep: 10
>     keep-since: 60
>     resources:
>     - pipelinerun
>     schedule: '*/15 * * * *'
./commit-4da648db/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2165c2165,2169
<     disabled: true
---
>     keep: 10
>     keep-since: 60
>     resources:
>     - pipelinerun
>     schedule: '*/15 * * * *'
./commit-4da648db/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2165c2165,2169
<     disabled: true
---
>     keep: 10
>     keep-since: 60
>     resources:
>     - pipelinerun
>     schedule: '*/15 * * * *' 
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
<h3>1: Staging changes from 4da648db to 81fcbfb7 on Wed Jul 24 18:36:53 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 75473277..6b93d20b 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,14 +31,6 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/pruner
-  value:
-    keep: 10
-    keep-since: 60
-    resources:
-      - pipelinerun
-    schedule: "*/15 * * * *"
 - op: add
   path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
   # replicas - default pipeline-service setting is 1
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 26644866..f4903d5d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5e8ad871..6ed9f8ec 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index dd0294f7..bbbadf19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index f492086f..3bfdcd27 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 4da648db to 81fcbfb7 on Wed Jul 24 18:36:53 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 75473277..6b93d20b 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,14 +31,6 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/pruner
-  value:
-    keep: 10
-    keep-since: 60
-    resources:
-      - pipelinerun
-    schedule: "*/15 * * * *"
 - op: add
   path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
   # replicas - default pipeline-service setting is 1
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index 26644866..f4903d5d 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 5e8ad871..6ed9f8ec 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index dd0294f7..bbbadf19 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index f492086f..3bfdcd27 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2162,11 +2162,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    keep: 10
-    keep-since: 60
-    resources:
-    - pipelinerun
-    schedule: '*/15 * * * *'
+    disabled: true
   targetNamespace: openshift-pipelines
   trigger:
     options: 
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
<h3>2: Production changes from 47edf6a6 to 4da648db on Wed Jul 24 17:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 6b93d20b..75473277 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,6 +31,14 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pruner
+  value:
+    keep: 10
+    keep-since: 60
+    resources:
+      - pipelinerun
+    schedule: "*/15 * * * *"
 - op: add
   path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
   # replicas - default pipeline-service setting is 1
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4903d5d..26644866 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 6ed9f8ec..5e8ad871 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index bbbadf19..dd0294f7 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 3bfdcd27..f492086f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (36 lines)</summary>  

``` 
./commit-47edf6a6/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml
2165,2169c2165
<     keep: 10
<     keep-since: 60
<     resources:
<     - pipelinerun
<     schedule: '*/15 * * * *'
---
>     disabled: true
./commit-47edf6a6/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml
2165,2169c2165
<     keep: 10
<     keep-since: 60
<     resources:
<     - pipelinerun
<     schedule: '*/15 * * * *'
---
>     disabled: true
./commit-47edf6a6/production/components/pipeline-service/production/stone-prod-p01/kustomize.out.yaml
2165,2169c2165
<     keep: 10
<     keep-since: 60
<     resources:
<     - pipelinerun
<     schedule: '*/15 * * * *'
---
>     disabled: true
./commit-47edf6a6/production/components/pipeline-service/production/stone-prod-p02/kustomize.out.yaml
2165,2169c2165
<     keep: 10
<     keep-since: 60
<     resources:
<     - pipelinerun
<     schedule: '*/15 * * * *'
---
>     disabled: true 
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
<h3>2: Staging changes from 47edf6a6 to 4da648db on Wed Jul 24 17:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 6b93d20b..75473277 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,6 +31,14 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pruner
+  value:
+    keep: 10
+    keep-since: 60
+    resources:
+      - pipelinerun
+    schedule: "*/15 * * * *"
 - op: add
   path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
   # replicas - default pipeline-service setting is 1
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4903d5d..26644866 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 6ed9f8ec..5e8ad871 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index bbbadf19..dd0294f7 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 3bfdcd27..f492086f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options: 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from 47edf6a6 to 4da648db on Wed Jul 24 17:49:38 2024 </h3>  
 
<details> 
<summary>Git Diff (87 lines)</summary>  

``` 
diff --git a/components/pipeline-service/production/base/update-tekton-config-performance.yaml b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
index 6b93d20b..75473277 100644
--- a/components/pipeline-service/production/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/production/base/update-tekton-config-performance.yaml
@@ -31,6 +31,14 @@
   path: /spec/pipeline/options/deployments/tekton-operator-proxy-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
+- op: replace
+  path: /spec/pruner
+  value:
+    keep: 10
+    keep-since: 60
+    resources:
+      - pipelinerun
+    schedule: "*/15 * * * *"
 - op: add
   path: /spec/pipeline/options/deployments/tekton-pipelines-remote-resolvers/spec
   # replicas - default pipeline-service setting is 1
diff --git a/components/pipeline-service/production/stone-prd-m01/deploy.yaml b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
index f4903d5d..26644866 100644
--- a/components/pipeline-service/production/stone-prd-m01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-m01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
index 6ed9f8ec..5e8ad871 100644
--- a/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prd-rh01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p01/deploy.yaml b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
index bbbadf19..dd0294f7 100644
--- a/components/pipeline-service/production/stone-prod-p01/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p01/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options:
diff --git a/components/pipeline-service/production/stone-prod-p02/deploy.yaml b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
index 3bfdcd27..f492086f 100644
--- a/components/pipeline-service/production/stone-prod-p02/deploy.yaml
+++ b/components/pipeline-service/production/stone-prod-p02/deploy.yaml
@@ -2162,7 +2162,11 @@ spec:
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
   profile: all
   pruner:
-    disabled: true
+    keep: 10
+    keep-since: 60
+    resources:
+    - pipelinerun
+    schedule: '*/15 * * * *'
   targetNamespace: openshift-pipelines
   trigger:
     options: 
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
<h3>3: Production changes from 1ed00d99 to 47edf6a6 on Wed Jul 24 17:40:27 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 9d944c09..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -13,19 +13,3 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
----
-apiVersion: toolchain.dev.openshift.com/v1alpha1
-kind: SpaceProvisionerConfig
-metadata:
-  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  namespace: toolchain-host-operator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  enabled: true
-  capacityThresholds:
-    maxNumberOfSpaces: 1500
-    maxMemoryUtilizationPercent: 90
-  placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/eaas
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 8ca9480e..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,3 +28,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas 
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
<h3>3: Staging changes from 1ed00d99 to 47edf6a6 on Wed Jul 24 17:40:27 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 9d944c09..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -13,19 +13,3 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
----
-apiVersion: toolchain.dev.openshift.com/v1alpha1
-kind: SpaceProvisionerConfig
-metadata:
-  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  namespace: toolchain-host-operator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  enabled: true
-  capacityThresholds:
-    maxNumberOfSpaces: 1500
-    maxMemoryUtilizationPercent: 90
-  placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/eaas
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 8ca9480e..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,3 +28,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from 1ed00d99 to 47edf6a6 on Wed Jul 24 17:40:27 2024 </h3>  
 
<details> 
<summary>Git Diff (48 lines)</summary>  

``` 
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
index 9d944c09..4eae199d 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stage-p01/space-provisioner-configs.yaml
@@ -13,19 +13,3 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
----
-apiVersion: toolchain.dev.openshift.com/v1alpha1
-kind: SpaceProvisionerConfig
-metadata:
-  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  namespace: toolchain-host-operator
-  annotations:
-    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-spec:
-  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
-  enabled: true
-  capacityThresholds:
-    maxNumberOfSpaces: 1500
-    maxMemoryUtilizationPercent: 90
-  placementRoles:
-  - cluster-role.toolchain.dev.openshift.com/eaas
diff --git a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
index 8ca9480e..fcc12eb3 100644
--- a/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
+++ b/components/sandbox/toolchain-host-operator/staging/stone-stg-host/space-provisioner-configs.yaml
@@ -28,3 +28,19 @@ spec:
     maxMemoryUtilizationPercent: 90
   placementRoles:
   - cluster-role.toolchain.dev.openshift.com/tenant
+---
+apiVersion: toolchain.dev.openshift.com/v1alpha1
+kind: SpaceProvisionerConfig
+metadata:
+  name: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  namespace: toolchain-host-operator
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  toolchainCluster: member-kflux-stg-es01.21tc.p1.openshiftapps.com
+  enabled: true
+  capacityThresholds:
+    maxNumberOfSpaces: 1500
+    maxMemoryUtilizationPercent: 90
+  placementRoles:
+  - cluster-role.toolchain.dev.openshift.com/eaas 
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
<h3>4: Production changes from 9965484a to 1ed00d99 on Wed Jul 24 16:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e3f1c846..f94352bd 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=0b2badbef3eb6a31df27b324a15007949aa78354
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0f397b4f9e75a766e877af103445b4abf839cba8
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 094af4b3..88a5ee0e 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=0b2badbef3eb6a31df27b324a15007949aa78354
+  - https://github.com/konflux-ci/release-service/config/default?ref=0f397b4f9e75a766e877af103445b4abf839cba8
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 0b2badbef3eb6a31df27b324a15007949aa78354
+    newTag: 0f397b4f9e75a766e877af103445b4abf839cba8
 
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
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found! 
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 9965484a to 1ed00d99 on Wed Jul 24 16:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e3f1c846..f94352bd 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=0b2badbef3eb6a31df27b324a15007949aa78354
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0f397b4f9e75a766e877af103445b4abf839cba8
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 094af4b3..88a5ee0e 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=0b2badbef3eb6a31df27b324a15007949aa78354
+  - https://github.com/konflux-ci/release-service/config/default?ref=0f397b4f9e75a766e877af103445b4abf839cba8
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 0b2badbef3eb6a31df27b324a15007949aa78354
+    newTag: 0f397b4f9e75a766e877af103445b4abf839cba8
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 9965484a to 1ed00d99 on Wed Jul 24 16:15:16 2024 </h3>  
 
<details> 
<summary>Git Diff (28 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index e3f1c846..f94352bd 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/konflux-ci/release-service/config/grafana/?ref=0b2badbef3eb6a31df27b324a15007949aa78354
+- https://github.com/konflux-ci/release-service/config/grafana/?ref=0f397b4f9e75a766e877af103445b4abf839cba8
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index 094af4b3..88a5ee0e 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/release-service/config/default?ref=0b2badbef3eb6a31df27b324a15007949aa78354
+  - https://github.com/konflux-ci/release-service/config/default?ref=0f397b4f9e75a766e877af103445b4abf839cba8
 
 images:
   - name: quay.io/konflux-ci/release-service
     newName: quay.io/konflux-ci/release-service
-    newTag: 0b2badbef3eb6a31df27b324a15007949aa78354
+    newTag: 0f397b4f9e75a766e877af103445b4abf839cba8
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-9965484a/development/components/release/development/kustomize.out.yaml
1815c1815
<         image: quay.io/konflux-ci/release-service:0f397b4f9e75a766e877af103445b4abf839cba8
---
>         image: quay.io/konflux-ci/release-service:0b2badbef3eb6a31df27b324a15007949aa78354 
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
