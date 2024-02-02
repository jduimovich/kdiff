# kustomize changes tracked by commits 
### This file generated at Fri Feb  2 04:02:17 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 9dc297ad to 181208be on Thu Feb 1 18:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index f9feffb3..cd952d4a 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
+    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 9dc297ad to 181208be on Thu Feb 1 18:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index f9feffb3..cd952d4a 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
+    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
 
 namespace: release-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (31 lines)</summary>  

``` 
./commit-9dc297ad/staging/components/release/staging/kustomize.out.yaml
114,116c114,115
<                     description: "Timeout is a value to use to override the tekton
<                       default Pipelinerun timeout \n This field is DEPRECATED and
<                       will be replaced by Timeouts in a future change."
---
>                     description: Timeout is value to use to override the tekton default
>                       Pipelinerun timeout
118,135d116
<                   timeouts:
<                     description: Timeouts defines the different Timeouts to use in
<                       the PipelineRun execution
<                     properties:
<                       finally:
<                         description: Finally sets the maximum allowed duration of
<                           this pipeline's finally
<                         type: string
<                       pipeline:
<                         description: Pipeline sets the maximum allowed duration for
<                           execution of the entire pipeline. The sum of individual
<                           timeouts for tasks and finally must not exceed this value.
<                         type: string
<                       tasks:
<                         description: Tasks sets the maximum allowed duration of this
<                           pipeline's tasks
<                         type: string
<                     type: object
1697c1678
<         image: quay.io/redhat-appstudio/release-service:5bb55c88e868015d2b62412eef174bd6c842441c
---
>         image: quay.io/redhat-appstudio/release-service:0eb0a4595339e72684c50bcb049c5b0001b7fea5 
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
<h3>1: Development changes from 9dc297ad to 181208be on Thu Feb 1 18:45:01 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index f9feffb3..cd952d4a 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=5bb55c88e868015d2b62412eef174bd6c842441c
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
+    newTag: 5bb55c88e868015d2b62412eef174bd6c842441c
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from 736326d8 to 9dc297ad on Thu Feb 1 17:52:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index bdba02b7..2ce93472 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
 
 namespace: integration-service
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (9 lines)</summary>  

``` 
./commit-736326d8/production/components/integration/production/kustomize.out.yaml
1128c1128
<         image: quay.io/redhat-appstudio/integration-service:b2787862f48a938cbbeb1385543b51264d10ff57
---
>         image: quay.io/redhat-appstudio/integration-service:576add42606a9551ab7666fc518d59b024ab4c77
1139,1141d1138
<           protocol: TCP
<         - containerPort: 8081
<           name: probes 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 736326d8 to 9dc297ad on Thu Feb 1 17:52:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index bdba02b7..2ce93472 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
 
 namespace: integration-service
  
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
<h3>2: Development changes from 736326d8 to 9dc297ad on Thu Feb 1 17:52:55 2024 </h3>  
 
<details> 
<summary>Git Diff (19 lines)</summary>  

