# kustomize changes tracked by commits 
### This file generated at Mon Feb 12 12:03:23 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5e22d919 to 8eafd619 on Mon Feb 12 10:12:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 7e29d940..b7dacd5f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5e22d919/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458 
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
<h3>1: Staging changes from 5e22d919 to 8eafd619 on Mon Feb 12 10:12:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 7e29d940..b7dacd5f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5e22d919/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458 
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
<h3>1: Development changes from 5e22d919 to 8eafd619 on Mon Feb 12 10:12:24 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 7e29d940..b7dacd5f 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-5e22d919/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:e8d570d18a7a37f4fac18cf27650e508b570c458
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:e8d570d18a7a37f4fac18cf27650e508b570c458
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:7b2d78ac0add14a43638750e822f40d1be03145d
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:e8d570d18a7a37f4fac18cf27650e508b570c458 
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
<h3>2: Production changes from d2ea3f21 to 5e22d919 on Sun Feb 11 16:28:15 2024 </h3>  
 
<details> 
<summary>Git Diff (112 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 9eb60fa4..075d3b5d 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=2be0e3a49809ba66bf64625d01833de90c457094
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 058458de..b6aa61d2 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index a0341f2f..07e0964a 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -43,7 +43,3 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index fea3c640..c152e02e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index afcf485b..8d10617c 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -43,7 +43,3 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2a17e6bc..16b6e407 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a1946e03..d1d8d7e0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 46c37d98..20e67416 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource 
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
<h3>2: Staging changes from d2ea3f21 to 5e22d919 on Sun Feb 11 16:28:15 2024 </h3>  
 
<details> 
<summary>Git Diff (112 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 9eb60fa4..075d3b5d 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=2be0e3a49809ba66bf64625d01833de90c457094
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 058458de..b6aa61d2 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index a0341f2f..07e0964a 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -43,7 +43,3 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index fea3c640..c152e02e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index afcf485b..8d10617c 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -43,7 +43,3 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2a17e6bc..16b6e407 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a1946e03..d1d8d7e0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 46c37d98..20e67416 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-d2ea3f21/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1895a1896,1900
>     options:
>       deployments:
>         tekton-chains-controller:
>           spec:
>             replicas: 2
./commit-d2ea3f21/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1895a1896,1900
>     options:
>       deployments:
>         tekton-chains-controller:
>           spec:
>             replicas: 2
./commit-d2ea3f21/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1895a1896,1900
>     options:
>       deployments:
>         tekton-chains-controller:
>           spec:
>             replicas: 2 
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
<h3>2: Development changes from d2ea3f21 to 5e22d919 on Sun Feb 11 16:28:15 2024 </h3>  
 
<details> 
<summary>Git Diff (112 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 9eb60fa4..075d3b5d 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=2be0e3a49809ba66bf64625d01833de90c457094
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 058458de..b6aa61d2 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/development/update-tekton-config-performance.yaml b/components/pipeline-service/development/update-tekton-config-performance.yaml
index a0341f2f..07e0964a 100644
--- a/components/pipeline-service/development/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/development/update-tekton-config-performance.yaml
@@ -43,7 +43,3 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index fea3c640..c152e02e 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=782bf5ca9d1d4cae40d834a0e16dda477185552b
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=2be0e3a49809ba66bf64625d01833de90c457094
   - chains-signing-secrets.yaml
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
diff --git a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
index afcf485b..8d10617c 100644
--- a/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
+++ b/components/pipeline-service/staging/base/update-tekton-config-performance.yaml
@@ -43,7 +43,3 @@
   path: /spec/platforms/openshift/pipelinesAsCode/options/deployments/pipelines-as-code-webhook/spec/replicas
   # default pipeline-service setting is 1
   value: 2
-- op: replace
-  path: /spec/chain/options/deployments/tekton-chains-controller/spec/replicas
-  # default pipeline-service setting is 1
-  value: 2
\ No newline at end of file
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2a17e6bc..16b6e407 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index a1946e03..d1d8d7e0 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 46c37d98..20e67416 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1893,11 +1893,6 @@ spec:
     artifacts.pipelinerun.storage: oci
     artifacts.taskrun.format: in-toto
     artifacts.taskrun.storage: ""
-    options:
-      deployments:
-        tekton-chains-controller:
-          spec:
-            replicas: 2
     transparency.enabled: "false"
   params:
   - name: createRbacResource 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-d2ea3f21/development/components/pipeline-service/development/kustomize.out.yaml
2006a2007,2011
>     options:
>       deployments:
>         tekton-chains-controller:
>           spec:
>             replicas: 2 
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
<h3>3: Production changes from 37fce0df to d2ea3f21 on Fri Feb 9 23:21:16 2024 </h3>  
 
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
<h3>3: Staging changes from 37fce0df to d2ea3f21 on Fri Feb 9 23:21:16 2024 </h3>  
 
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
<h3>3: Development changes from 37fce0df to d2ea3f21 on Fri Feb 9 23:21:16 2024 </h3>  
 
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
<h3>4: Production changes from 8f29459e to 37fce0df on Fri Feb 9 22:31:46 2024 </h3>  
 
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
<h3>4: Staging changes from 8f29459e to 37fce0df on Fri Feb 9 22:31:46 2024 </h3>  
 
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
<h3>4: Development changes from 8f29459e to 37fce0df on Fri Feb 9 22:31:46 2024 </h3>  
 
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
