# kustomize changes tracked by commits 
### This file generated at Thu Dec 21 12:07:06 UTC 2023
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 5589c8c0 to cff39dc0 on Thu Dec 21 10:50:22 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml 
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

./commit-cff39dc0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-cff39dc0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Staging changes from 5589c8c0 to cff39dc0 on Thu Dec 21 10:50:22 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml 
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

./commit-cff39dc0/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-cff39dc0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-cff39dc0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>1: Development changes from 5589c8c0 to cff39dc0 on Thu Dec 21 10:50:22 2023 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/aws-credentials-path-patch.yaml
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/config-patch.json
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml b/components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml
similarity index 100%
rename from components/remote-secret-controller/overlays/staging/stone-stg-p01/kustomization.yaml
rename to components/remote-secret-controller/overlays/staging/stone-stage-p01/kustomization.yaml 
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

./commit-cff39dc0/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Production changes from 2901c021 to 5589c8c0 on Thu Dec 21 10:40:55 2023 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index efc98c20..f14d9107 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -23,8 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 27952a87..191ec15e 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -23,8 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: spi-{{nameNormalized}} 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-2901c021/production/app-of-apps-production.yaml
1253,1254c1253,1254
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01
1494,1495c1494,1495
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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

./commit-5589c8c0/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-5589c8c0/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from 2901c021 to 5589c8c0 on Thu Dec 21 10:40:55 2023 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index efc98c20..f14d9107 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -23,8 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 27952a87..191ec15e 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -23,8 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: spi-{{nameNormalized}} 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-2901c021/staging/app-of-apps-staging.yaml
1207,1208c1207,1208
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01
1411,1412c1411,1412
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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

./commit-5589c8c0/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-5589c8c0/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-5589c8c0/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Development changes from 2901c021 to 5589c8c0 on Thu Dec 21 10:40:55 2023 </h3>  
 
<details> 
<summary>Git Diff (30 lines)</summary>  

``` 
diff --git a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
index efc98c20..f14d9107 100644
--- a/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/remote-secret-controller/remote-secret-controller.yaml
@@ -23,8 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: remote-secret-controller-{{nameNormalized}}
diff --git a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
index 27952a87..191ec15e 100644
--- a/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
+++ b/argo-cd-apps/base/member/infra-deployments/spi/spi.yaml
@@ -23,8 +23,8 @@ spec:
                   values.clusterDir: stone-prd-m01
                 - nameNormalized: stone-prd-rh01
                   values.clusterDir: stone-prd-rh01
-                - nameNormalized: stone-stg-p01
-                  values.clusterDir: stone-stg-p01
+                - nameNormalized: stone-stage-p01
+                  values.clusterDir: stone-stage-p01
   template:
     metadata:
       name: spi-{{nameNormalized}} 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (13 lines)</summary>  

``` 
./commit-2901c021/development/app-of-apps-development.yaml
960,961c960,961
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01
1014,1015c1014,1015
<           - nameNormalized: stone-stage-p01
<             values.clusterDir: stone-stage-p01
---
>           - nameNormalized: stone-stg-p01
>             values.clusterDir: stone-stg-p01 
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

./commit-5589c8c0/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Production changes from f6347063 to 2901c021 on Thu Dec 21 10:24:07 2023 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index a6635194..6853c6de 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ee6f8b29..df0b98e4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index a5881d81..6eba05bb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 546aed46..4dcfb140 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
index 8326c312..6f46a645 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
index f1e44f76..f532928c 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-p01"
+    "value": "stone-stage/rs-p01"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
index c0ddd448..e4872e4e 100644
--- a/components/spi/overlays/staging/stone-stage-p01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "spi-stage/p01"
+    "value": "stone-stage/spi-p01"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 8326c312..6f46a645 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager 
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

./commit-2901c021/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2901c021/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Staging changes from f6347063 to 2901c021 on Thu Dec 21 10:24:07 2023 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index a6635194..6853c6de 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ee6f8b29..df0b98e4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index a5881d81..6eba05bb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 546aed46..4dcfb140 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
index 8326c312..6f46a645 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
index f1e44f76..f532928c 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-p01"
+    "value": "stone-stage/rs-p01"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
index c0ddd448..e4872e4e 100644
--- a/components/spi/overlays/staging/stone-stage-p01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "spi-stage/p01"
+    "value": "stone-stage/spi-p01"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 8326c312..6f46a645 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (14 lines)</summary>  

``` 
./commit-f6347063/staging/components/gitops/staging/stone-stage-p01/kustomize.out.yaml
3293c3293
<       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-gitopsvc-rds
./commit-f6347063/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1713c1713
<       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
1734c1734
<       key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
---
>       key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3 
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

./commit-2901c021/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2901c021/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-2901c021/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>3: Development changes from f6347063 to 2901c021 on Thu Dec 21 10:24:07 2023 </h3>  
 
<details> 
<summary>Git Diff (104 lines)</summary>  

``` 
diff --git a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
index a6635194..6853c6de 100644
--- a/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
+++ b/components/gitops/staging/stone-stage-p01/gitops-service-postgres-rds-config-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-gitopsvc-rds
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-gitopsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index ee6f8b29..df0b98e4 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1710,7 +1710,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
+      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
@@ -1731,7 +1731,7 @@ metadata:
 spec:
   dataFrom:
   - extract:
