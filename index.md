# kustomize changes tracked by commits 
### This file generated at Fri Apr  5 08:03:44 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from 062acc1b to 22c95d52 on Fri Apr 5 06:54:14 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 4818ceaa..bc06ad9a 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-062acc1b/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
785c785
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
797c797
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
809c809
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
821c821
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Staging changes from 062acc1b to 22c95d52 on Fri Apr 5 06:54:14 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 4818ceaa..bc06ad9a 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-062acc1b/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
785c785
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
797c797
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
809c809
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
821c821
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>1: Development changes from 062acc1b to 22c95d52 on Fri Apr 5 06:54:14 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 4818ceaa..bc06ad9a 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5d40a19d5c04e904123311598ad3f36e96a402be
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-062acc1b/development/components/build-service/development/kustomize.out.yaml
771c771
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
783c783
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
795c795
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f
807c807
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:5d40a19d5c04e904123311598ad3f36e96a402be
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:0edc312d0be1aadaf4b796ac473bc88b5dbc654f 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Production changes from e1e31818 to 062acc1b on Fri Apr 5 00:05:46 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 374ccc31..24e52afa 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e605798a3007da71f9d812273b97249a77b5635a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5bdb39a8..9de8faa7 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e605798a3007da71f9d812273b97249a77b5635a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 0777fb01..a3321b83 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1db38540..ed7f59d0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f78fa7f7..6e2cc038 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 95448a4d..76af17ed 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
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
KubeLinter v0.6.1-0-gc6177366a3

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
<h3>2: Staging changes from e1e31818 to 062acc1b on Fri Apr 5 00:05:46 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 374ccc31..24e52afa 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e605798a3007da71f9d812273b97249a77b5635a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5bdb39a8..9de8faa7 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e605798a3007da71f9d812273b97249a77b5635a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 0777fb01..a3321b83 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1db38540..ed7f59d0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f78fa7f7..6e2cc038 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 95448a4d..76af17ed 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (15 lines)</summary>  

``` 
./commit-e1e31818/staging/components/pipeline-service/staging/stone-stage-p01/kustomize.out.yaml
1208c1208
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
./commit-e1e31818/staging/components/pipeline-service/staging/stone-stg-m01/kustomize.out.yaml
1208c1208
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
./commit-e1e31818/staging/components/pipeline-service/staging/stone-stg-rh01/kustomize.out.yaml
1208c1208
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>2: Development changes from e1e31818 to 062acc1b on Fri Apr 5 00:05:46 2024 </h3>  
 
<details> 
<summary>Git Diff (77 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
index 374ccc31..24e52afa 100644
--- a/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/pipeline-service/kustomization.yaml
@@ -2,4 +2,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service/operator/gitops/argocd/grafana/?ref=e605798a3007da71f9d812273b97249a77b5635a
diff --git a/components/pipeline-service/development/kustomization.yaml b/components/pipeline-service/development/kustomization.yaml
index 5bdb39a8..9de8faa7 100644
--- a/components/pipeline-service/development/kustomization.yaml
+++ b/components/pipeline-service/development/kustomization.yaml
@@ -8,8 +8,8 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
-  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
+  - https://github.com/openshift-pipelines/pipeline-service.git/developer/openshift/gitops/argocd/pipeline-service-storage?ref=e605798a3007da71f9d812273b97249a77b5635a
   - ../base/rbac
 
 patches:
diff --git a/components/pipeline-service/staging/base/kustomization.yaml b/components/pipeline-service/staging/base/kustomization.yaml
index 0777fb01..a3321b83 100644
--- a/components/pipeline-service/staging/base/kustomization.yaml
+++ b/components/pipeline-service/staging/base/kustomization.yaml
@@ -8,7 +8,7 @@ commonAnnotations:
   argocd.argoproj.io/sync-options: SkipDryRunOnMissingResource=true
 
 resources:
-  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=542db3fcc168c426d39dbed231a4230b101f8a2a
+  - https://github.com/openshift-pipelines/pipeline-service.git/operator/gitops/argocd/pipeline-service?ref=e605798a3007da71f9d812273b97249a77b5635a
   - pipelines-as-code-secret.yaml
   - ../../base/external-secrets
   - ../../base/testing
diff --git a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
index 1db38540..ed7f59d0 100644
--- a/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stage-p01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
index f78fa7f7..6e2cc038 100644
--- a/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-m01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117
diff --git a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
index 95448a4d..76af17ed 100644
--- a/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
+++ b/components/pipeline-service/staging/stone-stg-rh01/deploy.yaml
@@ -1205,7 +1205,7 @@ spec:
       containers:
       - args:
         - -zap-log-level=6
-        image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23
+        image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
         name: pipeline-metrics-exporter
         ports:
         - containerPort: 9117 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (5 lines)</summary>  

``` 
./commit-e1e31818/development/components/pipeline-service/development/kustomize.out.yaml
1209c1209
<         image: quay.io/redhat-appstudio/pipeline-service-exporter:2a5d2420d60643d685d860e3aa36824de715b9b8
---
>         image: quay.io/redhat-appstudio/pipeline-service-exporter:c42b1b9defaa61937765610ab188b9e0552cae23 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Production changes from cc3f489b to e1e31818 on Thu Apr 4 22:48:48 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index b6357b17..82a5977c 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=84a78472781814a2827af663659f2672a07f0f8f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index a5f50390..20c84154 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
+    newTag: 84a78472781814a2827af663659f2672a07f0f8f
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 363f7f75..ff794f8d 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
+    newTag: 84a78472781814a2827af663659f2672a07f0f8f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (32 lines)</summary>  

