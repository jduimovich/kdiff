# kustomize changes tracked by commits 
### This file generated at Wed Jan 31 16:05:13 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from f52311e0 to e68488fa on Wed Jan 31 15:49:14 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 2acd933d..74a484ec 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (88 lines)</summary>  

``` 
./commit-f52311e0/production/components/release/production/kustomize.out.yaml
75,77c75,77
<               pipeline:
<                 description: Pipeline contains all the information about the managed
<                   Pipeline
---
>               pipelineRef:
>                 description: PipelineRef is a reference to the Pipeline to be executed
>                   by the managed Release PipelineRun
79,110c79,98
<                   pipelineRef:
<                     description: PipelineRef is the reference to the Pipeline
<                     properties:
<                       params:
<                         description: Params is a slice of parameters for a given resolver
<                         items:
<                           description: Param defines the parameters for a given resolver
<                             in PipelineRef
<                           properties:
<                             name:
<                               description: Name is the name of the parameter
<                               type: string
<                             value:
<                               description: Value is the value of the parameter
<                               type: string
<                           required:
<                           - name
<                           - value
<                           type: object
<                         type: array
<                       resolver:
<                         description: Resolver is the name of a Tekton resolver to
<                           be used (e.g. git)
<                         type: string
<                     required:
<                     - params
<                     - resolver
<                     type: object
<                   serviceAccountName:
<                     description: ServiceAccount is the ServiceAccount to use during
<                       the execution of the Pipeline
<                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
---
>                   params:
>                     description: Params is a slice of parameters for a given resolver
>                     items:
>                       description: Param defines the parameters for a given resolver
>                         in PipelineRef
>                       properties:
>                         name:
>                           description: Name is the name of the parameter
>                           type: string
>                         value:
>                           description: Value is the value of the parameter
>                           type: string
>                       required:
>                       - name
>                       - value
>                       type: object
>                     type: array
>                   resolver:
>                     description: Resolver is the name of a Tekton resolver to be used
>                       (e.g. git)
118c106,107
<                 - pipelineRef
---
>                 - params
>                 - resolver
123a113,117
>               serviceAccount:
>                 description: ServiceAccount is the name of the service account to
>                   use in the managed Release PipelineRun to gain elevated privileges
>                 pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                 type: string
127c121
<             - pipeline
---
>             - pipelineRef
313a308,312
>                   timeout:
>                     default: "0"
>                     description: Timeout is value to use to override the tekton default
>                       Pipelinerun timeout
>                     type: string
1678c1677
<         image: quay.io/redhat-appstudio/release-service:0eb0a4595339e72684c50bcb049c5b0001b7fea5
---
>         image: quay.io/redhat-appstudio/release-service:c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060 
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
<h3>1: Staging changes from f52311e0 to e68488fa on Wed Jan 31 15:49:14 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 2acd933d..74a484ec 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from f52311e0 to e68488fa on Wed Jan 31 15:49:14 2024 </h3>  
 
<details> 
<summary>Git Diff (21 lines)</summary>  

``` 
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 2acd933d..74a484ec 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+    newTag: 0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
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
<h3>2: Production changes from 396d6a1d to f52311e0 on Wed Jan 31 14:02:00 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 312c5b46..28070b8e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml b/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-396d6a1d/production/app-of-apps-production.yaml
956,957d955
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Staging changes from 396d6a1d to f52311e0 on Wed Jan 31 14:02:00 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 312c5b46..28070b8e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml b/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (4 lines)</summary>  