-      key: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
+      key: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
   refreshInterval: 1h
   secretStoreRef:
     kind: ClusterSecretStore
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
index a5881d81..6eba05bb 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-database-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-staging-plnsvc-rds
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-rds
diff --git a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
index 546aed46..4dcfb140 100644
--- a/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/resources/tekton-results-s3-secret-path.yaml
@@ -1,4 +1,4 @@
 ---
 - op: add
   path: /spec/dataFrom/0/extract/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/redhat-stg-plnsvc-s3
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/stone-stage-p01-plnsvc-s3
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
index 8326c312..6f46a645 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
diff --git a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
index f1e44f76..f532928c 100644
--- a/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
+++ b/components/remote-secret-controller/overlays/staging/stone-stg-p01/config-patch.json
@@ -2,6 +2,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "spi-stage/rs-p01"
+    "value": "stone-stage/rs-p01"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stage-p01/config-patch.json b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
index c0ddd448..e4872e4e 100644
--- a/components/spi/overlays/staging/stone-stage-p01/config-patch.json
+++ b/components/spi/overlays/staging/stone-stage-p01/config-patch.json
@@ -7,6 +7,6 @@
   {
     "op": "add",
     "path": "/data/INSTANCEID",
-    "value": "spi-stage/p01"
+    "value": "stone-stage/spi-p01"
   }
 ]
diff --git a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
index 8326c312..6f46a645 100644
--- a/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
+++ b/components/spi/overlays/staging/stone-stage-p01/spi-aws-credentials-path-patch.yaml
@@ -1,7 +1,7 @@
 ---
 - op: replace
   path: /spec/data/0/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager
 - op: replace
   path: /spec/data/1/remoteRef/key
-  value: integrations-output/terraform-resources/app-sre-stage-01/stone-stage-p01/spi-secrets-manager
+  value: integrations-output/terraform-resources/appsres05ue1/stone-stage-p01/spi-secrets-manager 
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

./commit-2901c021/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Production changes from d7a536e8 to f6347063 on Thu Dec 21 09:58:02 2023 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index ba26bbf1..d6ee8bf0 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -1,13 +1,16 @@
 # See the OWNERS docs: https://go.k8s.io/owners
+# Should be kept in sync with components/monitoring/grafana/base/dashboards/build-service/OWNERS
 
 approvers:
 - mmorhun
 - tkdchen
 - rcerven
 - mkosiarc
+- stuartwdouglas
 
 reviewers:
 - mmorhun
 - tkdchen
 - rcerven
 - mkosiarc
+- stuartwdouglas
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index d5552f0f..d6ee8bf0 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -1,7 +1,16 @@
 # See the OWNERS docs: https://go.k8s.io/owners
+# Should be kept in sync with components/monitoring/grafana/base/dashboards/build-service/OWNERS
 
 approvers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- stuartwdouglas
 
 reviewers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- stuartwdouglas 
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

./commit-f6347063/production/components/pipeline-service/production/stone-prd-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f6347063/production/components/pipeline-service/production/stone-prd-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Staging changes from d7a536e8 to f6347063 on Thu Dec 21 09:58:02 2023 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index ba26bbf1..d6ee8bf0 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -1,13 +1,16 @@
 # See the OWNERS docs: https://go.k8s.io/owners
+# Should be kept in sync with components/monitoring/grafana/base/dashboards/build-service/OWNERS
 
 approvers:
 - mmorhun
 - tkdchen
 - rcerven
 - mkosiarc
+- stuartwdouglas
 
 reviewers:
 - mmorhun
 - tkdchen
 - rcerven
 - mkosiarc
+- stuartwdouglas
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index d5552f0f..d6ee8bf0 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -1,7 +1,16 @@
 # See the OWNERS docs: https://go.k8s.io/owners
+# Should be kept in sync with components/monitoring/grafana/base/dashboards/build-service/OWNERS
 
 approvers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- stuartwdouglas
 
 reviewers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- stuartwdouglas 
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

./commit-f6347063/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f6347063/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

./commit-f6347063/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>4: Development changes from d7a536e8 to f6347063 on Thu Dec 21 09:58:02 2023 </h3>  
 
<details> 
<summary>Git Diff (42 lines)</summary>  

``` 
diff --git a/components/build-service/OWNERS b/components/build-service/OWNERS
index ba26bbf1..d6ee8bf0 100644
--- a/components/build-service/OWNERS
+++ b/components/build-service/OWNERS
@@ -1,13 +1,16 @@
 # See the OWNERS docs: https://go.k8s.io/owners
+# Should be kept in sync with components/monitoring/grafana/base/dashboards/build-service/OWNERS
 
 approvers:
 - mmorhun
 - tkdchen
 - rcerven
 - mkosiarc
+- stuartwdouglas
 
 reviewers:
 - mmorhun
 - tkdchen
 - rcerven
 - mkosiarc
+- stuartwdouglas
diff --git a/components/monitoring/grafana/base/dashboards/build-service/OWNERS b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
index d5552f0f..d6ee8bf0 100644
--- a/components/monitoring/grafana/base/dashboards/build-service/OWNERS
+++ b/components/monitoring/grafana/base/dashboards/build-service/OWNERS
@@ -1,7 +1,16 @@
 # See the OWNERS docs: https://go.k8s.io/owners
+# Should be kept in sync with components/monitoring/grafana/base/dashboards/build-service/OWNERS
 
 approvers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- stuartwdouglas
 
 reviewers:
 - mmorhun
+- tkdchen
+- rcerven
+- mkosiarc
+- stuartwdouglas 
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

./commit-f6347063/development/components/pipeline-service/development/kustomize.out.yaml: (object: openshift-pipelines/tekton-chains /v1, Kind=Service) no pods found matching service labels (map[app.kubernetes.io/component:controller app.kubernetes.io/instance:default app.kubernetes.io/part-of:tekton-chains]) (check: dangling-service, remediation: Confirm that your service's selector correctly matches the labels on one of your deployments.)

KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

No lint errors found!
KubeLinter v0.6.1-0-gc6177366a3

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
