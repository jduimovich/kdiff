# kustomize changes tracked by commits 
### This file generated at Thu Oct 31 20:07:46 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 3a11186c to 1f85a132 on Thu Oct 31 19:00:23 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index cbebb0cd..e60c12ca 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2148,6 +2148,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: true 
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
<h3>1: Staging changes from 3a11186c to 1f85a132 on Thu Oct 31 19:00:23 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index cbebb0cd..e60c12ca 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2148,6 +2148,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: true 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-3a11186c/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
2149d2148
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 3a11186c to 1f85a132 on Thu Oct 31 19:00:23 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index cbebb0cd..e60c12ca 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -2148,6 +2148,7 @@ spec:
             namespace }}/pipelinerun/{{ pr }}
           custom-console-url-pr-tasklog: https://konflux.apps.stone-stage-p01.hpmt.p1.openshiftapps.com/application-pipeline/ns/{{
             namespace }}/pipelinerun/{{ pr }}/logs/{{ task }}
+          remember-ok-to-test: "false"
   profile: all
   pruner:
     disabled: true 
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
<h3>2: Production changes from 86ebfc4c to 3a11186c on Thu Oct 31 18:41:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index e78fb3da..94c3ed0a 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.1.1
+        targetRevision: 0.1.2
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-86ebfc4c/production/components/cluster-as-a-service/production/kustomize.out.yaml
240c240
<         targetRevision: 0.1.2
---
>         targetRevision: 0.1.1 
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
<h3>2: Staging changes from 86ebfc4c to 3a11186c on Thu Oct 31 18:41:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index e78fb3da..94c3ed0a 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.1.1
+        targetRevision: 0.1.2
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-86ebfc4c/staging/components/cluster-as-a-service/staging/kustomize.out.yaml
240c240
<         targetRevision: 0.1.2
---
>         targetRevision: 0.1.1 
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
<h3>2: Development changes from 86ebfc4c to 3a11186c on Thu Oct 31 18:41:05 2024 </h3>  
 
<details> 
<summary>Git Diff (13 lines)</summary>  