``` 
./commit-cc3f489b/production/components/release/production/kustomize.out.yaml
431a432
>                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
612a614,637
>               deployment:
>                 description: Deployment contains information about the deployment
>                 properties:
>                   completionTime:
>                     description: CompletionTime is the time when the Release deployment
>                       was completed
>                     format: date-time
>                     type: string
>                   environment:
>                     description: Environment is the environment where the Release
>                       will be deployed to
>                     type: string
>                   snapshotEnvironmentBinding:
>                     description: SnapshotEnvironmentBinding contains the namespaced
>                       name of the SnapshotEnvironmentBinding created as part of this
>                       release
>                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
>                     type: string
>                   startTime:
>                     description: StartTime is the time when the Release deployment
>                       started
>                     format: date-time
>                     type: string
>                 type: object
1765c1790
<         image: quay.io/redhat-appstudio/release-service:84a78472781814a2827af663659f2672a07f0f8f
---
>         image: quay.io/redhat-appstudio/release-service:17f77107fc32d17de3dc5820d2d5156b2ca896ba 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from cc3f489b to e1e31818 on Thu Apr 4 22:48:48 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index b6357b17..82a5977c 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=84a78472781814a2827af663659f2672a07f0f8f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index a5f50390..20c84154 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
+    newTag: 84a78472781814a2827af663659f2672a07f0f8f
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 363f7f75..ff794f8d 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
+    newTag: 84a78472781814a2827af663659f2672a07f0f8f
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Development changes from cc3f489b to e1e31818 on Thu Apr 4 22:48:48 2024 </h3>  
 
<details> 
<summary>Git Diff (49 lines)</summary>  

``` 
diff --git a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
index b6357b17..82a5977c 100644
--- a/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
+++ b/components/monitoring/grafana/base/dashboards/release/kustomization.yaml
@@ -1,4 +1,4 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
+- https://github.com/redhat-appstudio/release-service/config/grafana/?ref=84a78472781814a2827af663659f2672a07f0f8f
diff --git a/components/release/development/kustomization.yaml b/components/release/development/kustomization.yaml
index a5f50390..20c84154 100644
--- a/components/release/development/kustomization.yaml
+++ b/components/release/development/kustomization.yaml
@@ -2,11 +2,11 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=5466ccb1bf2680804599c7f2d7635f04492f0fd0
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
 
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 5466ccb1bf2680804599c7f2d7635f04492f0fd0
+    newTag: 84a78472781814a2827af663659f2672a07f0f8f
 
 namespace: release-service
diff --git a/components/release/production/kustomization.yaml b/components/release/production/kustomization.yaml
index 363f7f75..ff794f8d 100644
--- a/components/release/production/kustomization.yaml
+++ b/components/release/production/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=17f77107fc32d17de3dc5820d2d5156b2ca896ba
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=84a78472781814a2827af663659f2672a07f0f8f
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,6 +10,6 @@ components:
 images:
   - name: quay.io/redhat-appstudio/release-service
     newName: quay.io/redhat-appstudio/release-service
-    newTag: 17f77107fc32d17de3dc5820d2d5156b2ca896ba
+    newTag: 84a78472781814a2827af663659f2672a07f0f8f
 
 namespace: release-service 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (7 lines)</summary>  