``` 
./commit-396d6a1d/staging/app-of-apps-staging.yaml
910,911d909
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
<h3>2: Development changes from 396d6a1d to f52311e0 on Wed Jan 31 14:02:00 2024 </h3>  
 
<details> 
<summary>Git Diff (24 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
index 312c5b46..28070b8e 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/monitoring-workload-logging/monitoring-workload-logging.yaml
@@ -17,6 +17,8 @@ spec:
               elements:
                 - nameNormalized: stone-stage-p01
                   values.clusterDir: stone-stage-p01
+                - nameNormalized: stone-prod-p01
+                  values.clusterDir: stone-prod-p01
   template:
     metadata:
       name: monitoring-workload-logging-{{nameNormalized}}
diff --git a/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml b/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml
new file mode 100644
index 00000000..ea2a0a11
--- /dev/null
+++ b/components/monitoring/logging/production/stone-prod-p01/kustomization.yaml
@@ -0,0 +1,5 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../base
+- ../../base/logging-operator-prerequisite 
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
<h3>3: Production changes from 113b007b to 396d6a1d on Wed Jan 31 09:37:29 2024 </h3>  
 
<details> 
<summary>Git Diff (260 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 91a53d31..eada0e12 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/authentication
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
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
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..138051b0
--- /dev/null
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -0,0 +1,46 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-core'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-ec'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-gitops'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-has'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-infra'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-integration'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-pipeline-service'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-qe'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-spi'
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..9637ff73
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
new file mode 100644
index 00000000..4648f470
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: mtls-ca-validators
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/mtls-ca-validators
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: mtls-ca-validators
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
new file mode 100644
index 00000000..1f0f1e86
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -0,0 +1,38 @@
+apiVersion: redhatcop.redhat.io/v1alpha1
+kind: GroupSync
+metadata:
+  name: konflux-rover-groups
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  providers:
+    - ldap:
+        ca:
+          key: ca.crt
+          kind: Secret
+          name: mtls-ca-validators
+          namespace: group-sync-operator
+        insecure: false
+        rfc2307:
+          usersQuery:
+            baseDN: 'dc=redhat,dc=com'
+            derefAliases: never
+            scope: sub
+          groupNameAttributes:
+            - cn
+          tolerateMemberNotFoundErrors: true
+          tolerateMemberOutOfScopeErrors: true
+          groupUIDAttribute: dn
+          groupMembershipAttributes:
+            - uniqueMember
+          userNameAttributes:
+            - uid
+          groupsQuery:
+            baseDN: 'ou=adhoc,ou=managedGroups,dc=redhat,dc=com'
+            derefAliases: never
+            filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
+            scope: sub
+          userUIDAttribute: dn
+        url: 'ldaps://ldap.corp.redhat.com'
+      name: ldap-corp
+  schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
new file mode 100644
index 00000000..9a9cf186
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- external-secrets
+- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
diff --git a/components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
similarity index 96%
rename from components/authentication/production/kustomization.yaml
rename to components/authentication/production/base/kustomization.yaml
index c317312e..b08bb10c 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/production/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
similarity index 77%
rename from components/authentication/staging/kustomization.yaml
rename to components/authentication/staging/base/kustomization.yaml
index ef81af8d..eaa1ccc2 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (12 lines)</summary>  

``` 
./commit-113b007b/production/app-of-apps-production.yaml
54c54
<             clusterDir: base
---
>             clusterDir: ""
58,60c58
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: []
./commit-113b007b/production/components: authentication 
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
<h3>3: Staging changes from 113b007b to 396d6a1d on Wed Jan 31 09:37:29 2024 </h3>  
 