``` 
diff --git a/components/integration/production/kustomization.yaml b/components/integration/production/kustomization.yaml
index bdba02b7..2ce93472 100644
--- a/components/integration/production/kustomization.yaml
+++ b/components/integration/production/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../base
 - ../base/external-secrets
-- https://github.com/redhat-appstudio/integration-service/config/default?ref=576add42606a9551ab7666fc518d59b024ab4c77
+- https://github.com/redhat-appstudio/integration-service/config/default?ref=b2787862f48a938cbbeb1385543b51264d10ff57
 
 images:
 - name: quay.io/redhat-appstudio/integration-service
   newName: quay.io/redhat-appstudio/integration-service
-  newTag: 576add42606a9551ab7666fc518d59b024ab4c77
+  newTag: b2787862f48a938cbbeb1385543b51264d10ff57
 
 namespace: integration-service
  
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
<h3>3: Production changes from 97047507 to 736326d8 on Thu Feb 1 17:52:48 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index eada0e12..617ab18e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -1,11 +1,4 @@
 ---
-# Github authentication/authorization isn't used downstream
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: authentication
-$patch: delete
----
 # Downstream deployment has the host and member operators deployed on the same cluster
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index b08bb10c..6adbabef 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -2,6 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base/github
+components:
+  - ../k-components/rhtap-infra-secrets-patch
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
@@ -15,9 +17,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: rhtap-infra-secrets-patch.yaml
-    target:
-      name: rhtap-infra-secrets
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
new file mode 100644
index 00000000..6046aa98
--- /dev/null
+++ b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
@@ -0,0 +1,10 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: rhtap-infra-secrets-patch.yaml
+    target:
+      name: rhtap-infra-secrets
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/authentication/production/base/rhtap-infra-secrets-patch.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/base/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..2e53febf
--- /dev/null
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp
+components:
+  - ../k-components/rhtap-infra-secrets-patch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-97047507/production/app-of-apps-production.yaml
61,62d60
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01
./commit-736326d8/production/components: authentication 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from 97047507 to 736326d8 on Thu Feb 1 17:52:48 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index eada0e12..617ab18e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -1,11 +1,4 @@
 ---
-# Github authentication/authorization isn't used downstream
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: authentication
-$patch: delete
----
 # Downstream deployment has the host and member operators deployed on the same cluster
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index b08bb10c..6adbabef 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -2,6 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base/github
+components:
+  - ../k-components/rhtap-infra-secrets-patch
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
@@ -15,9 +17,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: rhtap-infra-secrets-patch.yaml
-    target:
-      name: rhtap-infra-secrets
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
new file mode 100644
index 00000000..6046aa98
--- /dev/null
+++ b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
@@ -0,0 +1,10 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: rhtap-infra-secrets-patch.yaml
+    target:
+      name: rhtap-infra-secrets
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/authentication/production/base/rhtap-infra-secrets-patch.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/base/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..2e53febf
--- /dev/null
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp
+components:
+  - ../k-components/rhtap-infra-secrets-patch 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-97047507/staging/app-of-apps-staging.yaml
61,62d60
<           - nameNormalized: stone-prod-p01
<             values.clusterDir: stone-prod-p01 
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
<h3>3: Development changes from 97047507 to 736326d8 on Thu Feb 1 17:52:48 2024 </h3>  
 
<details> 
<summary>Git Diff (84 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index eada0e12..617ab18e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/production-downstream/delete-applications.yaml
@@ -1,11 +1,4 @@
 ---
-# Github authentication/authorization isn't used downstream
-apiVersion: argoproj.io/v1alpha1
-kind: ApplicationSet
-metadata:
-  name: authentication
-$patch: delete
----
 # Downstream deployment has the host and member operators deployed on the same cluster
 apiVersion: argoproj.io/v1alpha1
 kind: ApplicationSet
diff --git a/components/authentication/production/base/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
index b08bb10c..6adbabef 100644
--- a/components/authentication/production/base/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -2,6 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base/github
+components:
+  - ../k-components/rhtap-infra-secrets-patch
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
@@ -15,9 +17,3 @@ patches:
       kind: ExternalSecret
       group: external-secrets.io
       version: v1beta1
-  - path: rhtap-infra-secrets-patch.yaml
-    target:
-      name: rhtap-infra-secrets
-      kind: ExternalSecret
-      group: external-secrets.io
-      version: v1beta1
diff --git a/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
new file mode 100644
index 00000000..6046aa98
--- /dev/null
+++ b/components/authentication/production/k-components/rhtap-infra-secrets-patch/kustomization.yaml
@@ -0,0 +1,10 @@
+---
+apiVersion: kustomize.config.k8s.io/v1alpha1
+kind: Component
+patches:
+  - path: rhtap-infra-secrets-patch.yaml
+    target:
+      name: rhtap-infra-secrets
+      kind: ExternalSecret
+      group: external-secrets.io
+      version: v1beta1
diff --git a/components/authentication/production/base/rhtap-infra-secrets-patch.yaml b/components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/base/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/k-components/rhtap-infra-secrets-patch/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/production/stone-prod-p01/kustomization.yaml b/components/authentication/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..2e53febf
--- /dev/null
+++ b/components/authentication/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp
+components:
+  - ../k-components/rhtap-infra-secrets-patch 
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
<h3>4: Production changes from 6c4e359b to 97047507 on Thu Feb 1 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (176 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 58b7f08f..8589c87e 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 41a21540..7b7a0664 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6c6b8a1e..b75eb9ed 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2a9d1723..839f3f79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7158552c..8b30ee91 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b78f3791..ed6f4856 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6c4e359b to 97047507 on Thu Feb 1 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (176 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 58b7f08f..8589c87e 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 41a21540..7b7a0664 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6c6b8a1e..b75eb9ed 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2a9d1723..839f3f79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7158552c..8b30ee91 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b78f3791..ed6f4856 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (66 lines)</summary>  

``` 
./commit-6c4e359b/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
6,15d5
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: openshift-pipelines
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
23c13
<     argocd.argoproj.io/sync-wave: "-1"
---
>     argocd.argoproj.io/sync-wave: "0"
280d269
<   - patch
1214c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
./commit-6c4e359b/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
6,15d5
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: openshift-pipelines
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
23c13
<     argocd.argoproj.io/sync-wave: "-1"
---
>     argocd.argoproj.io/sync-wave: "0"
280d269
<   - patch
1214c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
./commit-6c4e359b/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
6,15d5
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: openshift-pipelines
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
23c13
<     argocd.argoproj.io/sync-wave: "-1"
---
>     argocd.argoproj.io/sync-wave: "0"
280d269
<   - patch
1214c1203
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24 
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
<h3>4: Development changes from 6c4e359b to 97047507 on Thu Feb 1 16:41:58 2024 </h3>  
 
