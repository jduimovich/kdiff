# kustomize changes tracked by commits 
### This file generated at Wed Jan 31 08:03:27 UTC 2024
## Repo - https://github.com/redhat-appstudio/infra-deployments.git 
## Overlays: production staging development
## Showing last 4 commits


<div>
<h3>1: Production changes from ea865661 to d00cd0de on Wed Jan 31 06:31:05 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 8a084819..66d8c233 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ea865661/production/components/build-service/production/stone-prod-p01/kustomize.out.yaml
837c837
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
849c849
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
861c861
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
873c873
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6 
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
<h3>1: Staging changes from ea865661 to d00cd0de on Wed Jan 31 06:31:05 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 8a084819..66d8c233 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ea865661/staging/components/build-service/staging/stone-stage-p01/kustomize.out.yaml
845c845
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
857c857
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
869c869
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
881c881
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6 
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
<h3>1: Development changes from ea865661 to d00cd0de on Wed Jan 31 06:31:05 2024 </h3>  
 
<details> 
<summary>Git Diff (40 lines)</summary>  

``` 
diff --git a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
index 8a084819..66d8c233 100644
--- a/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
+++ b/components/build-service/base/build-pipeline-selectors/build-pipeline-selector.yaml
@@ -11,7 +11,7 @@ spec:
         - name: name
           value: fbc-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -23,7 +23,7 @@ spec:
         - name: name
           value: docker-build
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -35,7 +35,7 @@ spec:
         - name: name
           value: java-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when:
@@ -47,7 +47,7 @@ spec:
         - name: name
           value: nodejs-builder
         - name: bundle
-          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6
+          value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
         - name: kind
           value: pipeline
       when: 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (17 lines)</summary>  

``` 
./commit-ea865661/development/components/build-service/development/kustomize.out.yaml
852c852
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-fbc-builder:b05057014d952811f0ba350c29933c2347678bf6
864c864
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-docker-build:b05057014d952811f0ba350c29933c2347678bf6
876c876
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-java-builder:b05057014d952811f0ba350c29933c2347678bf6
888c888
<         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:a6d791ac9096262df92ab4bbab1f9263b6de7bb5
---
>         value: quay.io/redhat-appstudio-tekton-catalog/pipeline-nodejs-builder:b05057014d952811f0ba350c29933c2347678bf6 
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
<h3>2: Production changes from 80112baf to ea865661 on Tue Jan 30 21:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d1d14177..1f1991ef 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -125,7 +125,6 @@ spec:
         exclude: []
         include:
           - kind
-          - step_image_registries
       data:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 462c615e..f90b6784 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-80112baf/production/components/enterprise-contract/kustomize.out.yaml
701a702
>       - step_image_registries 
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
<h3>2: Staging changes from 80112baf to ea865661 on Tue Jan 30 21:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d1d14177..1f1991ef 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -125,7 +125,6 @@ spec:
         exclude: []
         include:
           - kind
-          - step_image_registries
       data:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 462c615e..f90b6784 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-80112baf/staging/components/enterprise-contract/kustomize.out.yaml
701a702
>       - step_image_registries 
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
<h3>2: Development changes from 80112baf to ea865661 on Tue Jan 30 21:07:15 2024 </h3>  
 
<details> 
<summary>Git Diff (25 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/ecp.yaml b/components/enterprise-contract/ecp.yaml
index d1d14177..1f1991ef 100644
--- a/components/enterprise-contract/ecp.yaml
+++ b/components/enterprise-contract/ecp.yaml
@@ -125,7 +125,6 @@ spec:
         exclude: []
         include:
           - kind
-          - step_image_registries
       data:
         - github.com/release-engineering/rhtap-ec-policy//data
       name: Default
diff --git a/components/enterprise-contract/kustomization.yaml b/components/enterprise-contract/kustomization.yaml
index 462c615e..f90b6784 100644
--- a/components/enterprise-contract/kustomization.yaml
+++ b/components/enterprise-contract/kustomization.yaml
@@ -1,7 +1,7 @@
 apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
-  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=a5b3da02d9172c65d5e2ba8f4f74db5277e7461b
+  - https://github.com/enterprise-contract/enterprise-contract-controller/config/crd?ref=9d09716685d1a6e6a536115bf845e613f861c23a
   - ecp.yaml
   - role.yaml
   - rolebinding.yaml 
```
 
</details> 

<details> 
<summary>Kustomize Generated Diff (3 lines)</summary>  

``` 
./commit-80112baf/development/components/enterprise-contract/kustomize.out.yaml
701a702
>       - step_image_registries 
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
<h3>3: Production changes from f2f08276 to 80112baf on Tue Jan 30 19:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8eb30c4f..f9feffb3 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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
```
 
</details> 
<br> 


</div>

<div>
<h3>3: Staging changes from f2f08276 to 80112baf on Tue Jan 30 19:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8eb30c4f..f9feffb3 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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
./commit-f2f08276/staging/components/release/staging/kustomize.out.yaml
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
<h3>3: Development changes from f2f08276 to 80112baf on Tue Jan 30 19:50:15 2024 </h3>  
 
<details> 
<summary>Git Diff (22 lines)</summary>  

``` 
diff --git a/components/release/staging/kustomization.yaml b/components/release/staging/kustomization.yaml
index 8eb30c4f..f9feffb3 100644
--- a/components/release/staging/kustomization.yaml
+++ b/components/release/staging/kustomization.yaml
@@ -2,7 +2,7 @@ apiVersion: kustomize.config.k8s.io/v1beta1
 kind: Kustomization
 resources:
   - ../base
-  - https://github.com/redhat-appstudio/release-service/config/default?ref=c2b8ead21ffb8ffbeb0cff20cc4e5c0012a45060
+  - https://github.com/redhat-appstudio/release-service/config/default?ref=0eb0a4595339e72684c50bcb049c5b0001b7fea5
 
 components:
   - ../k-components/manager-resources-patch
@@ -10,7 +10,7 @@ components:
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
<h3>4: Production changes from 675172c4 to f2f08276 on Tue Jan 30 10:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/OWNERS b/components/enterprise-contract/OWNERS
index 4082c04f..b4c10d38 100644
--- a/components/enterprise-contract/OWNERS
+++ b/components/enterprise-contract/OWNERS
@@ -4,6 +4,7 @@ approvers:
 - simonbaird
 - zregvart
 - lcarva
+- ec-automation[bot]
 
 
 reviewers: 
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
<h3>4: Staging changes from 675172c4 to f2f08276 on Tue Jan 30 10:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/OWNERS b/components/enterprise-contract/OWNERS
index 4082c04f..b4c10d38 100644
--- a/components/enterprise-contract/OWNERS
+++ b/components/enterprise-contract/OWNERS
@@ -4,6 +4,7 @@ approvers:
 - simonbaird
 - zregvart
 - lcarva
+- ec-automation[bot]
 
 
 reviewers: 
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
<h3>4: Development changes from 675172c4 to f2f08276 on Tue Jan 30 10:18:14 2024 </h3>  
 
<details> 
<summary>Git Diff (12 lines)</summary>  

``` 
diff --git a/components/enterprise-contract/OWNERS b/components/enterprise-contract/OWNERS
index 4082c04f..b4c10d38 100644
--- a/components/enterprise-contract/OWNERS
+++ b/components/enterprise-contract/OWNERS
@@ -4,6 +4,7 @@ approvers:
 - simonbaird
 - zregvart
 - lcarva
+- ec-automation[bot]
 
 
 reviewers: 
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