<details> 
<summary>Git Diff (260 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 91a53d31..eada0e12 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/authentication
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
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
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..138051b0
--- /dev/null
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -0,0 +1,46 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-core'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-ec'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-gitops'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-has'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-infra'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-integration'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-pipeline-service'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-qe'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-spi'
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..9637ff73
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
new file mode 100644
index 00000000..4648f470
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: mtls-ca-validators
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/mtls-ca-validators
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: mtls-ca-validators
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
new file mode 100644
index 00000000..1f0f1e86
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -0,0 +1,38 @@
+apiVersion: redhatcop.redhat.io/v1alpha1
+kind: GroupSync
+metadata:
+  name: konflux-rover-groups
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  providers:
+    - ldap:
+        ca:
+          key: ca.crt
+          kind: Secret
+          name: mtls-ca-validators
+          namespace: group-sync-operator
+        insecure: false
+        rfc2307:
+          usersQuery:
+            baseDN: 'dc=redhat,dc=com'
+            derefAliases: never
+            scope: sub
+          groupNameAttributes:
+            - cn
+          tolerateMemberNotFoundErrors: true
+          tolerateMemberOutOfScopeErrors: true
+          groupUIDAttribute: dn
+          groupMembershipAttributes:
+            - uniqueMember
+          userNameAttributes:
+            - uid
+          groupsQuery:
+            baseDN: 'ou=adhoc,ou=managedGroups,dc=redhat,dc=com'
+            derefAliases: never
+            filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
+            scope: sub
+          userUIDAttribute: dn
+        url: 'ldaps://ldap.corp.redhat.com'
+      name: ldap-corp
+  schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
new file mode 100644
index 00000000..9a9cf186
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- external-secrets
+- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
diff --git a/components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
similarity index 96%
rename from components/authentication/production/kustomization.yaml
rename to components/authentication/production/base/kustomization.yaml
index c317312e..b08bb10c 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/production/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
similarity index 77%
rename from components/authentication/staging/kustomization.yaml
rename to components/authentication/staging/base/kustomization.yaml
index ef81af8d..eaa1ccc2 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-113b007b/staging/app-of-apps-staging.yaml
54c54
<             clusterDir: base
---
>             clusterDir: ""
58,60c58
<           elements:
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           elements: []
./commit-113b007b/staging/components/authentication/staging: kustomize.out.yaml
./commit-396d6a1d/staging/components/authentication/staging: stone-stage-p01 
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
<h3>3: Development changes from 113b007b to 396d6a1d on Wed Jan 31 09:37:29 2024 </h3>  
 
<details> 
<summary>Git Diff (260 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
index 91a53d31..eada0e12 100644
--- a/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
+++ b/argo-cd-apps/base/all-clusters/infra-deployments/authentication/authentication.yaml
@@ -12,9 +12,11 @@ spec:
               values:
                 sourceRoot: components/authentication
                 environment: staging
-                clusterDir: ""
+                clusterDir: base
           - list:
-              elements: []
+              elements:
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: authentication-{{nameNormalized}}
diff --git a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
index 09828f01..aeeb060f 100644
--- a/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
+++ b/argo-cd-apps/overlays/staging-downstream/delete-applications.yaml
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
diff --git a/components/authentication/base/rh-idp/everyone-can-view-patch.yaml b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
new file mode 100644
index 00000000..138051b0
--- /dev/null
+++ b/components/authentication/base/rh-idp/everyone-can-view-patch.yaml
@@ -0,0 +1,46 @@
+---
+- op: add
+  path: /subjects
+  value:
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-build'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-core'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-ec'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-gitops'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-has'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-infra'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-integration'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-hac'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-o11y'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-pipeline-service'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-qe'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-release-team'
+    - kind: Group
+      apiGroup: rbac.authorization.k8s.io
+      name: 'konflux-spi'
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
new file mode 100644
index 00000000..9637ff73
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - mtls-ca-validators.yaml
diff --git a/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
new file mode 100644
index 00000000..4648f470
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/external-secrets/mtls-ca-validators.yaml
@@ -0,0 +1,21 @@
+apiVersion: external-secrets.io/v1beta1
+kind: ExternalSecret
+metadata:
+  name: mtls-ca-validators
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+    argocd.argoproj.io/sync-wave: "-1"
+spec:
+  dataFrom:
+    - extract:
+        conversionStrategy: Default
+        decodingStrategy: None
+        key: staging/group-sync/mtls-ca-validators
+  refreshInterval: 1h
+  secretStoreRef:
+    kind: ClusterSecretStore
+    name: appsre-stonesoup-vault
+  target:
+    creationPolicy: Owner
+    deletionPolicy: Delete
+    name: mtls-ca-validators
diff --git a/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
new file mode 100644
index 00000000..1f0f1e86
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/konflux-rover-groups.yaml
@@ -0,0 +1,38 @@
+apiVersion: redhatcop.redhat.io/v1alpha1
+kind: GroupSync
+metadata:
+  name: konflux-rover-groups
+  annotations:
+    argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
+spec:
+  providers:
+    - ldap:
+        ca:
+          key: ca.crt
+          kind: Secret
+          name: mtls-ca-validators
+          namespace: group-sync-operator
+        insecure: false
+        rfc2307:
+          usersQuery:
+            baseDN: 'dc=redhat,dc=com'
+            derefAliases: never
+            scope: sub
+          groupNameAttributes:
+            - cn
+          tolerateMemberNotFoundErrors: true
+          tolerateMemberOutOfScopeErrors: true
+          groupUIDAttribute: dn
+          groupMembershipAttributes:
+            - uniqueMember
+          userNameAttributes:
+            - uid
+          groupsQuery:
+            baseDN: 'ou=adhoc,ou=managedGroups,dc=redhat,dc=com'
+            derefAliases: never
+            filter: (&(objectClass=rhatRoverGroup)(cn=konflux-*))
+            scope: sub
+          userUIDAttribute: dn
+        url: 'ldaps://ldap.corp.redhat.com'
+      name: ldap-corp
+  schedule: '*/15 * * * *'
diff --git a/components/authentication/base/rh-idp/group-sync/kustomization.yaml b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
new file mode 100644
index 00000000..9a9cf186
--- /dev/null
+++ b/components/authentication/base/rh-idp/group-sync/kustomization.yaml
@@ -0,0 +1,6 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+namespace: group-sync-operator
+resources:
+- external-secrets
+- konflux-rover-groups.yaml
diff --git a/components/authentication/base/rh-idp/kustomization.yaml b/components/authentication/base/rh-idp/kustomization.yaml
new file mode 100644
index 00000000..17f11d84
--- /dev/null
+++ b/components/authentication/base/rh-idp/kustomization.yaml
@@ -0,0 +1,24 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+- ../all
+- group-sync
+patches:
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-appstudio
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
+  - path: everyone-can-view-patch.yaml
+    target:
+      name: everyone-view-cluster-version
+      kind: ClusterRoleBinding
+      group: rbac.authorization.k8s.io
+      version: v1
diff --git a/components/authentication/production/github-redhat-appstudio-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-secret-patch.yaml
diff --git a/components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml b/components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
similarity index 100%
rename from components/authentication/production/github-redhat-appstudio-sre-secret-patch.yaml
rename to components/authentication/production/base/github-redhat-appstudio-sre-secret-patch.yaml
diff --git a/components/authentication/production/kustomization.yaml b/components/authentication/production/base/kustomization.yaml
similarity index 96%
rename from components/authentication/production/kustomization.yaml
rename to components/authentication/production/base/kustomization.yaml
index c317312e..b08bb10c 100644
--- a/components/authentication/production/kustomization.yaml
+++ b/components/authentication/production/base/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
 patches:
   - path: github-redhat-appstudio-secret-patch.yaml
     target:
diff --git a/components/authentication/production/rhtap-infra-secrets-patch.yaml b/components/authentication/production/base/rhtap-infra-secrets-patch.yaml
similarity index 100%
rename from components/authentication/production/rhtap-infra-secrets-patch.yaml
rename to components/authentication/production/base/rhtap-infra-secrets-patch.yaml
diff --git a/components/authentication/staging/kustomization.yaml b/components/authentication/staging/base/kustomization.yaml
similarity index 77%
rename from components/authentication/staging/kustomization.yaml
rename to components/authentication/staging/base/kustomization.yaml
index ef81af8d..eaa1ccc2 100644
--- a/components/authentication/staging/kustomization.yaml
+++ b/components/authentication/staging/base/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - ../base/github
+  - ../../base/github
diff --git a/components/authentication/staging/stone-stage-p01/kustomization.yaml b/components/authentication/staging/stone-stage-p01/kustomization.yaml
new file mode 100644
index 00000000..940d5937
--- /dev/null
+++ b/components/authentication/staging/stone-stage-p01/kustomization.yaml
@@ -0,0 +1,4 @@
+apiVersion: kustomize.config.k8s.io/v1beta1
+kind: Kustomization
+resources:
+  - ../../base/rh-idp 
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
<h3>4: Production changes from d00cd0de to 113b007b on Wed Jan 31 08:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index e87de695..ce8a58e9 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 94928b60..bbc38b39 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target: 
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
<h3>4: Staging changes from d00cd0de to 113b007b on Wed Jan 31 08:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index e87de695..ce8a58e9 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 94928b60..bbc38b39 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target: 
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
<h3>4: Development changes from d00cd0de to 113b007b on Wed Jan 31 08:37:32 2024 </h3>  
 
<details> 
<summary>Git Diff (45 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/development/kustomization.yaml b/components/remote-secret-controller/overlays/development/kustomization.yaml
index e87de695..ce8a58e9 100644
--- a/components/remote-secret-controller/overlays/development/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/development/kustomization.yaml
@@ -2,14 +2,14 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_vault?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 namespace: remotesecret
 
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target:
diff --git a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
index 94928b60..bbc38b39 100644
--- a/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
+++ b/components/remote-secret-controller/overlays/staging/base/kustomization.yaml
@@ -2,8 +2,8 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../../../base
-  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
-  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=6f2dacc223a951b7eebb0b5994cc58a0683280ae
+  - https://github.com/redhat-appstudio/remote-secret/config/overlays/openshift_aws?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
+  - https://github.com/redhat-appstudio/remote-secret/config/monitoring/prometheus?ref=52b24fb5b585b246c2490415e2c0f3a6d29e5fed
   - aws-credentials-external-secret.yaml
 
 namespace: remotesecret
@@ -11,7 +11,7 @@ namespace: remotesecret
 images:
   - name:  quay.io/redhat-appstudio/remote-secret-controller
     newName: quay.io/redhat-appstudio/remote-secret-controller
-    newTag: 6f2dacc223a951b7eebb0b5994cc58a0683280ae
+    newTag: 52b24fb5b585b246c2490415e2c0f3a6d29e5fed
 
 patches:
   - target: 
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