``` 
./commit-cc3f489b/development/components/release/development/kustomize.out.yaml
431a432
>                     pattern: ^[a-z0-9]([-a-z0-9]*[a-z0-9])?\/[a-z0-9]([-a-z0-9]*[a-z0-9])?$
1765c1766
<         image: quay.io/redhat-appstudio/release-service:84a78472781814a2827af663659f2672a07f0f8f
---
>         image: quay.io/redhat-appstudio/release-service:5466ccb1bf2680804599c7f2d7635f04492f0fd0 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Production changes from 6a32173f to cc3f489b on Thu Apr 4 20:26:17 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index d150c90a..473f5ad4 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
+  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 5c039c43..ff0d8e17 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
+  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Staging changes from 6a32173f to cc3f489b on Thu Apr 4 20:26:17 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index d150c90a..473f5ad4 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
+  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 5c039c43..ff0d8e17 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
+  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
 
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
```
 
</details> 
<br> 


</div>

<div>
<h3>4: Development changes from 6a32173f to cc3f489b on Thu Apr 4 20:26:17 2024 </h3>  
 
<details> 
<summary>Git Diff (38 lines)</summary>  

``` 
diff --git a/components/image-controller/development/kustomization.yaml b/components/image-controller/development/kustomization.yaml
index d150c90a..473f5ad4 100644
--- a/components/image-controller/development/kustomization.yaml
+++ b/components/image-controller/development/kustomization.yaml
@@ -2,12 +2,12 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
 - ../base
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
+  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
 
 namespace: image-controller
 
diff --git a/components/image-controller/staging/base/kustomization.yaml b/components/image-controller/staging/base/kustomization.yaml
index 5c039c43..ff0d8e17 100644
--- a/components/image-controller/staging/base/kustomization.yaml
+++ b/components/image-controller/staging/base/kustomization.yaml
@@ -3,12 +3,12 @@ kind: Kustomization
 resources:
 - ../../base
 - ../../base/external-secrets
-- https://github.com/redhat-appstudio/image-controller/config/default?ref=143d709ff49d94e2b7f489da2fdb9708d38f466c
+- https://github.com/redhat-appstudio/image-controller/config/default?ref=e5a29db5772c85b84d3246597e5b39f229d2925a
 
 images:
 - name: quay.io/redhat-appstudio/image-controller
   newName: quay.io/redhat-appstudio/image-controller
-  newTag: 143d709ff49d94e2b7f489da2fdb9708d38f466c
+  newTag: e5a29db5772c85b84d3246597e5b39f229d2925a
 
 namespace: image-controller
  
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (56 lines)</summary>  

``` 
./commit-6a32173f/development/components/image-controller/development/kustomize.out.yaml
471d470
<     from urllib.error import HTTPError
493,504c492,495
<         try:
<             with urlopen(request) as resp:
<                 if resp.status != 200:
<                     raise RuntimeError(resp.reason)
<                 return json.loads(resp.read())
< 
<         except HTTPError as ex:
<             # ignore if not found
<             if ex.status != 404:
<                 raise(ex)
<             else:
<                 return {}
---
>         with urlopen(request) as resp:
>             if resp.status != 200:
>                 raise RuntimeError(resp.reason)
>             return json.loads(resp.read())
513,521c504,506
<         try:
<             with urlopen(request) as resp:
<                 if resp.status != 200 and resp.status != 204:
<                     raise RuntimeError(resp.reason)
< 
<         except HTTPError as ex:
<             # ignore if not found
<             if ex.status != 404:
<                 raise(ex)
---
>         with urlopen(request) as resp:
>             if resp.status != 200 and resp.status != 204:
>                 raise RuntimeError(resp.reason)
526c511
<         tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src|\.sig)$")
---
>         tag_regex = re.compile(r"^sha256-([0-9a-f]+)(\.sbom|\.att|\.src)$")
546,549d530
< 
<             if not repo_info:
<                 continue
< 
606c587
<   name: image-controller-image-pruner-configmap-dgh4mm9256
---
>   name: image-controller-image-pruner-configmap-h7dftck666
688c669
<         image: quay.io/redhat-appstudio/image-controller:e5a29db5772c85b84d3246597e5b39f229d2925a
---
>         image: quay.io/redhat-appstudio/image-controller:143d709ff49d94e2b7f489da2fdb9708d38f466c
802c783
<               name: image-controller-image-pruner-configmap-dgh4mm9256
---
>               name: image-controller-image-pruner-configmap-h7dftck666 
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
```
 
</details> 
<br> 


</div>