``` 
diff --git a/components/cluster-as-a-service/base/clustertemplates.yaml b/components/cluster-as-a-service/base/clustertemplates.yaml
index e78fb3da..94c3ed0a 100644
--- a/components/cluster-as-a-service/base/clustertemplates.yaml
+++ b/components/cluster-as-a-service/base/clustertemplates.yaml
@@ -36,7 +36,7 @@ spec:
       source:
         chart: hypershift-aws-template
         repoURL: https://konflux-ci.dev/cluster-template-charts/
-        targetRevision: 0.1.1
+        targetRevision: 0.1.2
         helm:
           parameters:
             - name: region 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-86ebfc4c/development/components/cluster-as-a-service/development/kustomize.out.yaml
171c171
<         targetRevision: 0.1.2
---
>         targetRevision: 0.1.1 
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
<h3>3: Production changes from af489796 to 86ebfc4c on Thu Oct 31 17:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8487f5e3..6165f903 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46054ce8..06e125c7 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a0fbf32b609200ff9169c95b3d2425e90caae7a5
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
+      - verify_ec_task_git_revision=6bcf86d3354769ee4807d0c7d735fda234b2ed07
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-af489796/production/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
332c332
<   verify_ec_task_git_revision: 6bcf86d3354769ee4807d0c7d735fda234b2ed07
---
>   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761 
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
<h3>3: Staging changes from af489796 to 86ebfc4c on Thu Oct 31 17:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8487f5e3..6165f903 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46054ce8..06e125c7 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a0fbf32b609200ff9169c95b3d2425e90caae7a5
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
+      - verify_ec_task_git_revision=6bcf86d3354769ee4807d0c7d735fda234b2ed07
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-af489796/staging/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
332c332
<   verify_ec_task_git_revision: 6bcf86d3354769ee4807d0c7d735fda234b2ed07
---
>   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761 
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
<h3>3: Development changes from af489796 to 86ebfc4c on Thu Oct 31 17:15:37 2024 </h3>  
 
<details> 
<summary>Git Diff (69 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index 8487f5e3..6165f903 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -23,7 +23,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -46,7 +46,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -67,7 +67,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -89,7 +89,7 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
+        - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
 ---
 apiVersion: appstudio.redhat.com/v1alpha1
 kind: EnterpriseContractPolicy
@@ -108,4 +108,4 @@ spec:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
       policy:
-        - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
+        - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 46054ce8..06e125c7 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=5695db2bcc5662790a18ea730348607340251776
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a0fbf32b609200ff9169c95b3d2425e90caae7a5
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml
@@ -11,7 +11,7 @@ configMapGenerator:
   - name: ec-defaults
     namespace: enterprise-contract-service
     literals:
-      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
+      - verify_ec_task_bundle=quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
       - verify_ec_task_git_url=https://github.com/enterprise-contract/ec-cli.git
-      - verify_ec_task_git_revision=83818bd5dd758e88e2813fa86ef67958d2e679fa
+      - verify_ec_task_git_revision=6bcf86d3354769ee4807d0c7d735fda234b2ed07
       - verify_ec_task_git_pathInRepo=tasks/verify-enterprise-contract/0.1/verify-enterprise-contract.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (29 lines)</summary>  

``` 
./commit-af489796/development/components/enterprise-contract/kustomize.out.yaml
330c330
<   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:6bcf86d3354769ee4807d0c7d735fda234b2ed07@sha256:978d48e842a3d7060035f8006b43f3aec84eb87deac3ada47a32b19d96417cbc
---
>   verify_ec_task_bundle: quay.io/enterprise-contract/ec-task-bundle:83818bd5dd758e88e2813fa86ef67958d2e679fa@sha256:83c6e36dab62519a7de6dd54f1dfc46b45adb1a4bd656c5a89354b84bdcc0b3e
332c332
<   verify_ec_task_git_revision: 6bcf86d3354769ee4807d0c7d735fda234b2ed07
---
>   verify_ec_task_git_revision: 83818bd5dd758e88e2813fa86ef67958d2e679fa
359c359
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
381c381
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
406c406
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761
425c425
<     - oci::quay.io/enterprise-contract/ec-task-policy:git-ebd561c@sha256:8508c7ade80629ee20abfe932349ef5995c6192e012eaf1a5cff114a090b2990
---
>     - oci::quay.io/enterprise-contract/ec-task-policy:git-6b0cdec@sha256:0781c9541e0e37064a2dcf09104c53cecd3bae3e3352468d046fdc35c4d1e564
449c449
<     - oci::quay.io/enterprise-contract/ec-release-policy:git-ebd561c@sha256:5b06819240f95f9df09912c69dcfec570761f0c1f49271ebdfd86c8a555278ba
---
>     - oci::quay.io/enterprise-contract/ec-release-policy:git-6b0cdec@sha256:a236ff9530ca1608e7f0e34ac77e6946f67f0829aa28e3ae022c32434d627761 
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
<h3>4: Production changes from 71bea8d4 to af489796 on Thu Oct 31 13:51:01 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 799e31de..77ea4f22 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+- https://github.com/konflux-ci/project-controller/config/default?ref=374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  newTag: 374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 927897bc..3a402ba1 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  - https://github.com/konflux-ci/project-controller/config/default?ref=374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  newTag: 374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 namespace: project-controller 
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
<h3>4: Staging changes from 71bea8d4 to af489796 on Thu Oct 31 13:51:01 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 799e31de..77ea4f22 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+- https://github.com/konflux-ci/project-controller/config/default?ref=374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  newTag: 374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 927897bc..3a402ba1 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  - https://github.com/konflux-ci/project-controller/config/default?ref=374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  newTag: 374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-71bea8d4/staging/components/project-controller/staging/kustomize.out.yaml
727c727
<         image: quay.io/konflux-ci/project-controller:374d66367ff1426313f9f1f0f4596daf57ad4f14
---
>         image: quay.io/konflux-ci/project-controller:2e6ce017a78dfc8a188e778e3f2d1c04f7d92357 
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
<h3>4: Development changes from 71bea8d4 to af489796 on Thu Oct 31 13:51:01 2024 </h3>  
 
<details> 
<summary>Git Diff (36 lines)</summary>  

``` 
diff --git a/components/project-controller/development/kustomization.yaml b/components/project-controller/development/kustomization.yaml
index 799e31de..77ea4f22 100644
--- a/components/project-controller/development/kustomization.yaml
+++ b/components/project-controller/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+- https://github.com/konflux-ci/project-controller/config/default?ref=374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  newTag: 374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 namespace: project-controller
diff --git a/components/project-controller/staging/kustomization.yaml b/components/project-controller/staging/kustomization.yaml
index 927897bc..3a402ba1 100644
--- a/components/project-controller/staging/kustomization.yaml
+++ b/components/project-controller/staging/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/konflux-ci/project-controller/config/default?ref=2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  - https://github.com/konflux-ci/project-controller/config/default?ref=374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 images:
 - name: konflux-project-controller
   newName: quay.io/konflux-ci/project-controller
-  newTag: 2e6ce017a78dfc8a188e778e3f2d1c04f7d92357
+  newTag: 374d66367ff1426313f9f1f0f4596daf57ad4f14
 
 namespace: project-controller 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-71bea8d4/development/components/project-controller/development/kustomize.out.yaml
727c727
<         image: quay.io/konflux-ci/project-controller:374d66367ff1426313f9f1f0f4596daf57ad4f14
---
>         image: quay.io/konflux-ci/project-controller:2e6ce017a78dfc8a188e778e3f2d1c04f7d92357 
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