<details> 
<summary>Git Diff (176 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 58b7f08f..8589c87e 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 41a21540..7b7a0664 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 6c6b8a1e..b75eb9ed 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=408b2b718e5ca8e17b2b628445c9bff1db4c907d
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=3b297d99c01d1beeb9eda2b93dd69e34ab3b0933
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 2a9d1723..839f3f79 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index 7158552c..8b30ee91 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index b78f3791..ed6f4856 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1,5 +1,15 @@
 apiVersion: v1
 kind: Namespace
+metadata:
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+  labels:
+    argocd.argoproj.io/managed-by: openshift-gitops
+  name: openshift-pipelines
+---
+apiVersion: v1
+kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
@@ -10,7 +20,7 @@ kind: Namespace
 metadata:
   annotations:
     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
-    argocd.argoproj.io/sync-wave: "0"
+    argocd.argoproj.io/sync-wave: "-1"
   labels:
     argocd.argoproj.io/managed-by: openshift-gitops
   name: tekton-results
@@ -267,6 +277,7 @@ rules:
   - get
   - list
   - watch
+  - patch
 - nonResourceURLs:
   - /metrics
   verbs:
@@ -1200,7 +1211,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (21 lines)</summary>  

``` 
./commit-6c4e359b/development/components/pipeline-service/development/kustomize.out.yaml
6,16c6
<     argocd.argoproj.io/sync-wave: "-1"
<   labels:
<     argocd.argoproj.io/managed-by: openshift-gitops
<   name: openshift-pipelines
< ---
< apiVersion: v1
< kind: Namespace
< metadata:
<   annotations:
<     argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
<     argocd.argoproj.io/sync-wave: "-1"
---
>     argocd.argoproj.io/sync-wave: "0"
297d286
<   - patch
1215c1204
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:089f2e576d31759eca98f78a591deda2cb5f37d4
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:329e1a6617af1740ad133a8338cb4c328dcc7f24 
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
